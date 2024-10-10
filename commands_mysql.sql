/*
INTERVAL

BINARY, COLLATE

!

- (unary minus), ~ (unary bit inversion)

^

*, /, DIV, %, MOD

-,+

<<, >>

&

\|

= (comparison), <=>, >=, >, <=, <, <>, !=, IS, LIKE, REGEXP, IN, MEMBER OF

BETWEEN, CASE, WHEN, THEN, ELSE

NOT

AND, &&

XOR

OR, \|\|

= (assignment), :=
*/

SELECT city, city FROM city;

SELECT name FROM sakila.language;

SELECT * FROM  sakila.language WHERE name = 'English';

SELECT first_name FROM  actor WHERE actor_id = 4;

SELECT city FROM city WHERE country_id = 15;

SELECT city FROM city WHERE city_id < 5;

SELECT language_id, name FROM sakila.language
WHERE language_id != 2;

SELECT first_name FROM actor WHERE first_name < 'B';

SELECT title FROM film WHERE title LIKE '%family%';

SELECT title FROM film_list WHERE actors LIKE 'NAT_%';

SELECT title FROM film_list WHERE category LIKE 'Sci-fi' AND rating LIKE 'PG';

SELECT title FROM film_list WHERE  category LIKE 'Children' OR  category LIKE 'Family';

SELECT title FROM film_list WHERE (category LIKE 'Sci-fi' OR category LIKE 'Family') AND rating LIKE 'PG';

SELECT language_id, name FROM sakila.language WHERE NOT (language_id = 2);

SELECT fid, title FROM film_list WHERE FID < 7 AND NOT (FID = 4 OR FID = 6);

SELECT title
FROM film_list
WHERE price BETWEEN 2 AND 4
AND (category LIKE 'Documentary' OR category LIKE 'Horror')
AND actors LIKE '%BOB%';

SELECT title FROM film_list
WHERE price BETWEEN 2 AND 4
AND (category LIKE 'Documentary' OR category LIKE 'Horror')
AND actors LIKE '%GRIPA%';

SELECT name FROM customer_list
ORDER BY name
LIMIT 10;

SELECT address, last_update FROM  address
ORDER BY last_update LIMIT 5;

SELECT address, district FROM address
ORDER BY district, address;

SELECT address, district FROM address
ORDER BY district ASC, address DESC
LIMIT 10;

SELECT name FROM customer_list LIMIT 10;

SELECT name FROM customer_list
LIMIT 5, 5;

SELECT id, name FROM customer_list
ORDER BY id LIMIT 10;

SELECT id, name FROM customer_list
ORDER BY id LIMIT 10 OFFSET 5;

SELECT city, country FROM city INNER JOIN country
ON city.country_id = country.country_id
WHERE country.country_id > 5
ORDER BY country, city;

SELECT city, country FROM city
INNER JOIN country USING (country_id)
WHERE country.country_id < 5
ORDER BY country, city;

SELECT COUNT(1) FROM city INNER JOIN country
ON city.country_id = country.country_id
WHERE country.country_id = 49
ORDER BY country, city;

