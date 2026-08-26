with customer as (
    select * from {{ ref ('customer_snapshot')}}
),
final as (
    select * from customer
)

select * from final