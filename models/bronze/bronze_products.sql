
{{
    config(
        materialized='table',
        location_root='abfss://bronze@stdbtdevuseast.dfs.core.windows.net/bronze_products'
    )
}}
with bronze_products as (select * from {{ source("landing", "products") }})
select *
from bronze_products
