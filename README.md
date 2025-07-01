# subqueries_-nested_queries

# 🔍 Advanced SQL Queries: Subqueries Practice

This section demonstrates the use of **scalar**, **correlated**, and **set-based subqueries** to extract complex insights from a relational database.

## 🧠 Subquery Types Covered

### 1. Scalar Subqueries
- Returns a **single value**.
- Used in `WHERE`, `SELECT`, or `HAVING` clauses.
- Example use: Finding customers who made the highest payment.

### 2. Correlated Subqueries
- Uses data from the outer query.
- Runs **once per row** of the outer query.
- Example use: Calculating total amount paid by the same customer in another table.

### 3. Subqueries with `IN`, `EXISTS`, `=`
- `IN`: Used to match values in a list returned by a subquery.
- `EXISTS`: Checks if a subquery returns **any** row.
- `=`: When comparing to a scalar subquery result.

## 📌 Sample Use Cases

- Fetch customers who have placed orders using `IN`.
- Identify customers who never ordered using `NOT IN`.
- Show orders for high-value products using subqueries with `IN`.
- Use `EXISTS` to filter customers based on whether they have made a payment.
- Use correlated subqueries to dynamically compute values like total paid per customer.

## ✅ Outcome

By practicing these subqueries, the following advanced SQL logic skills were developed:
- Writing dynamic filters based on subquery results.
- Understanding query nesting and performance.
- Solving business questions involving multi-level logic.

These skills are essential for roles in data analysis, reporting, and backend logic design.

