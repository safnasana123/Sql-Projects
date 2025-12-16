use online_shopping;

-- find top 5 selling products

select products.product_id,products.name,orderdetails.quantity
from products
inner join orderdetails on products.product_id = orderdetails.product_id
order by quantity desc limit 5 ;

-- get all orders made in the last 30 days

select order_id,customer_id,order_date
from orders
where order_date >= current_date - interval 30 day;

-- calculate total sales revenue

select sum(totalamount) from orders;