with bronze_products as (select * from {{ source("landing", "products") }})
select *
from bronze_products
