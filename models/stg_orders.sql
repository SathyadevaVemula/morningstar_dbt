SELECT
    o.ORDER_PRIORITY,
    o.DISCOUNT,
    o.UNIT_PRICE,
    o.SHIPPING_COST,
    c.CUSTOMER_SK AS CUSTOMER_ID,
    c.Customer_Name
FROM FUNDS_MORNINGSTAR.FUNDS_RAW.SALES_ORDERS o
JOIN 
    {{ ref("stg_customers") }} c ON o.Customer_ID = c.CUSTOMER_SK

