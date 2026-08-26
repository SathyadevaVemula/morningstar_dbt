{% snapshot customer_snapshot %}
{{
    config(
        target_schema= 'Snapshots',
        unique_key = 'customer_sk',
        strategy = 'timestamp',
        updated_at = 'UPDATED_AT'
    )
}}

select * from {{ source('funds_raw', 'DIM_CUSTOMER')}}

{% endsnapshot %}
