select * from {{ ref ("stg_orders")}}
where UNIT_PRICE < 0 and SHIPPING_COST < 0  
