#@ Author: Atitawat Pol-in

def execute_sql(connection: dict, sql: str) -> None:
    '''
    Create tables
    '''
    
    import psycopg2
    
    db_connection = psycopg2.connect(
        host=connection.get('host', None), 
        database=connection.get('database', None), 
        user=connection.get('user', None), 
        password=connection.get('password', None),
        port=connection.get('port', None)
    )
    db_cursor = db_connection.cursor()
    db_cursor.execute(sql)
    print("INFO: Executed sql statement")
    
    db_cursor.close()
    db_connection.commit()
    db_connection.close()
    
    return 

def main():
    '''
    Create tables before loading CSV
    '''
    
    pg_conn = {
		'host': '127.0.0.1',
		'database': 'zipmex',
		'user': 'postgres',
		'password': 'password',
		'port': '5432'
	}
    
    order_detail_sql = '''
		CREATE TABLE IF NOT EXISTS public.order_detail (
			"order_created_timestamp" TIMESTAMP,
			"status" VARCHAR(256),
			"price" INT,
			"discount" DECIMAL(18,2),
			"id" VARCHAR(256),
			"driver_id" VARCHAR(256),
			"user_id" VARCHAR(256),
			"restaurant_id" VARCHAR(256)
		);
    '''
    
    restaurant_detail_sql = '''
		CREATE TABLE IF NOT EXISTS public.restaurant_detail (
			"id" VARCHAR(256),
			"restaurant_name" VARCHAR(256),
			"category" VARCHAR(256),
			"esimated_cooking_time"	DECIMAL(18,2),
			"latitude" DECIMAL(18,6),
			"longitude" DECIMAL(18,6)
		);
    '''
    # create table order_detail
    execute_sql(
        connection=pg_conn, sql=order_detail_sql
    )
    
    # create table restaurant_detail
    execute_sql(
		connection=pg_conn, sql=restaurant_detail_sql
	)
    
    return

if __name__ == '__main__':
    main()