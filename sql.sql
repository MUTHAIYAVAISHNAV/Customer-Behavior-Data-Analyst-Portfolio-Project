create database shopping_behaviour;
use shopping_behaviour


select * from customer limit 20

1. what_is total revenue generate_by male vs female customers?

select gender,sum(`purchase_amount_(usd)`) as revenue from customer
group by gender ;

2.which customers used a discount but still spent more than the avgerage purchase amount?

select customer_id,`purchase_amount_(usd)`,discount_applied
from customer
where discount_applied = "yes" and `purchase_amount_(usd)` >= (select avg (`purchase_amount_(usd)`)from customer);

3.which are the top 5 products with highest avgerage review ratig?

select item_purchased,round(avg(review_rating), 2) as avg_review from customer
group by item_purchased
order by avg(review_rating) desc
limit 5;

4. compare the average purchase amount between standard and express shipping ?

select shipping_type,round(avg(`purchase_amount_(usd)`),2) as avg_purchase_amount
from customer
where shipping_type in ("standard","express")
group by shipping_type ;

5. Do subscribed customers spend more? compare average spend and total revenue between subscribers and non-subscribers

select subscription_status,
count(customer_id) as total_customers,
round(avg(`purchase_amount_(usd)`),2) as avg_spend,
round(sum(`purchase_amount_(usd)`),2) as total_revenue
from customer
group by subscription_status
order by total_revenue desc, avg_spend desc;

6.segement customers into new, retruning, and loyal based on their
total number of pervious purchases and show the count of each segemnt

with customer_type as (
select customer_id,previous_purchases,
case
when previous_purchases = 1 then "new"
when previous_purchases between 2 and 10 then "retruning"
else "loyal"
end as customer_segment
from customer
)
select customer_segment, count(*) as "number of customers"
from customer_type
group by customer_segment;

7.what are the 3 most purchased products within each category ?

with item_count as (
    select 
        category,
        item_purchased,
        count(customer_id) as total_orders,
        row_number() over(partition by category order by count(customer_id) desc) as item_rank
    from customer
    group by category, item_purchased
)
select item_rank, category, item_purchased, total_orders
from item_count
where item_rank <= 3;

8.Are customers who are repeat buyers(more than 5 pervious purchases also likely to subscribe?

select subscription_status,count(customer_id) as repeat_customers
from customer
where previous_purchases > 5
group by subscription_status;

9.what is the revenue contribution of each age group ?

select age_group,sum(purchase_amount) as total_revenue
from customer
group by age_group
order by total_revenue desc ;
