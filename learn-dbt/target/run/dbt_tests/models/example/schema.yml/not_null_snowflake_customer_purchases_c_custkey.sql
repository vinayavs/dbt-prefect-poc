select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select *
from analytics.dbt.snowflake_customer_purchases
where c_custkey is null



      
    ) dbt_internal_test