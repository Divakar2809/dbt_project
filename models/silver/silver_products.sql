{{
    config(
        materialized='table',
        location_root='abfss://silver@stdbtdevuseast.dfs.core.windows.net/silver_products'
    )
}}

with silver_products as (select * from {{ ref("bronze_products") }})
select id, created_at, title as product_name, category, ean, vendor, price
from silver_products
