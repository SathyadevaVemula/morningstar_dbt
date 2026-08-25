{{ config(
    materialized='incremental',
    unique_key='CUSTOMER_SK'
) }}


SELECT * from FUNDS_MORNINGSTAR.FUNDS_RAW.DIM_CUSTOMER

{% if is_incremental() %}
where updated_at > (select max(UPDATED_AT) from {{ this }})
{% endif %}     