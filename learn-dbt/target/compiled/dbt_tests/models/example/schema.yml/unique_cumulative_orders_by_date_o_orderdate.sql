
    
    

select
    o_orderdate as unique_field,
    count(*) as n_records

from analytics.dbt.cumulative_orders_by_date
where o_orderdate is not null
group by o_orderdate
having count(*) > 1


