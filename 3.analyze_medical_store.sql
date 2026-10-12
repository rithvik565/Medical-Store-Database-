use medical_store;

-- 1. What are the top 5 bestselling medicines by quantity sold?
SELECT medicine_id, SUM(quantity) AS total_sold
FROM sale_items
GROUP BY medicine_id
ORDER BY total_sold DESC
LIMIT 5;


-- 2. Who are your top 3 suppliers based on total purchase value?
SELECT supplier_id, SUM(total_amount) AS total_purchased
FROM purchases
GROUP BY supplier_id
ORDER BY total_purchased DESC
LIMIT 3;


-- 3. Which medicines have a stock quantity of 50 or less?
SELECT medicine_id, name, stock_quantity, expiry_date
FROM medicines
WHERE stock_quantity <= 50;

-- 4. What is the average order value from customers?
SELECT AVG(total_amount) AS average_order_value
FROM sales;

-- 5. Which employee has generated the highest sales revenue?
SELECT employee_id, SUM(total_amount) AS total_revenue
FROM sales
GROUP BY employee_id
ORDER BY total_revenue DESC
LIMIT 1;

-- 6. What are the most common payment methods used by customers?
SELECT method as payment_method, COUNT(*) AS usage_count
FROM payments
GROUP BY payment_method
ORDER BY usage_count DESC;

-- 7. What is the monthly revenue trend for the current year?
SELECT MONTH(sale_date) AS month, SUM(total_amount) AS monthly_revenue
FROM sales
WHERE YEAR(sale_date) = 2026
GROUP BY month
ORDER BY month

