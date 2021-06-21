-- 2. Row count per each cooking_bin
use zipmex;

CREATE TABLE cooking_csv_export
ROW FORMAT DELIMITED FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED as textfile
AS
select 'count_per_each_cooking_bin' as count_per_each_cooking_bin, 'cooking_bin' as cooking_bin;

INSERT INTO cooking_csv_export
select count(*) as count_per_each_cooking_bin, cooking_bin as cooking_bin from restaurant_detail_new group by cooking_bin;