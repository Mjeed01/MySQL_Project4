SELECT * FROM test.test_table;

#Display the number of orders for each customer
select count(order_total), customer_id
From test.test_table
group by customer_id;


#Display the total amount due for each customer
SELECT customer_id, SUM(order_total) AS total_due
FROM test.test_table
GROUP BY customer_id;




#Display the number of orders and the total amount due for each customer, but only for customers who have placed 3 or more orders.
SELECT customer_id, COUNT(*) AS num_orders, SUM(order_total) AS total_due
FROM test.test_table
GROUP BY customer_id
HAVING COUNT(*) >= 3;




#Display the number of customers who have placed any order during the first month of the year
select order_date
From test.test_table
where order_date Between '2022-01-01' and '2022-01-31';


#Display the total amount due for all orders placed in the first 10 days of the second month
SELECT COUNT(DISTINCT customer_id) AS num_customers
FROM test.test_table
WHERE order_date BETWEEN '2022-01-01' AND '2022-01-31';


#Identify customers who have placed orders with a total of more than $200
SELECT customer_id, SUM(order_total) AS total_spent
FROM test.test_table
GROUP BY customer_id
HAVING SUM(order_total) > 200;



#Display the number of orders placed each day
SELECT order_date, COUNT(*) AS num_orders
FROM test.test_table
GROUP BY order_date;



#Display the total amount due for all orders placed during the month of January
SELECT order_date, SUM(order_total) AS total_due
FROM test.test_table
WHERE order_date BETWEEN '2022-01-01' AND '2022-01-31'
GROUP BY order_date;