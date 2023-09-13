import mysql.connector
from mysql.connector import pooling
import threading
import mysql
# Create a connection pool
connection_pool = pooling.MySQLConnectionPool(
    pool_name="my_pool",
    pool_size=5,
    pool_reset_session=True,
    host='localhost',
    user='root',
    password='Krishna"2713',
    database='maintenance_portal'
)
connection = connection_pool.get_connection()
# Define a function to execute SQL queries
def execute_query(sql_query):
    
    cursor = connection.cursor()
    cursor.execute(sql_query)
    connection.commit()
    cursor.close()
    connection.close()
    
    return

# Define a function to execute SQL queries concurrently using threads
def execute_concurrent_queries(sql_queries):
    threads = []
    for query in sql_queries:
        thread = threading.Thread(target=execute_query, args=(query,))
        threads.append(thread)
        thread.start()

    for thread in threads:
        thread.join()
sql_queries = []
for i in range(1,4):
    sql_queries.append(f"UPDATE Complaint SET salary = salary + salary * {i}  WHERE USER_ID = 'avulasaikrishna@iitgn.ac.in';")
# Example usage

execute_concurrent_queries(sql_queries)
