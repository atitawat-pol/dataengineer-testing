use zipmex;

create table order_detail_new as 
select order_created_timestamp, status, price, discount, id, driver_id, user_id, restaurant_id, dt, case when discount is null then 0 else discount end as discount_no_null from order_detail;