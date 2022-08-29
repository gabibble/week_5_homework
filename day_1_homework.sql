-- Week 5 - Monday Questions
-- Julia G

-- 1. How many actors are there with the last name ‘Wahlberg’?
-- Answer = 2
SELECT COUNT(last_name)
FROM actor
WHERE last_name LIKE 'Wahlberg';


-- 2. How many payments were made between $3.99 and $5.99?
-- ANSWER = 7250
SELECT COUNT(amount)
FROM payment
WHERE amount BETWEEN 3.99 AND 7.99;


-- 3. What film does the store have the most of? (search in inventory)
-- ANSWER = There are 72 titles tied, with 8 each
SELECT film_id, COUNT(film_id)
FROM inventory
GROUP BY film_id
ORDER BY COUNT(film_id) DESC;
		
		
-- 4. How many customers have the last name ‘William’?
-- ANSWER = 0
SELECT COUNT(last_name)
FROM customer
WHERE last_name LIKE 'William';


-- 5. What store employee (get the id) sold the most rentals?
-- ANSWER = Staff member with ID 1 sold 8040 rentals
SELECT staff_id, COUNT(staff_id)
FROM rental
GROUP BY staff_id;


-- 6. How many different district names are there?
-- ANSWER = 378
SELECT COUNT(DISTINCT district)
FROM address;


-- 7. What film has the most actors in it? (use film_actor table and get film_id)
-- ANSWER = film 508, 'Lamb Cincinatti,' has 15 actors in it. 
SELECT film_id, COUNT(film_id)
FROM film_actor
GROUP BY film_id
ORDER BY COUNT(film_id) DESC;

SELECT title, film_id
FROM film
WHERE film_id = 508;


-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
-- ANSWER = 13
SELECT count(last_name)
FROM customer
WHERE last_name LIKE '%es' AND store_id = 1;


-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)
-- ANSWER = 3 (2.99, 4.99 and .99)

SELECT *
FROM payment;

SELECT amount, COUNT(amount)
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING COUNT(amount) > 250;


-- 10. Within the film table, how many rating categories are there? And what rating has the most
-- movies total?
-- ANSWER = 5 rating categories. The rating with the most is PG-13 (223 movies)

SELECT COUNT(DISTINCT rating)
FROM film;

SELECT rating, COUNT(rating)
FROM film
GROUP BY rating
ORDER BY COUNT(rating) DESC;

