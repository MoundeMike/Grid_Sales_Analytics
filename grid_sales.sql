select * from main limit 5
--EDA
--monthly revenue trend
select order_month, round(sum(revenue::numeric),2) as total_revenue
from main
group by order_month
--revenue by product category
select product_category, round(sum(revenue::numeric),2) as revenue_per_product
from main
group by product_category
order by revenue_per_product desc
--products by revenue
select product_name, round(sum(revenue::numeric),2) as total_sales
from main
group by product_name
order by total_sales desc
limit 10
--revenue by region
select region, round(sum(revenue::numeric),2) as total_sales 
from main
group by region
order by total_sales desc
--orders by region
select region,
count(order_id) as order_count,
round(sum(revenue::numeric),2) as total_sales
from main
group by region 
order by count(order_id) desc
--most profitable categories
select product_category,
sum(revenue) - sum(cogs) as profit from main
group by product_category
--high value orders
SELECT * FROM main
WHERE revenue >= (
    SELECT percentile_cont(0.99)
    WITHIN GROUP (ORDER BY revenue)
    FROM main
)