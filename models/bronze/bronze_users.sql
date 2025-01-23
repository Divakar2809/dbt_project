with bronze_users as (select * from {{ source("landing", "users") }})
select *
from bronze_users
