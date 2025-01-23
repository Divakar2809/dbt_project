with bronze_reviews as (select * from {{ source("landing", "reviews") }})
select *
from bronze_reviews
