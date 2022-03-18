
    
    

select
    c_custkey as unique_field,
    count(*) as n_records

from analytics.dbt.customer_model
where c_custkey is not null
group by c_custkey
having count(*) > 1


