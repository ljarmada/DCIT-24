-- Beltran, Gerard Dustin M. / BSCS-2A / DCIT24A
DROP DATABASE IF EXISTS library_db;
CREATE DATABASE library_db;
USE library_db;

CREATE TABLE publishers (
    publisher_id INT AUTO_INCREMENT PRIMARY KEY,
    publisher_name VARCHAR(100) NOT NULL
);

CREATE TABLE genres (
    genre_id INT AUTO_INCREMENT PRIMARY KEY,
    genre_name VARCHAR(50) NOT NULL
);

CREATE TABLE authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    author_name VARCHAR(100) NOT NULL
);

CREATE TABLE books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    isbn VARCHAR(20) UNIQUE,
    publisher_id INT,
    genre_id INT,
    publication_year INT,
    language VARCHAR(50),
    description TEXT,
    FOREIGN KEY (publisher_id) REFERENCES publishers(publisher_id),
    FOREIGN KEY (genre_id) REFERENCES genres(genre_id)
);

CREATE TABLE book_authors (
    book_id INT,
    author_id INT,
    PRIMARY KEY (book_id, author_id),
    FOREIGN KEY (book_id) REFERENCES books(book_id) ON DELETE CASCADE,
    FOREIGN KEY (author_id) REFERENCES authors(author_id) ON DELETE CASCADE
);

INSERT INTO publishers (publisher_name)
VALUES 
('HarperCollins'),
('Doubleday'),
('HarperOne'),
('Little, Brown and Company'),
('T. Egerton');

INSERT INTO genres (genre_name)
VALUES 
('Fantasy'),
('Mystery Thriller'),
('Fiction'),
('Classic Literature'),
('Romance');

INSERT INTO authors (author_name)
VALUES 
('J.R.R. Tolkien'),
('Dan Brown'),
('Paulo Coelho'),
('J.D. Salinger'),
('Jane Austen');

INSERT INTO books (title, isbn, publisher_id, genre_id, publication_year, language, description)
VALUES 
('The Hobbit', '9780547928227', 1, 1, 1937, 'English', 'A fantasy novel about the journey of Bilbo Baggins.'),
('The Da Vinci Code', '9780385504201', 2, 2, 2003, 'English', 'A mystery thriller that follows symbologist Robert Langdon.'),
('The Alchemist', '9780061122415', 3, 3, 1988, 'English', 'A story about a shepherd named Santiago and his dream of treasure.'),
('The Catcher in the Rye', '9780316769488', 4, 4, 1951, 'English', 'A story of teenage angst and alienation through Holden Caulfield.'),
('Pride and Prejudice', '9780141439518', 5, 5, 1813, 'English', 'A romantic novel that explores manners, upbringing, and marriage.');

INSERT INTO book_authors (book_id, author_id)
VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

SELECT 
    b.book_id,
    b.title,
    GROUP_CONCAT(a.author_name SEPARATOR ', ') AS authors,
    b.isbn,
    g.genre_name AS genre,
    p.publisher_name AS publisher,
    b.publication_year,
    b.language,
    b.description
FROM books b
LEFT JOIN book_authors ba ON b.book_id = ba.book_id
LEFT JOIN authors a ON ba.author_id = a.author_id
LEFT JOIN genres g ON b.genre_id = g.genre_id
LEFT JOIN publishers p ON b.publisher_id = p.publisher_id
GROUP BY b.book_id;

UPDATE books
SET title = 'The Hobbit: Revised Edition',
    publication_year = 1938
WHERE book_id = 1;

DELETE FROM books
WHERE book_id = 2;
