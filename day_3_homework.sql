-- Week 5 - Wednesday
-- Questions

-- 1. List all customers who live in Texas (use JOINs)
-- ANSWER: 5 customers

SELECT first_name, last_name, district
FROM customer
FULL JOIN address
ON customer.address_id = address.address_id
WHERE district = 'Texas';


-- 2. Get all payments above $6.99 with the Customer's Full Name
-- ANSWER: 1406 total custmers

SELECT first_name, last_name, amount
FROM payment
FULL JOIN customer 
ON customer.customer_id = payment.customer_id
WHERE amount > 6.99;


-- 3. Show all customers names who have made payments over $175(use subqueries)
-- ANSWER: 6 customers

SELECT first_name, last_name
FROM customer
WHERE customer_id IN(
	SELECT customer_id
	FROM PAYMENT
	GROUP BY customer_id
	HAVING SUM(amount) > 175
);

-- 4. List all customers that live in Nepal (use the city table)
-- ANSWER: Good 'ol Kevin Schuler from Nepal!

SELECT first_name, last_name, country
FROM customer
FULL JOIN address
ON customer.address_id = address.address_id
FULL JOIN city
ON address.city_id = city.city_id
FULL JOIN country
ON country.country_id = city.country_id
WHERE country = 'Nepal';

-- 5. Which staff member had the most transactions?
-- ANSWER: Mike Hillyer

SELECT first_name, last_name, count(rental_id)
FROM staff
FULL JOIN rental
ON rental.staff_id = staff.staff_id
GROUP BY first_name, last_name;

-- 6. How many movies of each rating are there?
-- ANSWER: pg-13: 223, nc-17: 210, r: 195, pg: 194, g: 178

SELECT rating, COUNT(rating)
FROM film
GROUP BY rating
ORDER BY COUNT(rating) DESC;

-- 7.Show all customers who have made a single payment above $6.99 (Use Subqueries)
-- ANSWER: 130 customers???

SELECT first_name, last_name
FROM customer 
WHERE customer_id IN(
	SELECT customer_id
	FROM payment
	WHERE amount > 6.99
	GROUP BY customer_id
	HAVING COUNT(amount) = 1
	);


-- 8. How many free rentals did our stores five away?
-- ANSWER: 24

SELECT amount, count(amount)
FROM payment
WHERE amount = 0
GROUP BY amount;
