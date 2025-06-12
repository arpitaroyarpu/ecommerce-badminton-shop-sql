--Basic Select Queries

1.List all active products with their price and brand.
SELECT product_name, selling_price, product_brand 
FROM Product 
WHERE status = 'active';

2.Show all categories.
SELECT * 
FROM Category;

3.Get customer details who live in Sylhet.
SELECT * 
FROM Customer 
WHERE cus_address LIKE '%Sylhet%';

4.List all orders with their status and total amount.
SELECT ord_id, ord_date, ord_total, order_status 
FROM Orders;

5.Show all payments made by bKash.
SELECT * 
FROM Payment 
WHERE pay_method = 'bKash';

--Filtering and Sorting

6.Find products cheaper than 1000 BDT.
SELECT product_name, selling_price 
FROM Product 
WHERE selling_price < 1000;

7.List customers ordered by their name alphabetically.
SELECT cus_name 
FROM Customer 
ORDER BY cus_name ASC;

8.Show last 5 orders by order date.
SELECT * 
FROM Orders 
ORDER BY ord_date DESC 
LIMIT 5;

9.Find payments that are still pending.
SELECT * 
FROM Payment 
WHERE pay_status = 'pending';

10.List top 3 most expensive products.
SELECT product_name, selling_price 
FROM Product 
ORDER BY selling_price DESC 
LIMIT 3;

--JOINS

11.List orders with customer name and order total.
SELECT o.ord_id, c.cus_name, o.ord_total
FROM Orders o
JOIN Customer c ON o.cus_id = c.cus_id;

12.Show sales with product name and customer name.
SELECT s.sale_date, p.product_name, c.cus_name, s.sale_quantity
FROM Sales s
JOIN Product p ON s.prod_id = p.prod_id
JOIN Customer c ON s.cus_id = c.cus_id;

13.Get delivery status with order description and customer address.
SELECT d.delivery_status, o.ord_description, c.cus_address
FROM Delivery d
JOIN Orders o ON d.ord_id = o.ord_id
JOIN Customer c ON d.cus_id = c.cus_id;

14.Show payments with order date and customer name.
SELECT p.pay_amount, p.pay_date, o.ord_date, c.cus_name
FROM Payment p
JOIN Orders o ON p.ord_id = o.ord_id
JOIN Customer c ON o.cus_id = c.cus_id;

15.Get stock quantities with product names.
SELECT p.product_name, s.stock_quantity
FROM Stock s
JOIN Product p ON s.prod_id = p.prod_id;
 
--Aggregation Queries

16.Count total number of customers.
SELECT COUNT(*) AS total_customers 
FROM Customer;

17.Sum of all sales quantity for each product.
SELECT p.product_name, SUM(s.sale_quantity) AS total_sold
FROM Sales s
JOIN Product p ON s.prod_id = p.prod_id
GROUP BY p.product_name;

18.Total sales amount from all orders.
SELECT SUM(ord_total) AS total_sales 
FROM Orders;

19.Average selling price of products per category.
SELECT c.cat_name, AVG(p.selling_price) AS avg_price
FROM Product p
JOIN Category c ON p.cat_id = c.cat_id
GROUP BY c.cat_name;

20.Number of orders per customer.
SELECT c.cus_name, COUNT(o.ord_id) AS orders_count
FROM Customer c
LEFT JOIN Orders o ON c.cus_id = o.cus_id
GROUP BY c.cus_name;

--Date and Conditional Queries

21.Orders placed after 2025-06-10.
SELECT * 
FROM Orders 
WHERE ord_date > '2025-06-10';

22.Payments that were made in June 2025.
SELECT * 
FROM Payment 
WHERE pay_date BETWEEN '2025-06-01' AND '2025-06-30';

23.Products that are out of stock (stock_quantity = 0).
SELECT p.product_name
FROM Product p
JOIN Stock s ON p.prod_id = s.prod_id
WHERE s.stock_quantity = 0;

24.Customers with orders that are delivered.
SELECT DISTINCT c.cus_name
FROM Customer c
JOIN Orders o ON c.cus_id = o.cus_id
WHERE o.order_status = 'delivered';

25.Products with price above average price.
SELECT product_name, selling_price
FROM Product
WHERE selling_price > (SELECT AVG(selling_price) FROM Product);

--Update & Delete 

26.Update order status to 'delivered' for order_id 3.
UPDATE Orders 
SET order_status = 'delivered'
WHERE ord_id = 3;

27.Delete cancelled orders from Orders table.
DELETE FROM Orders WHERE order_status = 'cancelled';

--Complex Queries

28.Find customers who have never placed any order.
SELECT c.cus_name
FROM Customer c
LEFT JOIN Orders o ON c.cus_id = o.cus_id
WHERE o.ord_id IS NULL;

29.Show top 3 customers by total order amount.
SELECT c.cus_name, SUM(o.ord_total) AS total_spent
FROM Customer c
JOIN Orders o ON c.cus_id = o.cus_id
GROUP BY c.cus_name
ORDER BY total_spent DESC
LIMIT 3;

30.Find products that have never been sold.
SELECT p.product_name
FROM Product p
LEFT JOIN Sales s ON p.prod_id = s.prod_id
WHERE s.sale_quantity IS NULL;








