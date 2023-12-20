# CS6083 Final Project

## Step I: install MySQL
- Download MySQL from https://dev.mysql.com/downloads/mysql/
- Initialize MySQL with the following credentials
- Username: `root`
- Password: `123457789`

## Step II: create an environment and install packages
#### 1. create an environment
    conda create -n cs6083 python=3.9
    conda activate cs6083

#### 2. install required packages
    pip install -r requirements.txt

## Step III: install mysql (only run if mysql is not installed)
    brew install mysql

## Step IV: login with root credentials
    mysql -u root -p # Then enter your password

## Step V: create an admin account and a new database
    create user 'admin'@'localhost' identified by 'admin';
    # Enter password: admin
    create database cs6083;
    grant all privileges on cs6083.* to 'admin'@'localhost';

## Step VI: exit mysql
    exit;

## Step VII: login with the admin account
- `mysql -u admin -p` # Then enter your password
- run the sql code inside `html/create_table.sql`
- run the sql code inside `html/insert_data.sql`

## Step VIII: start the service
- run the code: `gunicorn -w 4 app:app`

## Run the following commands every time
- conda activate cs6083
- gunicorn -w 4 app:app
