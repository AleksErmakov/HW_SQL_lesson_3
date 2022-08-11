--1. название и год выхода альбомов, вышедших в 2022 году

SELECT name, release_date FROM album
WHERE release_date = 2022;

--2. название и продолжительность самого длительного трека

SELECT name, duration FROM track 
WHERE duration = (SELECT MAX(duration) FROM track);

--3. название треков, продолжительность которых не менее 3,5 минуты

SELECT name FROM track
WHERE duration >= 210;

--4. названия сборников, вышедших в период с 2018 по 2020 год включительно

SELECT name FROM collection
WHERE release_date BETWEEN 2018 AND 2020;

--5. исполнители, чье имя состоит из 1 слова

SELECT name_alias FROM artist
WHERE name_alias not like '% %';

--6. название треков, которые содержат слово "мой"/"my"

SELECT name FROM track
WHERE name LIKE '%My%';