-- Week 5 - Monday Questions
-- 1. How many actors are there with the last name ‘Wahlberg’?
There are 2 actors with last Wahlberg (Nick, and Daryl)
SELECT first_name, last_name
FROM actor
WHERE last_name = 'Wahlberg';

-- 2. How many payments were made between $3.99 and $5.99?
There are 4802 payments between $3.99 and $ 5.99
SELECT customer_id,amount
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;
-- 3. What film does the store have the most of? (search in inventory)
Zorro Ark
SELECT film_id, title
FROM film
ORDER BY title DESC



-- 4. How many customers have the last name ‘William’?
The are 0 williams
SELECT *
FROM customer
WHERE last_name LIKE 'W___';

-- 5. What store employee (get the id) sold the most rentals?

SELECT staff_id 
FROM payment
WHERE customer_id

-- 6. How many different district names are there?
-- 378 districts
SELECT COUNT(DISTINCT district)
From address

-- 7. What film has the most actors in it? (use film_actor table and get film_id)
-- Lambs cincinatti
SELECT film.title, COUNT(*) AS ct
FROM film_actor
JOIN film ON film.film_id = film_actor.film_id
GROUP BY film.title
ORDER BY ct DESC
-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
-- 13
SELECT *
FROM customer
WHERE last_name LIKE '%es' And store_id =1

-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)
-- 3 PAYMENTS
SELECT amount, COUNT(*)
FROM payment
WHERE customer_id between 380 and 430
GROUP BY amount
HAVING COUNT(*) > 250


-- 10. Within the film table, how many rating categories are there? And what rating has the most
-- movies total?
-- There 5 ratings, and PG13 has the most rating 
SELECT rating, COUNT(*)
FROM film
GROUP BY rating


