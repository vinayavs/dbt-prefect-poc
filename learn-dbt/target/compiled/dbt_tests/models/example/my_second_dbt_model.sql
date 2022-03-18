-- Use the `ref` function to select from other models

select *
from test_db.dbt.first_model
-- where id = 1
-- union all
-- select 7 as id