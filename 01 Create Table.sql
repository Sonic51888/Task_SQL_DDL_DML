CREATE SCHEMA netology

    CREATE TABLE persons
    (
        name           VARCHAR(30) NOT NULL,
        surname        VARCHAR(30) NOT NULL,
        age            INTEGER     NOT NULL
            check (age between 16 and 110),
        phone_number   DOUBLE PRECISION UNIQUE
            check (length(phone_number::text) BETWEEN 11 AND 15),
        city_of_living VARCHAR(20),
        PRIMARY KEY (name, surname, age)
    );

INSERT INTO netology.persons(name, surname, age, phone_number, city_of_living)
VALUES ('Андрей', 'Крох', 30, 74692745456, 'Белгород'),
       ('Костя', 'Первак', 28, 79272502343, 'Шебекино'),
       ('Ира', 'Калашник', 33, 89998887766, 'Борисовка'),
       ('Александр', 'Балюк', 20, 89998887711, 'Moscow');
SELECT *
FROM netology.persons



