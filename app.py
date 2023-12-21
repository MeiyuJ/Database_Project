from flask import Flask, render_template, request, redirect, url_for, flash
from flask_wtf import FlaskForm
from wtforms import StringField, SubmitField, IntegerField, DateField, SelectField
from wtforms.validators import DataRequired, Email, EqualTo
from flask_login import LoginManager, UserMixin, login_user, login_required, logout_user, current_user
import pymysql

app = Flask(__name__)
app.config['SECRET_KEY'] = 'MeiyuJ'
# Flask-Login initialization
login_manager = LoginManager(app)

# MySQL database initialization
# DB_CONFIG = {
#     "host": "localhost",
#     "user": "admin",
#     "password": "admin",
#     "database": "cs6083"
# }
DB_CONFIG = {
    "host": "localhost",
    "user": "root",
    "password": "abc123",
    "database": "project2"
}

def get_db_conn():
    return pymysql.connect(**DB_CONFIG)

# 测试是否连接成功
with app.app_context():
    with get_db_conn() as conn:
        cursor = conn.cursor()
        cursor.execute("select 1")
        # cursor.execute("select cID,name from Customers where cID=%s", (1))
        print(cursor.fetchone())  # (1,)


# User class for Flask-Login
class User(UserMixin):
    def __init__(self, user_id, email):
        self.id = user_id
        self.email = email

# User loader function for Flask-Login
@login_manager.user_loader
def load_user(user_id):
    conn = get_db_conn()
    cursor = conn.cursor()
    cursor.execute('SELECT * FROM Customers Where CID=%s',(user_id,))
    results = cursor.fetchone()
    cursor.close()
    conn.close()
    if results:
        return User(user_id=results[0], email=results[2])
    return None


@app.route("/")
def home():
    return render_template("home.html")


@app.route("/login", methods=["GET", "POST"])
def login():
    if request.method == "POST":
        email = request.form["email"]
        password = request.form["password"]
        
        conn = get_db_conn()
        cursor = conn.cursor()
        cursor.execute("SELECT * FROM Customers WHERE email = %s AND password = %s", (email, password))
        user = cursor.fetchone()
        conn.close()

        if user:
            # Redirect to a different page after successful login
            user = User(user_id=user[0], email=user[2])
            login_user(user)
            return redirect(url_for("dashboard"))
        else:
            flash("Invalid email or password")
            # Handle incorrect login credentials
            return render_template("login.html", error=True)

    return render_template("login.html", error=False)

@app.route("/signup", methods=["GET", "POST"])
def signup():
    if request.method == "POST":
        name = request.form["name"]
        billing_address = request.form["billing_address"]
        password = request.form["password"]
        email = request.form["email"]

        conn = get_db_conn()
        cursor = conn.cursor()
        try:
            cursor.execute("INSERT INTO Customers(name, email, password, billing_address) VALUES (%s, %s, %s, %s)", (name, email, password, billing_address))

            conn.commit()
            cursor.close()
            conn.close()
            print("Sign Up!")
            # Redirect to login page after successful signup
            return redirect(url_for("login"))
        except Exception as e:
            flash("Error")

    return render_template("signup.html")

@app.route("/logout")
@login_required
def logout():
    # Perform logout actions if needed
    # For instance, clear session data, log the user out, etc.
    # Redirect the user to the home page after logout
    logout_user()
    return redirect(url_for("home"))

@app.route("/dashboard")
@login_required
def dashboard():
    return render_template("dashboard.html", email=current_user.email)


class NewServiceLocationForm(FlaskForm):
    start_date = DateField('Start Date', validators=[DataRequired()])
    address = StringField('Address', validators=[DataRequired()])
    zip_code = StringField('Zip Code', validators=[DataRequired()])
    unit_number = IntegerField('Unit Number', validators=[DataRequired()])
    area = IntegerField('Area(Square Footage)',validators=[DataRequired()])
    n_bedroom= IntegerField('Number of Bedrooms', validators=[DataRequired()])
    n_occupants= IntegerField('Number of Occupants', validators=[DataRequired()])

    submit=SubmitField('Add Location')

@app.route('/locations', methods=['GET', 'POST'])
@login_required
def locations():
    form = NewServiceLocationForm()
    conn = get_db_conn()
    cursor = conn.cursor(pymysql.cursors.DictCursor)

    if form.validate_on_submit():
        sql_query = f'''
                    SELECT pID 
                    FROM Properties 
                    WHERE address = %s
                    AND unit_number = %s
                    AND active = 1'''
        cursor.execute(sql_query, (form.address.data, form.unit_number.data))
        results = cursor.fetchone()
        if not results: # No active service location here, Insert NEW
            sql_query = f'''
                        INSERT INTO Properties(start_date, address, zip_code, unit_number, area, n_bedroom, n_occupants) 
                        VALUES(%s, %s, %s, %s, %s, %s, %s)
                        '''
            location_data = (
                current_user.id,
                form.start_date.data,
                form.address.data,
                form.zip_code.data,
                form.unit_number.data,
                form.area.data,
                form.n_bedroom.data,
                form.n_occupants.data
            )
            cursor.execute(sql_query, location_data)
            conn.commit()

            cursor.execute('SELECT LAST_INSERT_ID()')  # Retrieve the last inserted deviceID
            new_property_id = cur.fetchone()[0]
            sql_query = 'INSERT INTO Customer_Property(cID, pID) VALUES(%s, %s);'
            cursor.execute(sql_query, (current_user.id, new_property_id))
            conn.commit()
        else: # Already active service location here, INSERT Customer_Property
            sql_query = f'''
                        INSERT INTO Customer_Property(cID, pID) 
                        VALUES(%s, %s)
                        '''
            cursor.execute(sql_query, (current_user.id, results['pID']))
            conn.commit()

    print(current_user.id)
    cursor.execute('Select * from Properties NATURAL JOIN Customer_Property where cID=%s AND active=1', (current_user.id,))
    active_locations = cursor.fetchall()
    cursor.execute('Select * from Properties NATURAL JOIN Customer_Property where cID=%s AND active=0', (current_user.id,))
    inactive_locations = cursor.fetchall()
    print(locations)
    cursor.close()
    conn.close()
    return render_template('locations.html', form=form, locations=active_locations, inactive_locations=inactive_locations)


@app.route('/stop_location_service/<int:pID>', methods=['POST'])
@login_required
def stop_location_service(pID):
    conn = get_db_conn()
    cursor = conn.cursor()
    sql_query = 'UPDATE Properties SET active = FALSE WHERE pID = %s'
    cursor.execute(sql_query, (pID,))
    conn.commit()
    cursor.close()
    conn.close()
    flash('Stop Service！')
    return redirect(url_for('locations'))

class NewDeviceForm(FlaskForm):
    type = SelectField('Device Type',
                       choices=[('', 'please select a device type'), # (value, label)
                                ('Refrigerator', 'Refrigerator'),
                                ('AC', 'AC'),
                                ('Laptop', 'Laptop')],
                       id='type')
    model = SelectField('Device Model', choices=[], id='model')
    submit = SubmitField('Add Device')


@app.route('/location/<int:pID>', methods=['GET', 'POST'])
# @login_required
def devices(pID):
    form = NewDeviceForm()
    conn = get_db_conn()
    cursor = conn.cursor(pymysql.cursors.DictCursor)
    if request.method == 'POST':
        type = form.type.data
        model = form.model.data
        if type == 'Refrigerator':
            form.model.choices = [('Boeing 777-300er', 'Boeing 777-300er'), ('Airbus A380', 'Airbus A380'), ('Comac C919', 'Comac C919')]
        elif type == 'AC':
            form.model.choices = [('LG 2333', 'LG 2333'), ('Samsung 2200', 'Samsung 2200')]
        elif type == 'Laptop':
            form.model.choices = [('macbook pro', 'macbook pro'), ('alienware x17', 'alienware x17')]
    if form.validate_on_submit():
        sql_query = 'INSERT INTO Devices(type, model) VALUES (%s, %s)'
        cursor.execute(sql_query, (form.type.data, form.model.data))
        conn.commit()

        cursor.execute('SELECT LAST_INSERT_ID()') # Retrieve the last inserted deviceID
        new_device_id = cursor.fetchone()['LAST_INSERT_ID()']
        sql_query = 'INSERT INTO Property_Device(pID, deviceID) VALUES(%s, %s);'
        cursor.execute(sql_query, (pID, new_device_id))
        conn.commit()

        flash('New device added')
        return redirect(url_for('devices', pID=pID))
    sql_query = f'''
                Select * 
                from Devices 
                NATURAL JOIN Property_Device 
                where pID = %s
                '''
    cursor.execute(sql_query, (pID,))
    devices=cursor.fetchall()
    cursor.close()
    conn.close()

    return render_template('devices.html', devices=devices, form=form, pID=pID)


@app.route('/location/<int:pID>/delete_device/<int:deviceID>', methods=['POST'])
# @login_required
def delete_device(pID, deviceID):
    conn = get_db_conn()
    cursor = conn.cursor()

    cursor.execute('DELETE FROM Data WHERE deviceID = %s', (deviceID,))
    cursor.execute('DELETE FROM Property_Device WHERE deviceID = %s', (deviceID,))
    cursor.execute('DELETE FROM Devices WHERE deviceID = %s', (deviceID,))
    conn.commit()

    cursor.close()
    conn.close()

    flash('Delete Device!')
    return redirect(url_for('devices', pID=pID))

'''
View 1: Summarize the total energy consumption daily or monthly
'''
class EnergyComsumptionForm(FlaskForm):
    def __init__(self, *args, **kwargs):
        super(EnergyComsumptionForm, self).__init__(*args, **kwargs)
        self.pID.choices = [('all', 'all'), ('active', 'active')] + get_locations(current_user.id)

    pID = SelectField('Service Location', choices=[('all', 'all'), ('active', 'active')])
    device_type = SelectField('Device Type', choices=[('all', 'all')])
    time_granularity = SelectField('Time Granularity', choices=[('daily', 'daily'), ('monthly', 'monthly')])
    selected_period = SelectField('Selected Period', choices=[])
    submit = SubmitField('Submit')
    def update_choices(self, pID, device_type, time_granularity):
        self.pID.choices = [('all', 'all'), ('active', 'active')] + get_locations(current_user.id)
        self.device_type.choices = [('all', 'all')] + get_device_types(current_user.id, pID)
        self.selected_period.choices = get_available_periods(current_user.id, pID, device_type, time_granularity)


@app.route('/get_locations/<cID>')
@login_required
def get_locations(cID):
    conn = get_db_conn()
    cursor = conn.cursor()
    cursor.execute('SELECT pID FROM Customer_Property WHERE cID = %s', (cID,))
    results = cursor.fetchall()
    cursor.close()
    conn.close()
    return [(str(pID[0]), str(pID[0])) for pID in results]


@app.route('/get_device_types/<cID>/<pID>')
@login_required
def get_device_types(cID, pID):
    conn = get_db_conn()
    cursor = conn.cursor()
    if pID == 'all':
        sql_query = f'''
                    SELECT DISTINCT type 
                    FROM Devices 
                    NATURAL JOIN Property_Device 
                    NATURAL JOIN Customer_Property 
                    WHERE cID = %s
                    '''
        cursor.execute(sql_query, (cID,))
    elif pID == 'active':
        sql_query = f'''
                    SELECT DISTINCT type 
                    FROM Devices 
                    NATURAL JOIN Property_Device
                    NATURAL JOIN Properties
                    NATURAL JOIN Customer_Property 
                    WHERE cID = %s
                    AND active = 1
                    '''
        cursor.execute(sql_query, (cID,))
    else:
        sql_query = f'''
                    SELECT DISTINCT type 
                    FROM Devices 
                    NATURAL JOIN Property_Device 
                    NATURAL JOIN Customer_Property 
                    WHERE cID = %s
                    AND pID = %s
                    '''
        cursor.execute(sql_query, (cID, pID))
    results = cursor.fetchall()
    cursor.close()
    conn.close()
    return [(str(type[0]), str(type[0])) for type in results]

@app.route('/get_available_periods/<cID>/<pID>/<type>/<time_granularity>')
@login_required
def get_available_periods(cID, pID, type, time_granularity):
    conn = get_db_conn()
    cursor = conn.cursor()
    condition = []
    params = []

    condition.append('cID = %s')
    params.append(cID)
    if pID != 'all':
        if pID =='active':
            condition.append('active = 1')
        else:
            condition.append('pID = %s')
            params.append(pID)
    if type != 'all':
        condition.append('type = %s')
        params.append(type)
    addition_where = ' AND '.join(condition)
    if time_granularity == 'daily':
        sql_query = f'''
                    SELECT DISTINCT concat(YEAR(report_time), '.', MONTH(report_time)) AS period
                    FROM Data
                    NATURAL JOIN Devices
                    NATURAL JOIN Property_Device
                    NATURAL JOIN Properties
                    NATURAL JOIN Customer_Property
                    WHERE event_label = 'energy use'
                    AND {addition_where}
                    '''
    elif time_granularity == 'monthly':
        sql_query = f'''
                    SELECT DISTINCT YEAR(report_time)
                    FROM Data
                    NATURAL JOIN Devices
                    NATURAL JOIN Property_Device
                    NATURAL JOIN Properties
                    NATURAL JOIN Customer_Property
                    WHERE event_label = 'energy use'
                    AND {addition_where}
                    '''
    cursor.execute(sql_query, tuple(params))
    available_periods = sorted(cursor.fetchall())
    cursor.close()
    conn.close()
    return [(str(period[0]), str(period[0])) for period in available_periods]


@app.route('/energy_consumption_summary', methods=['GET', 'POST'])
@login_required
def energy_consumption_summary():
    form = EnergyComsumptionForm()
    message = None
    chart_data = {
        'labels': ['2022', '2023'],
        'values': [0, 0],
    }

    if request.method == 'POST':
        form.update_choices(form.pID.data, form.device_type.data, form.time_granularity.data)
        if form.validate_on_submit():
            conn = get_db_conn()
            cursor = conn.cursor()
            condition = []
            params = []
            condition.append('cID = %s')
            params.append(current_user.id)
            # params.append(1)
            if form.pID.data != 'all':
                if form.pID.data =='active':
                    condition.append('active = 1')
                else:
                    condition.append('pID = %s')
                    params.append(form.pID.data)
            if form.device_type.data != 'all':
                condition.append('type = %s')
                params.append(form.device_type.data)

            time_granularity = form.time_granularity.data
            selected_period = form.selected_period.data

            if selected_period is not None:
                print(selected_period)
                if time_granularity == 'daily':
                    # If daily granularity, user selects a month
                    condition.append("concat(YEAR(report_time), '.', MONTH(report_time)) = %s")
                elif time_granularity == 'monthly':
                    # If monthly granularity, user selects a year
                    condition.append("YEAR(report_time) = %s")
                params.append(selected_period)
            else:
                print('bbbb')
                # Display initial data (e.g., first available month or year)
                if time_granularity == 'daily':
                    # If daily granularity, show the first available month
                    condition.append("YEAR(report_time) = (SELECT YEAR(MIN(report_time)) FROM Data)")
                    condition.append("MONTH(report_time) = (SELECT MONTH(MIN(report_time)) FROM Data)")
                elif time_granularity == 'monthly':
                    # If monthly granularity, show the first available year
                    condition.append("YEAR(report_time) = (SELECT MIN(YEAR(report_time)) FROM Data)")
            print(params)

            addition_where = ' AND '.join(condition)
            if time_granularity == 'daily':
                sql_query = f'''
                            SELECT DATE(report_time) AS date, SUM(value) AS daily_energy_consumption
                            FROM Data
                            NATURAL JOIN Devices
                            NATURAL JOIN Property_Device
                            NATURAL JOIN Properties
                            NATURAL JOIN Customer_Property
                            WHERE event_label = 'energy use'
                            AND {addition_where}
                            GROUP BY Date(report_time)
                            '''
            elif time_granularity == 'monthly':
                sql_query = f'''
                            WITH a(year, month, monthly_energy_consumption) AS (
                                SELECT YEAR(report_time), MONTH(report_time), SUM(value) AS monthly_energy_consumption
                                FROM Data
                                NATURAL JOIN Devices
                                NATURAL JOIN Property_Device
                                NATURAL JOIN Properties
                                NATURAL JOIN Customer_Property
                                WHERE event_label = 'energy use'
                                AND {addition_where}
                                GROUP BY YEAR(report_time), MONTH(report_time)
                            )
                            SELECT concat(year, '.', month) AS month, monthly_energy_consumption
                            FROM a  
                            '''
            cursor.execute(sql_query, tuple(params))
            results = cursor.fetchall()
            chart_data = []
            print(results)
            if not results:
                message = "No energy consumption data found!"
                return render_template('energy_consumption_summary.html', form=form, chart_data=chart_data, message=message)
            else:
                # Process the results and pass them to the template
                results = sorted(results, key=lambda x: x[0])
                labels = []
                values = []

                for row in results:
                    # Use numerical indices for tuple elements
                    label = str(row[0])
                    value = float(row[1])
                    labels.append(label)
                    values.append(value)

                chart_data = {
                    'labels': labels,
                    'values': values,
                }

                cursor.close()
                conn.close()
                return render_template('energy_consumption_summary.html', form=form, chart_data=chart_data, message=message)
    return render_template('energy_consumption_summary.html', form=form, chart_data=chart_data, message=message)


'''
View 2: Summarize the total energy cost daily or monthly
'''
class EnergyCostForm(FlaskForm):
    def __init__(self, *args, **kwargs):
        super(EnergyCostForm, self).__init__(*args, **kwargs)
        self.pID.choices = [('all', 'all'), ('active', 'active')] + get_locations(current_user.id)

    pID = SelectField('Service Location', choices=[('all', 'all'), ('active', 'active')])
    device_type = SelectField('Device Type', choices=[('all', 'all')])
    time_granularity = SelectField('Time Granularity', choices=[('daily', 'daily'), ('monthly', 'monthly')])
    selected_period = SelectField('Selected Period', choices=[])
    submit = SubmitField('Submit')
    def update_choices(self, pID, device_type, time_granularity):
        self.pID.choices = [('all', 'all'), ('active', 'active')] + get_locations(current_user.id)
        self.device_type.choices = [('all', 'all')] + get_device_types(current_user.id, pID)
        self.selected_period.choices = get_available_periods(current_user.id, pID, device_type, time_granularity)


@app.route('/energy_cost_summary', methods=['GET', 'POST'])
@login_required
def energy_cost_summary():
    form = EnergyCostForm()
    message = None
    chart_data = {
        'labels': ['2022', '2023'],
        'values': [0, 0],
    }

    if request.method == 'POST':
        form.update_choices(form.pID.data, form.device_type.data, form.time_granularity.data)
        if form.validate_on_submit():
            conn = get_db_conn()
            cursor = conn.cursor()
            condition = []
            params = []
            condition.append('cID = %s')
            params.append(current_user.id)
            # params.append(1)
            if form.pID.data != 'all':
                if form.pID.data == 'active':
                    condition.append('active = 1')
                else:
                    condition.append('pID = %s')
                    params.append(form.pID.data)
            if form.device_type.data != 'all':
                condition.append('type = %s')
                params.append(form.device_type.data)

            time_granularity = form.time_granularity.data
            selected_period = form.selected_period.data

            if selected_period is not None:
                print(selected_period)
                if time_granularity == 'daily':
                    # If daily granularity, user selects a month
                    condition.append("concat(YEAR(report_time), '.', MONTH(report_time)) = %s")
                elif time_granularity == 'monthly':
                    # If monthly granularity, user selects a year
                    condition.append("YEAR(report_time) = %s")
                params.append(selected_period)
            else:
                print('bbbb')
                # Display initial data (e.g., first available month or year)
                if time_granularity == 'daily':
                    # If daily granularity, show the first available month
                    condition.append("YEAR(report_time) = (SELECT YEAR(MIN(report_time)) FROM Data)")
                    condition.append("MONTH(report_time) = (SELECT MONTH(MIN(report_time)) FROM Data)")
                elif time_granularity == 'monthly':
                    # If monthly granularity, show the first available year
                    condition.append("YEAR(report_time) = (SELECT MIN(YEAR(report_time)) FROM Data)")
            print(params)

            addition_where = ' AND '.join(condition)
            if time_granularity == 'daily':
                sql_query = f'''
                            WITH t1(pID, date, value, weekend, am) AS
                                (Select pID, Date(report_time) AS date, value, 
                                CASE when DAYOFWEEK(report_time) in (2,3,4,5,6) THEN false
                                ELSE true END as weekend, 
                                CASE when DATE_FORMAT(report_time, '%%p') = 'AM' THEN true
                                ELSE false END as am
                                FROM Data
                                NATURAL JOIN Devices
                                NATURAL JOIN Property_Device
                                NATURAL JOIN Properties
                                NATURAL JOIN Customer_Property
                                WHERE event_label = 'energy use'
                                AND {addition_where}
                            ),
                            t2(date, cost) AS
                                (SELECT date, (value * price_value) AS cost
                                FROM t1
                                Natural Join Price
                            )
                            SELECT date, SUM(cost) AS daily_energy_cost
                            FROM t2
                            Group by date;
                            '''
            elif time_granularity == 'monthly':
                sql_query = f'''
                            WITH t1(pID, date, value, weekend, am) AS
                                (Select pID, Date(report_time) AS date, value, 
                                CASE when DAYOFWEEK(report_time) in (2,3,4,5,6) THEN false
                                ELSE true END as weekend, 
                                CASE when DATE_FORMAT(report_time, '%%p') = 'AM' THEN true
                                ELSE false END as am
                                FROM Data
                                NATURAL JOIN Devices
                                NATURAL JOIN Property_Device
                                NATURAL JOIN Properties
                                NATURAL JOIN Customer_Property
                                WHERE event_label = 'energy use'
                                AND {addition_where}
                            ),
                            t2(month, cost) AS
                                (SELECT concat(YEAR(date), '.', MONTH(date)) AS month, (value * price_value) AS cost
                                FROM t1
                                Natural Join Price
                            )
                            SELECT month, SUM(cost) AS daily_energy_cost
                            FROM t2
                            Group by month;
                            '''
            cursor.execute(sql_query, tuple(params))
            results = cursor.fetchall()
            chart_data = []
            print(results)
            if not results:
                message = "No energy consumption data found!"
                return render_template('energy_consumption_summary.html', form=form, chart_data=chart_data,
                                       message=message)
            else:
                # Process the results and pass them to the template
                results = sorted(results, key=lambda x: x[0])
                labels = []
                values = []

                for row in results:
                    # Use numerical indices for tuple elements
                    label = str(row[0])
                    value = float(row[1])
                    labels.append(label)
                    values.append(value)

                chart_data = {
                    'labels': labels,
                    'values': values,
                }

                cursor.close()
                conn.close()
                return render_template('energy_cost_summary.html', form=form, chart_data=chart_data,
                                       message=message)
    return render_template('energy_cost_summary.html', form=form, chart_data=chart_data, message=message)


'''View 3: Compare energy consumption with similar size properties'''
class EnergyComparisonForm(FlaskForm):
    def __init__(self, *args, **kwargs):
        super(EnergyComparisonForm, self).__init__(*args, **kwargs)
        self.pID.choices = get_locations(current_user.id)

    pID = SelectField('Service Location', choices=[])
    device_type = SelectField('Device Type', choices=[('all', 'all')])
    time_granularity = SelectField('Time Granularity', choices=[('daily', 'daily'), ('monthly', 'monthly')])
    selected_period = SelectField('Selected Period', choices=[])
    submit = SubmitField('Submit')
    def update_choices(self, pID, device_type, time_granularity):
        self.pID.choices = get_locations(current_user.id)
        self.device_type.choices = [('all', 'all')] + get_device_types(current_user.id, pID)
        self.selected_period.choices = get_available_periods(current_user.id, pID, device_type, time_granularity)


@app.route('/energy_comparison', methods=['GET', 'POST'])
@login_required
def energy_comparison():
    form = EnergyComparisonForm()
    message = None
    chart_data = {
        'labels': ['2022', '2023'],
        'values': [0, 0],
    }
    avg_chart_data = {
        'labels': ['2022', '2023'],
        'values': [0, 0],
    }

    if request.method == 'POST':
        form.update_choices(form.pID.data, form.device_type.data, form.time_granularity.data)
        if form.validate_on_submit():
            conn = get_db_conn()
            cursor = conn.cursor()
            condition = []
            params = []
            # params.append(1)
            # condition.append('pID = %s')
            # params.append(form.pID.data)
            if form.device_type.data != 'all':
                condition.append('type = %s')
                params.append(form.device_type.data)

            time_granularity = form.time_granularity.data
            selected_period = form.selected_period.data

            if selected_period is not None:
                print(selected_period)
                if time_granularity == 'daily':
                    # If daily granularity, user selects a month
                    condition.append("concat(YEAR(report_time), '.', MONTH(report_time)) = %s")
                elif time_granularity == 'monthly':
                    # If monthly granularity, user selects a year
                    condition.append("YEAR(report_time) = %s")
                params.append(selected_period)
            else:
                print('bbbb')
                # Display initial data (e.g., first available month or year)
                if time_granularity == 'daily':
                    # If daily granularity, show the first available month
                    condition.append("YEAR(report_time) = (SELECT YEAR(MIN(report_time)) FROM Data)")
                    condition.append("MONTH(report_time) = (SELECT MONTH(MIN(report_time)) FROM Data)")
                elif time_granularity == 'monthly':
                    # If monthly granularity, show the first available year
                    condition.append("YEAR(report_time) = (SELECT MIN(YEAR(report_time)) FROM Data)")
            print(params)

            addition_where = ' AND '.join(condition)
            if time_granularity == 'daily':
                my_sql_query = f'''
                            SELECT DATE(report_time) AS date, SUM(value) AS daily_energy_consumption
                            FROM Data
                            NATURAL JOIN Devices
                            NATURAL JOIN Property_Device
                            NATURAL JOIN Properties
                            WHERE event_label = 'energy use'
                            AND pid = {form.pID.data}
                            AND {addition_where}
                            GROUP BY Date(report_time)
                            '''
                avg_sql_query = f'''
                                WITH Consumption_Summary (date, pID, area,total_energy_consumption) AS
                                (Select DATE(report_time) AS date, pID, area, SUM(value) as total_energy_consumption
                                From Data
                                NATURAL JOIN Devices
                                Natural join Property_Device
                                Natural join Properties
                                WHERE event_label = 'energy use'
                                AND {addition_where}
                                Group by Date(report_time), pID, area
                                )
                                Select date, AVG(total_energy_consumption)
                                From Consumption_Summary CS
                                Where ABS((SELECT area FROM Properties WHERE pid={form.pID.data}) - CS.area) <= CS.area*0.05
                                GROUP BY date
                                '''
            elif time_granularity == 'monthly':
                my_sql_query = f'''
                            WITH a(year, month, monthly_energy_consumption) AS (
                                SELECT YEAR(report_time), MONTH(report_time), SUM(value) AS monthly_energy_consumption
                                FROM Data
                                NATURAL JOIN Devices
                                NATURAL JOIN Property_Device
                                NATURAL JOIN Properties
                                WHERE event_label = 'energy use'
                                AND {addition_where}
                                AND pid = {form.pID.data}
                                GROUP BY YEAR(report_time), MONTH(report_time)
                            )
                            SELECT concat(year, '.', month) AS month, monthly_energy_consumption
                            FROM a  
                            '''
                avg_sql_query = f'''
                                WITH Consumption_Summary (year, month, pID, area,total_energy_consumption) AS
                                (Select YEAR(report_time), MONTH(report_time), pID, area, SUM(value) as total_energy_consumption
                                From Data
                                NATURAL JOIN Devices
                                Natural join Property_Device
                                Natural join Properties
                                WHERE event_label = 'energy use'
                                AND {addition_where}
                                Group by YEAR(report_time), MONTH(report_time), pID, area
                                )
                                Select concat(year, '.', month) AS month, AVG(total_energy_consumption)
                                From Consumption_Summary CS
                                Where ABS((SELECT area FROM Properties WHERE pid={form.pID.data}) - CS.area) <= CS.area*0.05
                                GROUP BY concat(year, '.', month)
                                '''
            cursor.execute(my_sql_query, tuple(params))
            my_results = cursor.fetchall()
            cursor.execute(avg_sql_query, tuple(params))
            avg_results = cursor.fetchall()
            chart_data = []
            avg_chart_data = []
            print(my_results)
            if not my_results:
                message = "No energy consumption data found!"
                return render_template('energy_comparison.html', form=form, chart_data=chart_data,
                                       avg_chart_data=avg_chart_data, message=message)
            else:
                # Process the results and pass them to the template
                my_results = sorted(my_results, key=lambda x: x[0])
                labels = []
                values = []

                for row in my_results:
                    # Use numerical indices for tuple elements
                    label = str(row[0])
                    value = float(row[1])
                    labels.append(label)
                    values.append(value)

                chart_data = {
                    'labels': labels,
                    'values': values,
                }

                avg_results = sorted(avg_results, key=lambda x: x[0])
                labels = []
                values = []

                for row in avg_results:
                    # Use numerical indices for tuple elements
                    label = str(row[0])
                    value = float(row[1])
                    labels.append(label)
                    values.append(value)

                avg_chart_data = {
                    'labels': labels,
                    'values': values,
                }
                cursor.close()
                conn.close()
                return render_template('energy_comparison.html', form=form, chart_data=chart_data,
                                       avg_chart_data=avg_chart_data, message=message)
    return render_template('energy_comparison.html', form=form, chart_data=chart_data, avg_chart_data=avg_chart_data, message=message)

'''View 4: How to save energy and money'''
class EnergySavingForm(FlaskForm):
    type = SelectField('Device Type',
                       choices=[('all', 'all'),
                                ('refrigerator', 'refrigerator'),
                                ('AC', 'AC'),
                                ('laptop', 'laptop')],
                       id='type')
    submit = SubmitField('Submit')


@app.route('/energy_saving', methods=['GET', 'POST'])
@login_required
def energy_saving():
    form = EnergySavingForm()
    message = None
    if form.validate_on_submit():
        type = form.type.data
        if type == 'refrigerator':
            message = refrige_saving(current_user.id)
        elif type == 'AC':
            message = ac_saving(current_user.id)
        elif type == 'laptop':
            message = peak_saving(current_user.id, type='laptop')
        else:
            message = peak_saving(current_user.id, type = 'all')

    return render_template('energy_saving.html', form=form, message=message)

def peak_saving(cID, type):
    conn = get_db_conn()
    cursor = conn.cursor()
    condition = []
    params = []
    condition.append('cID = %s')
    params.append(cID)
    if type != 'all':
        condition.append('type = %s')
        params.append(type)

    addition_where = ' AND '.join(condition)
    sql_query = f'''
                WITH t1(pID, date, value, weekend, am) AS
                (Select pID, Date(report_time) AS date, value, 
                CASE when DAYOFWEEK(report_time) in (2,3,4,5,6) THEN false
                ELSE true END as weekend, 
                CASE when DATE_FORMAT(report_time, '%%p') = 'AM' THEN true
                ELSE false END as am
                FROM Data
                NATURAL JOIN Devices
                NATURAL JOIN Property_Device
                NATURAL JOIN Customer_Property
                WHERE event_label = 'energy use'
                AND {addition_where}
                )
                SELECT SUM(value), weekend, am
                FROM t1
                GROUP BY weekend, am
                ORDER BY weekend, am
                '''
    cursor.execute(sql_query, tuple(params))
    results = cursor.fetchall() # weekend, am顺序是00，01，10，11
    if not results:
        return "No energy consumption data found!"
    peak_consumption = results[3][0]
    off_peak_consumption = results[0][0]
    total_consumtion = results[0][0] + results[1][0] + results[2][0] + results[3][0]
    peak_percentage = round(peak_consumption/total_consumtion * 100, 2)
    off_peak_percentage = round(off_peak_consumption / total_consumtion * 100, 2)
    return f'''You consume {peak_percentage}% energy at peak time and {off_peak_percentage}% energy at off-peak time.\n
    You can save money by using devices at off-peak time more!'''


def refrige_saving(cID):
    conn = get_db_conn()
    cursor = conn.cursor()

    sql_query = f'''
                Select COUNT(*)
                From Data data_open
                Natural Join Devices
                Natural Join Property_Device
                Natural Join Properties
                NATURAL JOIN Customer_Property
                Where type = 'refrigerator'
                AND cID = {cID}
                And data_open.event_label = 'door opened'
                And not exists (
                    Select 1
                    From Data data_close
                    Where data_close.deviceID = data_open.deviceID
                    And data_close.event_label = 'door closed'
                    And data_close.report_time > data_open.report_time
                    And data_close.report_time <= DATE_ADD(data_open.report_time, INTERVAL 30 MINUTE)
                );
                '''
    cursor.execute(sql_query)
    results = cursor.fetchone()
    if not results:
        return "No refrigerator data found!"
    forget_time = results[0]
    if forget_time:
        return peak_saving(cID, 'refrigerator') + f'''\n
        You forgot to close fridge door for more than 30 minutes for {forget_time} times!\n
        Pay attention next time!'''
    return peak_saving(cID, 'refrigerator') + f'''\n
    Thumbs up! You never forgets to close fridge door.'''

def ac_saving(cID):
    conn = get_db_conn()
    cursor = conn.cursor()

    sql_query = f'''
                Select AVG(value)
                From Data
                Natural Join Devices
                Natural Join Property_Device
                Natural Join Properties
                NATURAL JOIN Customer_Property
                Where type = 'AC'
                AND cID = {cID}
                And (event_label = 'temp higher' OR event_label = 'temp lowered')
                '''
    cursor.execute(sql_query)
    results = cursor.fetchone()
    if not results:
        return "No AC temperature data found!"
    avg_temp = results[0]
    return peak_saving(cID, 'refrigerator') + f'''\n
    The avg temperature setting of your AC is {avg_temp}!\n
    Maybe you should set it lower.'''

if __name__ == "__main__":
    app.run(debug=True)
