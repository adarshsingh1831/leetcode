# Write your MySQL query statement below
select customer_number from orders
where customer_number = (select customer_number from Orders group by customer_number order by count(customer_number) desc limit 1) order by customer_number desc limit 1;