

      create or replace transient table test_db.dbt.rename_segments_macro_test  as
      (-- Styling with common table expression
with sample_customer as (
    SELECT * FROM snowflake_sample_data.tpch_sf1.customer
)

SELECT 
    c_custkey,
    c_mktsegment,
    
    CASE
        WHEN c_mktsegment in ('BULIDING', 'HOUSEHOLD', 'FURNITURE')
            THEN 'segments_1'
        ELSE 'segment_2'
    END 
 mkt_segment_adjusted
FROM sample_customer
      );
    