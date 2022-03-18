

      create or replace transient table test_db.dbt.snowflake_customer_purchases  as
      (

SELECT 
    C.C_CUSTKEY,
    C.C_NAME,
    C.C_NATIONKEY AS NATION,
    SUM(O.O_TOTALPRICE) AS TOTAL_ORDER_PRICE 
FROM "SNOWFLAKE_SAMPLE_DATA"."TPCH_SF1"."CUSTOMER" C
LEFT JOIN "SNOWFLAKE_SAMPLE_DATA"."TPCH_SF1"."ORDERS" O
ON C.C_CUSTKEY = O.O_CUSTKEY
GROUP BY
    C.C_CUSTKEY,
    C.C_NAME,
    C.C_NATIONKEY
      );
    