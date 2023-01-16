-- BASIC QUERY


-- SELECT all records from actor TABLE
SELECT *
FROM actor;

-- select *
-- FROM actor;

SELECT first_name, last_name FROM actor;
SELECT last_name, first_name FROM actor;

SELECT * 
FROM actor
WHERE first_name = 'Nick';


-- % acts as a wildcard

SELECT *
FROM actor
WHERE first_name LIKE 'N%'

-- _ acts as a single wildcard (string matching)

SELECT *
FROM actor
WHERE first_name LIKE 'K___%'

-- COMPARING OPERATORS

-- GREATER THAN >
-- LESS THAN <
-- GREATER OR EQUAL TO >=
-- LESS OR EQUAL TO ,=
-- NOT EQUAL <>

SELECT * 
FROM payment;

SELECT customer_id, amount
FROM payment
WHERE amount > 10.00;

SELECT * 
FROM payment
WHERE amount <> 4.99;

-- ASC is a scending order
-- DESC is Decending order
-- DISTINCT = the unque id 

SELECT customer_id, 
FROM payment
WHERE amount > 25.00
ORDER BY amount DESC;

SELECT first_name, last_name, email
FROM customer
WHERE customer_id = 341;

-- DISTINCT = the unque id 
-- FIND distinc customer (get rid of duplicates)
-- This gives us total amount

SELECT SUM(amount)
FROM payment
WHERE amount > 10.00

-- I want total for Each customer
SELECT SUM(amount), customer_id
FROM payment
WHERE amount > 10.00
GROUP BY customer_id;
ORDER BY SUM(amount) DESC;

-- different SQL aggregators
-- SUM(), AVG(), COUNT(), MIN(), MAX()

SELECT SUM(amount)
FROM payment
WHERE customer_id = 341;

SELECT AVG(amount)
FROM payment
WHERE amount > 5.99;

-- count means how many where there

SELECT COUNT(*)
FROM payment
WHERE amount > 5.99;

SELECT *
FROM payment

SELECT COUNT(DISTINCT amount)
FROM payment
WHERE amount > 5.99;

SELECT amount
FROM payment;

-- you can specfy because MIN could mean anything
SELECT MIN(amount) AS smallest_amount_paid
FROM payment;

SELECT MAX(amount) AS most_amount_paid
FROM payment;

-- Grouping by allow us to use column header as well as aggerget

SELECT customer_id, SUM(amount)
FROM payment
WHERE customer_id > 70 AND customer_id <80
GROUP BY customer_id;
HAVING SUM(amount) > 150
ORDER BY customer_id;

-- having comes after grouping

SELECT customer_id, SUM(amount)
FROM payment
WHERE customer_id between 70 AND 80
GROUP BY customer_id
HAVING SUM(amount) > 150
ORDER BY customer_id;
LIMIT 2
OFFSET 






