# Lab | SQL Queries 7
# 1. In the table actor, which are the actors whose last names are not repeated? 
select * from sakila.actor;
SELECT last_name, count(last_name)
FROM sakila.actor
group by last_name
HAVING count(last_name)=1;

#2. Which last names appear more than once? We would use the same logic as in the previous question but this time we want to include the last names of the actors where the last name was present more than once
select * from sakila.actor;
SELECT last_name, count(last_name)
FROM sakila.actor
group by last_name
HAVING count(last_name)>1;

#3. Using the rental table, find out how many rentals were processed by each employee.
select * from sakila.rental;
select staff_id, count(rental_id)
from sakila.rental
group by staff_id;

# 4. Using the film table, find out how many films were released each year.
select * from sakila.film;
select release_year, count(film_id)
from sakila.film
group by release_year;

#5. Using the film table, find out for each rating how many films were there.
select * from sakila.film;
select rating, count(film_id)
from sakila.film
group by rating;

#6. What is the mean length of the film for each rating type. Round off the average lengths to two decimal places
select rating, round(avg(length),2)
from sakila.film
group by rating;

#7. Which kind of movies (rating) have a mean duration of more than two hours?
select rating, round(avg(length),2)
from sakila.film
group by rating
HAVING round(avg(length),2)>120;


