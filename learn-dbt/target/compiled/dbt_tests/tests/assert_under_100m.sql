SELECT 
   c_custkey, c_acctbal, SUM(c_acctbal)
FROM analytics.dbt.customer_model
GROUP BY 1, 2
HAVING SUM(c_acctbal) > 100000000