--1. How many actors are there with the last name ‘Wahlberg’?
-- ans: 2 
SELECT last_name
FROM actor
WHERE last_name = 'Wahlberg';

--2. How many payments were made between $3.99 and $5.99?
--ans: 4764
SELECT COUNT(amount)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;

--3. What film does the store have the most of? (search in inventory)
--ans:  8 copies of Curtain Videotape
SELECT film_id, COUNT(film_id)
FROM inventory
GROUP BY film_id
ORDER BY COUNT(film_id) DESC;

SELECT title
FROM film
WHERE film_id = 200;

SELECT * FROM inventory;

--4. How many customers have the last name ‘William’?
--ans: 0
SELECT COUNT(last_name)
FROM customer
WHERE last_name = 'William';

--5. What store employee (get the id) sold the most rentals?
--ans: Employee 2 = 7304 > Employee 1 = 7294
SELECT COUNT(staff_id) FROM payment
WHERE staff_id = '2';

--6. How many different district names are there?
--ans: 378
SELECT COUNT(DISTINCT district)
FROM address;

--7. What film has the most actors in it? (use film_actor table and get film_id)
-- asn: film_id: 508 (Lambs Cincinatti)
SELECT film_id, count(film_id)
FROM film_actor 
GROUP BY film_id
ORDER BY COUNT DESC;

SELECT * FROM film
WHERE film_id = '508';


--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
--ans: 13
SELECT store_id, last_name
FROM customer
WHERE last_name LIKE '%es' 
AND store_id = '1';

--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)
--ans: this should work...
SELECT amount, rental_id, customer_id
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING rental_id > 250;

--10. Within the film table, how many rating categories are there? And what rating has the most
-- movies total?
-- ans:  5 categories, 223 movies belong to PG-13
SELECT rating
FROM film
GROUP BY rating;

SELECT rating, count(rating) FROM film
GROUP BY rating;

