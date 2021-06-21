use zipmex;

create table restaurant_detail_new as
select id,
	   restaurant_name,
	   category,
	   esimated_cooking_time,
	   latitude,
	   longitude,
       dt,
	   case 
	   	when esimated_cooking_time >= 10 and esimated_cooking_time <= 40 then 1
		when esimated_cooking_time > 40 and esimated_cooking_time <= 80 then 2
		when esimated_cooking_time > 80 and esimated_cooking_time <= 120 then 3
		when esimated_cooking_time > 120 then 4 end as cooking_bin
from restaurant_detail;