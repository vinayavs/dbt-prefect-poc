


SELECT *
FROM "SNOWFLAKE_SAMPLE_DATA"."TPCDS_SF100TCL"."DATE_DIM"
WHERE d_date <= CURRENT_DATE



    and d_date > (SELECT MAX(d_date) FROM analytics.dbt.dates)
