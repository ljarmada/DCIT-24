# Create and use database for library management system

--
CREATE DATABASE LibraryDatabase;
USE LibraryDatabase;

-- Authors table
CREATE TABLE authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

-- Genres table
CREATE TABLE genres (
    genre_id INT AUTO_INCREMENT PRIMARY KEY,
    genre_name VARCHAR(255) NOT NULL
);

-- Company/Publisher table
CREATE TABLE company (
    company_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

-- Books table
CREATE TABLE books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    isbn VARCHAR(20) UNIQUE,
    author_id INT,
    genre_id INT,
    publisher_id INT,
    publication_year INT,
    language VARCHAR(50),
    description TEXT,
    FOREIGN KEY (genre_id) REFERENCES genres(genre_id) ON DELETE SET NULL,
    FOREIGN KEY (author_id) REFERENCES authors(author_id) ON DELETE SET NULL,
    FOREIGN KEY (publisher_id) REFERENCES company(company_id) ON DELETE SET NULL
);

--Insert authors
INSERT INTO authors (name) VALUES 
('J.K. Rowling'),
('George Orwell'),
('J.R.R. Tolkien');

--Insert genres
INSERT INTO genres (genre_name) VALUES 
('Fantasy'),
('Dystopian'),
('Science Fiction');

--Insert company
INSERT INTO company (name) VALUES
('Bloomsbury'),
('Penguin Books'),
('HarperCollins');

INSERT INTO books (title, isbn, author_id, genre_id, publisher_id, publication_year, language, description)
VALUES
('Harry Potter and the Philosopher''s Stone', '978-0747532699', 1, 1, 1, 1997, 'English', 'The first book in the Harry Potter series.'),
('1984', '978-0451524935', 2, 2, 2, 1949, 'English', 'Dystopian novel by George Orwell.'),
('The Hobbit', '978-0261103344', 3, 1, 3, 1937, 'English', 'Fantasy novel by J.R.R. Tolkien.'),
('Harry Potter and the Chamber of Secrets', '978-0747538493', 1, 1, 1, 1998, 'English', 'Second book in the Harry Potter series.'),
('Animal Farm', '978-0451526342', 2, 2, 2, 1945, 'English', 'Political allegory by George Orwell.');

SELECT   
    b.book_id,
    b.title,
    b.isbn,
    a.name AS author,	
    g.genre_name AS genre,
    c.name AS publisher,
    b.publication_year,
    b.language,
    b.description
from books b
LEFT JOIN authors a ON b.author_id = a.author_id
LEFT JOIN genres g ON b.genre_id = g.genre_id
LEFT JOIN company c ON b.publisher_id = c.company_id;