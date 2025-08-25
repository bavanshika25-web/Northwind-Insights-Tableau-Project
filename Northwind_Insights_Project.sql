

-- 1. Best-Selling Products (by Revenue)
SELECT 
    p.productName,
    ROUND(SUM(od.unitPrice * od.quantity * (1 - od.discount)), 2) AS revenue
FROM order_details od
JOIN products p ON od.productID = p.productID
GROUP BY p.productName
ORDER BY revenue DESC
LIMIT 10;

-- 2. Monthly Sales Trend
SELECT 
    SUBSTR(o.orderDate, 1, 7) AS month,
    ROUND(SUM(od.unitPrice * od.quantity * (1 - od.discount)), 2) AS monthly_sales
FROM orders o
JOIN order_details od ON o.orderID = od.orderID
GROUP BY month
ORDER BY month;

-- 3. Sales by Country
SELECT 
    c.country,
    ROUND(SUM(od.unitPrice * od.quantity * (1 - od.discount)), 2) AS country_revenue
FROM orders o
JOIN customers c ON o.customerID = c.customerID
JOIN order_details od ON o.orderID = od.orderID
GROUP BY c.country
ORDER BY country_revenue DESC;

-- 4. Orders Handled by Each Shipper
SELECT 
    s.companyName AS shipper,
    COUNT(o.orderID) AS total_orders
FROM orders o
JOIN shippers s ON o.shipperID = s.shipperID
GROUP BY s.companyName
ORDER BY total_orders DESC;

-- 5. Employee Performance: Orders Handled
SELECT 
    e.employeeName,
    COUNT(o.orderID) AS total_orders
FROM orders o
JOIN employees e ON o.employeeID = e.employeeID
GROUP BY e.employeeName
ORDER BY total_orders DESC;

-- 6. Low Stock Products
SELECT 
    productName,
    quantityPerUnit,
    unitPrice
FROM products
WHERE discontinued = '0'
ORDER BY unitPrice ASC
LIMIT 10;

-- 7. Average Order Value per Customer
SELECT 
    c.companyName,
    ROUND(AVG(od.unitPrice * od.quantity * (1 - od.discount)), 2) AS avg_order_value
FROM orders o
JOIN customers c ON o.customerID = c.customerID
JOIN order_details od ON o.orderID = od.orderID
GROUP BY c.companyName
ORDER BY avg_order_value DESC;

-- 8. Discontinued Products with High Past Sales
SELECT 
    p.productName,
    ROUND(SUM(od.unitPrice * od.quantity * (1 - od.discount)), 2) AS revenue
FROM order_details od
JOIN products p ON od.productID = p.productID
WHERE p.discontinued = '1'
GROUP BY p.productName
ORDER BY revenue DESC
LIMIT 5;

-- Top 3 KPIs calculations
-- 1. Top country by sales
SELECT c.Country, SUM(od.UnitPrice * od.Quantity) AS country_sales
FROM customers c
JOIN orders o ON c.CustomerID = o.CustomerID
JOIN order_details od ON o.OrderID = od.OrderID
GROUP BY c.Country
ORDER BY country_sales DESC
LIMIT 1;

-- 2. Total Revenue
SELECT ROUND(SUM(od.UnitPrice * od.Quantity), 2) AS total_revenue
FROM order_details od;

-- 3. Returning Customer Rate 

SELECT 
  ROUND((COUNT(*) - COUNT(DISTINCT CustomerID)) * 100.0 / COUNT(DISTINCT CustomerID), 2) AS returning_customer_rate_percent
FROM orders;










