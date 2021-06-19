from sys import path


def query_table(connection: dict, sql: str):
    '''
    extract data from postgresql
    '''
    
    import psycopg2
    import pandas as pd
    

    db_connection = psycopg2.connect(
        host=connection.get('host', None), 
        database=connection.get('database', None), 
        user=connection.get('user', None), 
        password=connection.get('password', None)
    )
    db_cursor = db_connection.cursor()
    
    df = pd.read_sql(sql, con=db_connection)
    db_cursor.close()
    db_connection.close()
    
    return df

def transform_order_detail(df):
    '''
    Create column dt for order_detail table
    '''
    import pandas as pd
    
    df['dt'] = df['order_created_timestamp']\
        .apply(lambda x: x.strftime('%Y%m%d')).astype(str)
    
    return df

def transform_restaurant_detail(df):
    '''
    Create column dt for restaurant_detail table
    '''
    import pandas as pd
    
    df['dt'] = 'latest'
    
    return df

def to_parquet(df, path: str):
    '''
    Save the dataframe to pqrquet file
    '''
    import pandas as pd
    
    df.to_parquet(path, engine='fastparquet')
    
    return
    
def main():
    
    pg_conn = {
		'host': '127.0.0.1',
		'database': 'zipmex',
		'user': 'postgres',
		'password': 'password'
	}
    
    order_detail_sql = '''
    		SELECT "order_created_timestamp", 
    				"status", 
        			"price", 
           			"discount", 
              		"id", 
					"driver_id", 
					"user_id", 
					"restaurant_id" 
            FROM "public"."order_detail";
    '''
    
    restaurant_detail_sql = '''
			SELECT "id", 
					"restaurant_name", 
					"category", 
					"esimated_cooking_time", 
					"latitude", 
					"longitude" 
   			FROM "public"."restaurant_detail";
    '''
    
    # Query order_detail
    order_detail_df = query_table(
        connection=pg_conn, sql=order_detail_sql)
    
    # Query restaurant_detail
    restaurant_detail_df = query_table(
		connection=pg_conn, sql=restaurant_detail_sql
	)
    
    # Transform order_detail
    order_detail_df = transform_order_detail(df=order_detail_df)
    
    # Transform restaurant_detail
    restaurant_detail_df = transform_restaurant_detail(df=restaurant_detail_df)
    
    # save order_detail_df to parquet
    order_detail_path = '../hive/order_detail/order_detail.parquet'
    to_parquet(df=order_detail_df, path=order_detail_path)
    
    # save restaurant_detail_df to parquet
    restaurant_detail_path = '../hive/restaurant_detail/restaurant_detail.parquet'
    to_parquet(df=restaurant_detail_df, path=restaurant_detail_path)
    
    return 

if __name__ == '__main__':
    main()