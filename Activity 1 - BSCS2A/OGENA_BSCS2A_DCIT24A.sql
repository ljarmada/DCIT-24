-- note: this file is can only run one time, remove some parts to avoid error after the first run 

-- Create Database and Select It for Use
CREATE DATABASE IF NOT EXISTS library_db; 
USE library_db;

-- Drop old tables (for re-running without errors)
DROP TABLE IF EXISTS books;
DROP TABLE IF EXISTS authors;
DROP TABLE IF EXISTS genres;

-- Create Authors Table
CREATE TABLE authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    author_name VARCHAR(255) NOT NULL 
);

-- Create Genres Table
CREATE TABLE genres (
    genre_id INT AUTO_INCREMENT PRIMARY KEY,
    genre_name VARCHAR(100) NOT NULL
);

-- Create Books Table
CREATE TABLE books (
    book_id INT AUTO_INCREMENT PRIMARY KEY, 
    title VARCHAR(255) NOT NULL,
    author_id INT,
    genre_id INT,
    isbn VARCHAR(20) UNIQUE,
    publisher VARCHAR(100),
    publication_year YEAR,
    language VARCHAR(50),
    description TEXT,
    FOREIGN KEY (author_id) REFERENCES authors(author_id),
    FOREIGN KEY (genre_id) REFERENCES genres(genre_id)
);

-- Insert Sample Authors (C - Create)
INSERT INTO authors (author_name) VALUES
('F. Scott Fitzgerald'),
('George Orwell'),
('Harper Lee'),
('J.R.R. Tolkien');

-- Insert Sample Genres (C - Create)
INSERT INTO genres (genre_name) VALUES
('Fiction'),
('Dystopian'),
('Classic'),
('Fantasy');

-- Insert Sample Books (C - Create)
INSERT INTO books (
    title,
    author_id,
    genre_id,
    isbn,
    publisher,
    publication_year,
    language,
    description
) VALUES
(
    'The Great Gatsby',
    1,
    1,
    '9780743273565',
    'Scribner',
    1925,
    'English',
    'A story about the Jazz Age and the American dream.'
),
(
    '1984',
    2,
    2,
    '9780451524935',
    'Secker & Warburg',
    1949,
    'English',
    'A dystopian novel about totalitarianism and surveillance.'
),
(
    'To Kill a Mockingbird',
    3,
    3,
    '9780061120084',
    'J.B. Lippincott & Co.',
    1960,
    'English',
    'A novel about racial injustice in the Deep South.'
),
(
    'The Hobbit',
    4,
    4,
    '9780547928227',
    'Allen & Unwin',
    1937,
    'English',
    'The prelude to The Lord of the Rings.'
);

-- R (Read - List Available Books)
SELECT 
    b.book_id,
    b.title,
    a.author_name AS author,
    g.genre_name AS genre,
    b.isbn,
    b.publisher,
    b.publication_year,
    b.language
FROM books b
JOIN authors a ON b.author_id = a.author_id
JOIN genres g ON b.genre_id = g.genre_id;

# note: the update and delete query won't be shown, repeat read query part to check result

-- U (Update - Example: Correct the publication year) 
UPDATE books
SET publication_year = 1926
WHERE title = 'The Great Gatsby';

-- D (Delete - Example: Remove The Hobbit and its author)
DELETE FROM books 
WHERE title = 'The Hobbit';

DELETE FROM authors
WHERE author_name = 'J.R.R. Tolkien';