# main.py
from connect_db import create_connection

def run_query(query):
    """Execute a SQL query and print the results."""
    connection = create_connection()
    if connection:
        cursor = connection.cursor()
        cursor.execute(query)

        # Print column names
        columns = [desc[0] for desc in cursor.description]
        print(" | ".join(columns))

        # Print each row
        for row in cursor.fetchall():
            print(row)

        cursor.close()
        connection.close()
        print("\n--- Query finished successfully ---\n")


# Example: Run one of your Ukesoppgaver queries
if __name__ == "__main__":
    query = """
    SELECT name, population
    FROM Country
    WHERE population > 50000000;
    """
    run_query(query)
