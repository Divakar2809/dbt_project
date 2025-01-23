with silver_users as (select * from {{ ref("bronze_users") }})
select
    id,
    created_at,
    city,
    state,
    year(birth_date) as birth_year,
    source as sales_channel
from silver_users
