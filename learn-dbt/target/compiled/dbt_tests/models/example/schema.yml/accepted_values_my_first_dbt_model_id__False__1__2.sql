
    
    

with all_values as (

    select
        id as value_field,
        count(*) as n_records

    from analytics.dbt.first_model
    group by id

)

select *
from all_values
where value_field not in (
    1,2
)


