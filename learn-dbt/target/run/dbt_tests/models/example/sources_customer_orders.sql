

      create or replace transient table test_db.dbt.sources_customer_orders  as
      (

SELECT 
    C.C_CUSTKEY,
    C.C_NAME,
    C.C_NATIONKEY AS NATION,
    SUM(O.O_TOTALPRICE) AS TOTAL_ORDER_PRICE 
FROM snowflake_sample_data.tpch_sf1.customer C
LEFT JOIN snowflake_sample_data.tpch_sf1.orders O
ON C.C_CUSTKEY = O.O_CUSTKEY

  GROUP BY
   
     1
      , 
   
     2
      , 
   
     3
     
   

-- GROUP BY
--     C.C_CUSTKEY,
--     C.C_NAME,
--     C.C_NATIONKEY
      );
    