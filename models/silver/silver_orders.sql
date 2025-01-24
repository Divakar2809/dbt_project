{{
    config(
        materialized='table',
        location_root='abfss://silver@stdbtdevuseast.dfs.core.windows.net/silver_orders'
    )
}}


with silver_orders as (select * from {{ ref("bronze_orders") }})
select
    id,
    cast(date_format(created_at, 'yyyy-MM-yy') as date) as created_date,
    user_id,
    product_id,
    quantity,
    unit_price,
    quantity * unit_price as orders_amount
from silver_orders
