DROP DATABASE humanfriends;
CREATE DATABASE humanfriends;
USE humanfriends;

-- Создать таблицы, соответствующие иерархии из вашей диаграммы классов.

CREATE TABLE animals (
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
animal_name VARCHAR(20),
breed VARCHAR(20),
coat VARCHAR(20),
animal_class VARCHAR(20),
animal_type VARCHAR(20),
commands VARCHAR(100),
birthday DATE
); 

CREATE TABLE pets(
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
animal_name VARCHAR(20),
breed VARCHAR(20),
coat VARCHAR(20),
animal_class VARCHAR(20),
animal_type VARCHAR(20),
commands VARCHAR(100),
birthday DATE
); 

CREATE TABLE dogs(
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
animal_name VARCHAR(20),
breed VARCHAR(20),
coat VARCHAR(20),
animal_class VARCHAR(20),
animal_type VARCHAR(20),
commands VARCHAR(100),
birthday DATE
); 

CREATE TABLE cats(
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
animal_name VARCHAR(20),
breed VARCHAR(20),
coat VARCHAR(20),
animal_class VARCHAR(20),
animal_type VARCHAR(20),
commands VARCHAR(100),
birthday DATE
); 

CREATE TABLE hamsters(
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
animal_name VARCHAR(20),
breed VARCHAR(20),
coat VARCHAR(20),
animal_class VARCHAR(20),
animal_type VARCHAR(20),
commands VARCHAR(100),
birthday DATE
);

CREATE TABLE packanimals(
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
animal_name VARCHAR(20),
breed VARCHAR(20),
coat VARCHAR(20),
animal_class VARCHAR(20),
animal_type VARCHAR(20),
commands VARCHAR(100),
birthday DATE
);

CREATE TABLE horses(
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
animal_name VARCHAR(20),
breed VARCHAR(20),
coat VARCHAR(20),
animal_class VARCHAR(20),
animal_type VARCHAR(20),
commands VARCHAR(100),
birthday DATE
); 

CREATE TABLE camels(
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
animal_name VARCHAR(20),
breed VARCHAR(20),
coat VARCHAR(20),
animal_class VARCHAR(20),
animal_type VARCHAR(20),
commands VARCHAR(100),
birthday DATE
); 

CREATE TABLE donkeys(
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
animal_name VARCHAR(20),
breed VARCHAR(20),
coat VARCHAR(20),
animal_class VARCHAR(20),
animal_type VARCHAR(20),
commands VARCHAR(100),
birthday DATE
); 

-- Заполнить таблицы данными о животных, их командах и датами рождения.

INSERT INTO dogs (animal_name, breed, coat, animal_class, animal_type, commands, birthday)
VALUES
('Spot', 'Rottweiler', 'Black', 'Pet', 'Dog', 'Sit, Roll Over, Lay', '2023-03-04'),
('Fido', 'Fox Terrier', 'White/Brown', 'Pet', 'Dog', 'Sit, Bark', '2020-05-31'),
('Rex', 'Airedale Terrier', 'Brown/Black', 'Pet', 'Dog', 'Sit, Stay', '2018-02-20' );

INSERT INTO cats (animal_name, breed, coat, animal_class, animal_type, commands, birthday)
VALUES
('Fluffy', 'Maine Coon', 'Solid Red', 'Pet', 'Cat', 'Sit', '2021-07-02'),
('Butterscotch', 'Abyssinian', 'Brown', 'Pet', 'Cat', 'Sit, Jump', '2023-01-31'),
('Vasya', 'Russian Blue', 'Gray', 'Pet', 'Cat', 'Stay',  '2014-08-02' );

INSERT INTO hamsters (animal_name, breed, coat, animal_class, animal_type, commands, birthday)
VALUES
('Meep', 'Djungarian', 'Gray', 'Pet', 'Hamster', 'Jump', '2023-02-03'),
('Beep', 'Golden', 'Brown', 'Pet', 'Hamster', 'Stand, Jump', '2024-01-31'),
('Peep', 'Campbell', 'Gray', 'Pet', 'Hamster', 'Stand, Jump, Run Circles', '2024-03-02' );

INSERT INTO horses (animal_name, breed, coat, animal_class, animal_type, commands, birthday)
VALUES
('Applejack', 'Appalosa', 'Brown', 'Pack Animal', 'Horse', 'Trot, Gallop, Canter, Stay', '2013-07-23'),
('Rarity', 'White Thoroughbred', 'White', 'Pack Animal', 'Horse', 'Stay, Canter', '2020-07-21'),
('Sunset Shimmer', 'Red Roan', 'Brown', 'Pack Animal', 'Horse', 'Trot, Gallop', '2024-01-04');

INSERT INTO camels (animal_name, breed, coat, animal_class, animal_type, commands, birthday)
VALUES
('Usul', 'Kharai', 'Brown', 'Pack Animal', 'Camel', 'Gallop, Canter, Stay', '2013-07-23'),
('Gurney', 'Targui', 'Brown', 'Pack Animal','Camel', 'Stay', '2020-07-21'),
('Shaddam', 'Majaheem', 'Black', 'Pack Animal','Camel', 'Trot, Gallop', '2024-01-04');

INSERT INTO donkeys (animal_name, breed, coat, animal_class, animal_type, commands, birthday)
VALUES
('Jack', 'Cotentin', 'Brown', 'Pack Animal', 'Donkey', 'Gallop, Canter, Stay', '1999-01-01'),
('Jenny', 'Hinny', 'Gray', 'Pack Animal', 'Donkey', 'Stay', '2023-02-11'),
('Crazy', 'Teamster', 'White', 'Pack Animal', 'Donkey', 'Trot, Gallop', '2001-04-15');

SELECT * FROM dogs;
SELECT * FROM cats;
SELECT * FROM hamsters;
SELECT * FROM horses;
SELECT * FROM camels;
SELECT * FROM donkeys;

INSERT INTO pets (animal_name, breed, coat, animal_class, animal_type, commands, birthday)
SELECT animal_name, breed, coat, animal_class, animal_type, commands, birthday
FROM dogs;

INSERT INTO pets (animal_name, breed, coat, animal_class, animal_type, commands, birthday)
SELECT animal_name, breed, coat, animal_class, animal_type, commands, birthday
FROM cats;

INSERT INTO pets (animal_name, breed, coat, animal_class, animal_type, commands, birthday)
SELECT animal_name, breed, coat, animal_class, animal_type, commands, birthday
FROM hamsters;


INSERT INTO packanimals (animal_name, breed, coat, animal_class, animal_type, commands, birthday)
SELECT animal_name, breed, coat, animal_class, animal_type, commands, birthday
FROM horses;

INSERT INTO packanimals (animal_name, breed, coat, animal_class, animal_type, commands, birthday)
SELECT animal_name, breed, coat, animal_class, animal_type, commands, birthday
FROM camels;

INSERT INTO packanimals (animal_name, breed, coat, animal_class, animal_type, commands, birthday)
SELECT animal_name, breed, coat, animal_class, animal_type, commands, birthday
FROM donkeys;


INSERT INTO animals (animal_name, breed, coat, animal_class, animal_type, commands, birthday)
SELECT animal_name, breed, coat, animal_class, animal_type, commands, birthday 
FROM pets;

INSERT INTO animals (animal_name, breed, coat, animal_class, animal_type, commands, birthday)
SELECT animal_name, breed, coat, animal_class, animal_type, commands, birthday
FROM packanimals;


-- Удалить записи о верблюдах и объединить таблицы лошадей и ослов.

TRUNCATE TABLE camels;
DELETE FROM animals WHERE animal_type='Camel';

CREATE TABLE ungulates AS
SELECT * FROM horses
UNION
SELECT * FROM donkeys;


-- Создать новую таблицу для животных в возрасте от 1 до 3 лет и вычислить их возраст с точностью до месяца.

CREATE TABLE animal_age AS
SELECT * FROM animals
WHERE birthday BETWEEN '2021-04-30' AND '2023-04-30';


-- Объединить все созданные таблицы в одну, сохраняя информацию о принадлежности к исходным таблицам.

CREATE TABLE moat AS
SELECT * FROM animals
UNION 
SELECT * FROM animal_age;
