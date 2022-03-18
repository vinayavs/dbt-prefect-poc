select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

with  __dbt__cte__my_first_dbt_model as (
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
    
*/




-- , post_hook='grant select on analytics.dbt.first_model to role analyst'

with source_data as (

    select 1 as id, 'CA' as state, '2022-01-01 00:00:00.000'::timestamp as updated_at
    union all
    select null as id, 'CT' as state, '2022-01-01 00:00:00.000'::timestamp as updated_at
    union all
    select 3 as id, 'VT' as state, '2022-01-01 00:00:00.000'::timestamp as updated_at
    -- select 1 as id

)

select * -- , True as first_variable
from source_data
-- where id >= 1

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
),child as (
    select id as from_field
    from analytics.dbt.my_second_dbt_model
    where id is not null
),

parent as (
    select id as to_field
    from __dbt__cte__my_first_dbt_model
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null



      
    ) dbt_internal_test