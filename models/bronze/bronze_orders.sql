{{
    config(
        materialized='table',
        location_root = 'abfss://bronze@stdbtdevuseast.dfs.core.windows.net/bronze_orders'
        )
}}
with bronze_orders as (select * from {{ source("landing", "orders") }})
select *
from bronze_orders
