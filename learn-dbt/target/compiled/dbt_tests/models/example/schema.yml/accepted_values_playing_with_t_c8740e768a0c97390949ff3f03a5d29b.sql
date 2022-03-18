
    
    

with all_values as (

    select
        c_mktsegment as value_field,
        count(*) as n_records

    from analytics.dbt.customer_model
    group by c_mktsegment

)

select *
from all_values
where value_field not in (
    'BUILDING','AUTOMOBILE','MACHINERY','HOUSEHOLD','FURNITURE'
)


