{{
    config(
        materialized='table',
        location_root='abfss://bronze@stdbtdevuseast.dfs.core.windows.net/bronze_users'
    )
}}
with bronze_users as (select * from {{ source("landing", "users") }})
select *
from bronze_users
