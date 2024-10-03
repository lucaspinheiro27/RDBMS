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
