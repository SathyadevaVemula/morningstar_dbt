WITH stg_customers AS (
    SELECT
        customer_sk,
        CONCAT(first_name, ' ', last_name) AS customer_name,
        email AS email_address,
        phone AS home_phone
    FROM FUNDS_MORNINGSTAR.FUNDS_RAW.DIM_CUSTOMER
)
SELECT * FROM stg_customers