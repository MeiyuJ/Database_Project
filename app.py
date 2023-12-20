from flask import Flask, render_template, request, redirect, url_for
from flask_wtf import FlaskForm
from wtforms import StringField, SubmitField, IntegerField, DateField, SelectField
from wtforms.validators import DataRequired, Email, EqualTo
import pymysql

app = Flask(__name__)

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

# Routes
@app.route("/")
def home():
    return render_template("home.html")

@app.route("/login", methods=["GET", "POST"])
def login():
    if request.method == "POST":
        username = request.form["username"]
        password = request.form["password"]
        
        conn = pymysql.connect(**DB_CONFIG)
        cursor = conn.cursor()
        cursor.execute("SELECT * FROM users WHERE username = %s AND password = %s", (username, password))
        user = cursor.fetchone()
        conn.close()

        if user:
            # Redirect to a different page after successful login
            return redirect(url_for("dashboard"))
        else:
            # Handle incorrect login credentials
            return render_template("login.html", error=True)

    return render_template("login.html", error=False)

@app.route("/signup", methods=["GET", "POST"])
def signup():
    if request.method == "POST":
        username = request.form["username"]
        billing_address = request.form["billing_address"]
        password = request.form["password"]
        email = request.form["email"]

        conn = pymysql.connect(**DB_CONFIG)
        cursor = conn.cursor()
        cursor.execute("INSERT INTO users (username, billing_address, password, email) VALUES (%s, %s, %s, %s)", (username, billing_address, password, email))
        conn.commit()
        conn.close()

        # Redirect to login page after successful signup
        return redirect(url_for("login"))

    return render_template("signup.html")

@app.route("/logout")
def logout():
    # Perform logout actions if needed
    # For instance, clear session data, log the user out, etc.
    # Redirect the user to the home page after logout
    return redirect(url_for("home"))

@app.route("/dashboard")
def dashboard():
    return render_template("dashboard.html")


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
# @login_required
def locations():
    form = NewServiceLocationForm()
    conn = get_db_conn()
    cursor = conn.cursor()

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
        else: # Already active service location here, INSERT Customer_Property
            sql_query = f'''
                        INSERT INTO Customer_Property(cID, pID) 
                        VALUES(%s, %s)
                        '''
            cursor.execute(sql_query, (current_user.id, results[0]))
            conn.commit()
        cur.execute('Select * from ServiceLocation where cID=%s AND active = 10', (current_user.id,))
        locations = cur.fetchall()
        cur.close()
        conn.close()
        return render_template('locations.html', form=form, locations=locations)


@app.route('/stop_location_service/<int:pID>')
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
                                        ('AC', ''),
                                        ('Laptop', 'Laptop')])
    model = SelectField('Device Model', choices=[])
    submit = SubmitField('Add Device')


@app.route('/location/<int:pID>', methods=['GET', 'POST'])
# @login_required
def devices(pID):
    form = NewDeviceForm()
    conn = get_db_conn()
    cursor = conn.cursor()
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
        cursor.execute(sql_query, (location_id, device_type, device_model))
        conn.commit()

        cursor.execute('SELECT LAST_INSERT_ID()') # Retrieve the last inserted deviceID
        new_device_id = cur.fetchone()[0]
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
    devices=cur.fetchall()
    cursor.close()
    conn.close()

    return render_template('devices.html', devices=devices, form=form, pID=pID)


'''
View 1: Summarize the total energy consumption daily or monthly
'''
@app.route('/energy_consumption_summary', methods=['GET', 'POST'])
# @login_required
def energy_consumption_summary():
    conn = get_db_conn()
    cursor = conn.cursor()
    condition = []
    params = []
    message = None

    condition.append('cID = %s')
    # params.append(current_cID)
    params.append(1)
    # if (select_location):
    #     condition.append('pID = %s')
    #     params.append(pID)
    # if (select_device_type):
    #     condition.append('type = %s')
    #     params.append(device_type)
    # if (select_device):
    #     condition.append('deviceID = %s')
    #     params.append(deviceID)
    time_granularity = 'daily'

    # Get the time granularity from the form or use the default ('daily')
    # time_granularity = request.form.get('time_granularity', 'monthly')

    addition_where = ' AND '.join(condition)

    # Get distinct periods based on time_granularity
    if time_granularity == 'daily':
        sql_query = f'''
                    SELECT DISTINCT concat(YEAR(report_time), '.', MONTH(report_time)) AS period
                    FROM Data
                    NATURAL JOIN Devices
                    NATURAL JOIN Property_Device
                    NATURAL JOIN Customer_Property
                    WHERE {addition_where}
                    '''
    elif time_granularity == 'monthly':
        sql_query = f'''
                    SELECT DISTINCT YEAR(report_time)
                    FROM Data
                    NATURAL JOIN Devices
                    NATURAL JOIN Property_Device
                    NATURAL JOIN Customer_Property
                    WHERE {addition_where}
                    '''
    cursor.execute(sql_query, tuple(params))
    available_periods = [str(row[0]) for row in sorted(cursor.fetchall())]
    print(available_periods)

    # Assuming you have a button on your HTML form named 'select_period'
    selected_period = request.form.get('select_period', None)

    if selected_period is not None:
        # Handle user-selected period
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
        return render_template('energy_consumption_summary.html', chart_data=chart_data, selected_period=selected_period, available_periods=available_periods,  message=message)
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
        return render_template('energy_consumption_summary.html', chart_data=chart_data, selected_period=selected_period, available_periods=available_periods,  message=message)


'''
View 2: Summarize the total energy cost daily or monthly
'''
@app.route('/energy_cost_summary', methods=['GET', 'POST'])
# @login_required
def energy_cost_summary():
    conn = get_db_conn()
    cursor = conn.cursor()
    condition = []
    params = []
    message = None

    condition.append('cID = %s')
    # params.append(current_cID)
    params.append(1)
    # if (select_location):
    #     condition.append('pID = %s')
    #     params.append(pID)
    # if (select_device_type):
    #     condition.append('type = %s')
    #     params.append(device_type)
    # if (select_device):
    #     condition.append('deviceID = %s')
    #     params.append(deviceID)
    time_granularity = 'monthly'

    # Get the time granularity from the form or use the default ('daily')
    # time_granularity = request.form.get('time_granularity', 'monthly')

    addition_where = ' AND '.join(condition)

    # Get distinct periods based on time_granularity
    if time_granularity == 'daily':
        sql_query = f'''
                    SELECT DISTINCT concat(YEAR(report_time), '.', MONTH(report_time)) AS period
                    FROM Data
                    NATURAL JOIN Devices
                    NATURAL JOIN Property_Device
                    NATURAL JOIN Customer_Property
                    WHERE {addition_where}
                    '''
    elif time_granularity == 'monthly':
        sql_query = f'''
                    SELECT DISTINCT YEAR(report_time)
                    FROM Data
                    NATURAL JOIN Devices
                    NATURAL JOIN Property_Device
                    NATURAL JOIN Customer_Property
                    WHERE {addition_where}
                    '''
    cursor.execute(sql_query, tuple(params))
    available_periods = [str(row[0]) for row in sorted(cursor.fetchall())]
    print(available_periods)

    # Assuming you have a button on your HTML form named 'select_period'
    selected_period = request.form.get('select_period', None)

    if selected_period is not None:
        # Handle user-selected period
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
                        NATURAL JOIN Customer_Property
                        WHERE event_label = 'energy use'
                        AND {addition_where}
                    ),
                    t2(date, cost) AS
                        (SELECT date, (value * price_value) AS cost
                        FROM t1
                        Natural Join Properties
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
                        NATURAL JOIN Customer_Property
                        WHERE event_label = 'energy use'
                        AND {addition_where}
                    ),
                    t2(month, cost) AS
                        (SELECT concat(YEAR(date), '.', MONTH(date)) AS month, (value * price_value) AS cost
                        FROM t1
                        Natural Join Properties
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
        message = "No energy cost data found!"
        return render_template('energy_cost_summary.html', chart_data=chart_data, selected_period=selected_period, available_periods=available_periods,  message=message)
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
        return render_template('energy_cost_summary.html', chart_data=chart_data, selected_period=selected_period, available_periods=available_periods,  message=message)






if __name__ == "__main__":
    app.run(debug=True)
