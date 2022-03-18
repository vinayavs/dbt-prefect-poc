select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      SELECT 
   c_custkey, c_acctbal, SUM(c_acctbal)
FROM analytics.dbt.customer_model
GROUP BY 1, 2
HAVING SUM(c_acctbal) > 100000000
      
    ) dbt_internal_test