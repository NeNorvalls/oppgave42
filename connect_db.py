# connect_db.py
import mysql.connector

def create_connection():
    """Create and return a connection to the MySQL database."""
    try:
        connection = mysql.connector.connect(
            host="localhost",          # or your server IP
            user="root",               # your MySQL username
            password="your_password",  # your MySQL password
            database="world"           # the database you're using
        )
        if connection.is_connected():
            print("✅ Successfully connected to MySQL database!")
        return connection

    except mysql.connector.Error as err:
        print(f"❌ Error: {err}")
        return None
