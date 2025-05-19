#!/bin/bash

# Update and install packages
yum update -y
yum install -y python3 git mysql

# Install Flask and MySQL connector
pip3 install flask pymysql

# Create app directory
mkdir -p /home/ec2-user/flask-app
cd /home/ec2-user/flask-app

# Create the Flask app
cat > app.py <<EOF
from flask import Flask, request
import pymysql

app = Flask(__name__)

# RDS connection settings
RDS_HOST = "multi-tier-app-mysql.csdy4qa6awgj.us-east-1.rds.amazonaws.com"
DB_USER = "admin"
DB_PASSWORD = "YourStrongPass123!"
DB_NAME = "webapp"

def connect():
    return pymysql.connect(
        host=RDS_HOST,
        user=DB_USER,
        password=DB_PASSWORD,
        database=DB_NAME,
        cursorclass=pymysql.cursors.DictCursor
    )

# Create visitors table if not exists
def init_db():
    try:
        conn = connect()
        with conn.cursor() as cursor:
            cursor.execute("""
                CREATE TABLE IF NOT EXISTS visitors (
                    id INT AUTO_INCREMENT PRIMARY KEY,
                    ip_address VARCHAR(45),
                    user_agent TEXT,
                    visit_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
                )
            """)
            conn.commit()
    finally:
        conn.close()

init_db()

@app.route("/")
def index():
    visitor_ip = request.remote_addr
    user_agent = request.headers.get('User-Agent')
    try:
        conn = connect()
        with conn.cursor() as cursor:
            cursor.execute("INSERT INTO visitors (ip_address, user_agent) VALUES (%s, %s)", (visitor_ip, user_agent))
            conn.commit()
    finally:
        conn.close()
    return "<h3>✅ Flask app is running with RDS and visitor tracking!</h3>"

@app.route("/visitors")
def get_visitors():
    try:
        conn = connect()
        with conn.cursor() as cursor:
            cursor.execute("SELECT * FROM visitors ORDER BY visit_time DESC LIMIT 10")
            visitors = cursor.fetchall()
    finally:
        conn.close()

    html = "<h2>Last 10 Visitors</h2><ul>"
    for v in visitors:
        html += f"<li>{v['visit_time']} - {v['ip_address']} - {v['user_agent']}</li>"
    html += "</ul>"
    return html

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
EOF

# Run the app
nohup python3 app.py > app.log 2>&1 &