SHOW COLUMNS FROM language;

INSERT INTO language VALUES (NULL, 'Portuguese', NOW());

SELECT MAX(language_id) FROM language;

INSERT INTO language VALUES (8, 'Russian', '2020-09-26 10:35:00');

SELECT * FROM language;

INSERT INTO language VALUES (8, 'Arabic', '2020-09-26 10:35:00');

INSERT IGNORE INTO language VALUES (8, 'Arabic', '2020-09-26 10:35:00');

INSERT INTO language VALUES (NULL, 'Spanish', NOW()),
                            (NULL, 'Hebrew', NOW());

INSERT IGNORE INTO language VALUES (9, 'Portuguese', NOW()),
                                   (11, 'Hebrew', NOW());

INSERT INTO actor (actor_id, first_name, last_name, last_update)
VALUES (NULL, 'Vinicius', 'Grippa', NOW());

DESC city;

INSERT INTO city (city, country_id) VALUES ('Bebedouro', 19);

SELECT * FROM city WHERE city LIKE 'Bebedouro';

INSERT INTO city (city, country_id) VALUES
                                        ('Sao Carlos', 19),
                                        ('Araraquara', 19),
                                        ('Ribeirao Preto', 19);

INSERT INTO country VALUES (NULL, 'Uruguay', DEFAULT);

INSERT INTO country SET country_id=NULL,
                        country='Bahamas', last_update=NOW();

DELETE FROM rental;

SELECT  * FROM rental;

DELETE FROM language;

