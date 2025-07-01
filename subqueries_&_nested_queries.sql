use gauridb1;
--  1. Use Scalar and Correlated Subqueries :
-- 1. Show customers who made the highest payment
SELECT * FROM Customers
WHERE customer_id = (
    SELECT customer_id
    FROM Orders
    JOIN Payments ON Orders.order_id = Payments.order_id
    ORDER BY amount_paid DESC
    LIMIT 1
);
-- OR
SELECT COUNT(*) FROM Customers
WHERE customer_id = (
    SELECT customer_id
    FROM Orders
    JOIN Payments ON Orders.order_id = Payments.order_id
    ORDER BY amount_paid DESC
    LIMIT 1
);

-- 2. Show each order and the total payment of that customer

SELECT o.order_id,
       o.customer_id,
       (SELECT SUM(p.amount_paid)
        FROM Payments p
        JOIN Orders o2 ON o2.order_id = p.order_id
        WHERE o2.customer_id = o.customer_id) AS total_paid_by_customer
FROM Orders o;

-- 2. Use Subqueries with IN, EXISTS, and = :
-- 3. Show customers who have placed at least one order

SELECT * FROM Customers
WHERE customer_id IN (
    SELECT customer_id FROM Orders
);

-- 4. Show customers who have never placed an order

SELECT * FROM Customers
WHERE customer_id NOT IN (
    SELECT customer_id FROM Orders
);

-- 5. Show customers who made a payment

SELECT * FROM Customers c
WHERE EXISTS (
    SELECT 1 FROM Orders o
    JOIN Payments p ON o.order_id = p.order_id
    WHERE o.customer_id = c.customer_id
);

-- 6. Show orders that include a product with price > ₹20,000

SELECT * FROM OrderItems
WHERE product_id IN (
    SELECT product_id FROM Products WHERE price > 20000
);

