{{
    config(
        materialized='table',
        location_root='abfss://bronze@stdbtdevuseast.dfs.core.windows.net/bronze_reviews'
    )
}}


with bronze_reviews as (select * from {{ source("landing", "reviews") }})
select *
from bronze_reviews
