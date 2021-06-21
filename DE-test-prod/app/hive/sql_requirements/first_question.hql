-- 1. Get the average discount for each category
use zipmex;

CREATE TABLE discount_csv_export
ROW FORMAT DELIMITED FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED as textfile
AS
select 'discount' as discount, 'category' as category;

INSERT INTO discount_csv_export
select avg(discount_no_null) as discount, category as category from restaurant_detail_new rd inner join order_detail_new od on rd.id=od.restaurant_id group by category;