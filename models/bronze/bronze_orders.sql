with bronze_orders as (select * from {{ source("landing", "orders") }})
select *
from bronze_orders
