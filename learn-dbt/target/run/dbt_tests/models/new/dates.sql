

      create or replace transient table test_db.dbt.dates  as
      (


SELECT *
FROM "SNOWFLAKE_SAMPLE_DATA"."TPCDS_SF100TCL"."DATE_DIM"
WHERE d_date <= CURRENT_DATE



      );
    