

      create or replace transient table test_db.dbt.cumulative_orders_by_date  as
      (

-- select order_date
--       ,total_price
--       ,sum(total_price) over (order by order_date rows between unbounded preceding and current row) as cumulative_sales
-- from (select o_orderdate as order_date
--             ,sum(o_totalprice) as total_price
--       from snowflake_sample_data.tpch_sf1.orders
--       group by 1
--       )
-- order by 1

with orders as (
      SELECT * FROM snowflake_sample_data.tpch_sf1.orders
)

SELECT DISTINCT o_orderdate,
      SUM(o_totalprice) OVER (ORDER BY o_orderdate) AS cumulative_sales 
FROM orders


where year(o_orderdate) = 1996


ORDER BY o_orderdate
      );
    