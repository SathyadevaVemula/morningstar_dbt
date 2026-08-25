{{ config(
    materialized='ephemeral'
) }}

select * from FUNDS_MORNINGSTAR.FUNDS_RAW.DIM_CUSTOMER

    