def extract_csv(filename: str):
    '''
    Extracting data from csv
    '''
    
    import pandas as pd
    
    file_path = filename
    df = pd.read_csv(file_path, encoding='utf8')
    
    return df

def insert_DF_to_pg(df, table: str):
    '''Fastest Way'''
    import psycopg2
    import psycopg2.extras
    import pandas as pd

    conn = psycopg2.connect(
        host='127.0.0.1', database='zipmex', 
        user='postgres', password='password')

    # df is the dataframe
    if len(df) > 0:
        df_columns = list(df)
        # create (col1,col2,...)
        columns = ",".join(df_columns)

        # create VALUES('%s', '%s",...) one '%s' per column
        values = "VALUES({})".format(",".join(["%s" for _ in df_columns])) 

        #create INSERT INTO table (columns) VALUES('%s',...)
        insert_stmt = "INSERT INTO {} ({}) {}".format(table,columns,values)

        cur = conn.cursor()
        psycopg2.extras.execute_batch(cur, insert_stmt, df.values)
        conn.commit()
        cur.close()
        
    return "Done"

def main():
    '''
    Importing data to postgres DB
    '''
    
    # variables
    order_detail_fname = '../../CSV/'+'order_detail.csv'
    restaurant_detail_fname = '../../CSV/'+'restaurant_detail.csv'
    order_detail_table = 'public.order_detail'
    restaurant_detail_table = 'public.restaurant_detail'
    
    # create pandas DataFrame for those files
    order_detail_df = extract_csv(filename=order_detail_fname)
    restaurant_detail_df = extract_csv(filename=restaurant_detail_fname)
    
    # insert DataFrame to table
    insert_DF_to_pg(df=order_detail_df, table=order_detail_table)
    insert_DF_to_pg(df=restaurant_detail_df, table=restaurant_detail_table)
    
    print("INFO: Import csv successfully")
    
    return None

if __name__ == '__main__':
    main()