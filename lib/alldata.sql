
CREATE TABLE series (
  id INTEGER PRIMARY KEY,
  title TEXT,
  author_id INTEGER,
  subgenre_id INTEGER
);

CREATE TABLE subgenres (
    id INTEGER PRIMARY KEY,
    name TEXT
);

CREATE TABLE authors (
    id INTEGER PRIMARY KEY,
    name TEXT
);

CREATE TABLE books (
    id INTEGER PRIMARY KEY, 
    title TEXT, 
    year INTEGER,
    series_id INTEGER
);

CREATE TABLE characters (
    id INTEGER PRIMARY KEY,
    name TEXT,
    motto TEXT,
    species TEXT,
    author_id INTEGER
);

CREATE TABLE character_books (
    id INTEGER PRIMARY KEY,
    book_id INTEGER,
    character_id INTEGER
);

INSERT INTO series (id, title, author_id, subgenre_id) 
VALUES (1, "The Dark Tower", 1, 1), (2, "The Under", 2, 2);

INSERT INTO subgenres (id, name)
VALUES (1, "Horror Fantasy"),
(2, "Syfy Culinary");

INSERT INTO authors (id, name) VALUES (1, "Stephen King"),
(2, "Johnathan Stunanz");

INSERT INTO books (id, title, year, series_id)
VALUES
(1, "The Gunslinger", 1981, 1),
(2, "The Drawing of the Three", 1984, 1),
(3, "The Waste Lands", 1988, 1),
(4, "Fromage!", 2010, 2),
(5, "Fugatz!", 2012, 2),
(6, "Fromunda!", 2017, 2);

INSERT INTO characters (id, name, motto, species, author_id) VALUES (1, "Roland", "Ka is a Wheel", "Human", 1),
(2, "Eddie Dean", "I aim with my heart.", "Human", 1),
(3, "Tick Tock Man", "Blow it up!", "Mutie", 1),
(4, "Blaine", "Blaine is a Pain.", "Train", 1),
(5, "Roy Firestone", "The heat is on!", "Human", 2),
(6, "Chalmers", "Wanna dance?", "Smoothie", 2),
(7, "The Roll", "Push the pedal.", "Human", 2),
(8, "Oldi-Won", "I'll eat that.", "Unknown", 2);

INSERT INTO character_books (id, book_id, character_id)
VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 1, 2),
(5, 2, 2),
(6, 3, 2),
(7, 2, 3),
(8, 3, 4),
(9, 4, 7),
(10, 5, 7),
(11, 6, 7),
(12, 4, 8),
(13, 5, 8),
(14, 6, 8),
(15, 6, 5),
(16, 4, 6);

UPDATE characters SET species = "Martian" WHERE species = "Unknown";
.headers on
.mode column
.width auto