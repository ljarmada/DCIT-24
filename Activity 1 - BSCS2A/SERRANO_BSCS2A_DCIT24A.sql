-- Serrano, John Julius B. / BSCS-2A / DCIT24A

CREATE DATABASE IF NOT EXISTS library_db;
USE library_db;

DROP TABLE IF EXISTS Books;

CREATE TABLE Books (
	book_id INT AUTO_INCREMENT PRIMARY KEY,
	title VARCHAR(255) NOT NULL,
	author VARCHAR(255) NOT NULL,
	isbn VARCHAR(50) UNIQUE NOT NULL,
	genre VARCHAR(100),
	publisher VARCHAR(100),
	publication_year INT,
	language VARCHAR(50) DEFAULT 'English',
	description TEXT,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO Books (title, author, isbn, genre, publisher, publication_year, language, description) VALUES
('1984', 'George Orwell', '978-0451524935', 'Dystopian Fiction', 'Penguin Books', 1949, 'English', 'A dystopian novel about totalitarianism and surveillance'),
('Harry Potter and the Philosopher''s Stone', 'J.K. Rowling', '978-0439708180', 'Fantasy', 'Bloomsbury', 1997, 'English', 'First book in the Harry Potter series'),
('The Hobbit', 'J.R.R. Tolkien', '978-0547928227', 'Fantasy', 'Allen & Unwin', 1937, 'English', 'Fantasy novel about Bilbo Baggins adventure'),
('Murder on the Orient Express', 'Agatha Christie', '978-0062693662', 'Mystery', 'Collins Crime Club', 1934, 'English', 'Hercule Poirot investigates a murder on a train'),
('The Shining', 'Stephen King', '978-0307743657', 'Horror', 'Doubleday', 1977, 'English', 'A family heads to an isolated hotel for the winter'),
('To Kill a Mockingbird', 'Harper Lee', '978-0061120084', 'Fiction', 'J.B. Lippincott & Co.', 1960, 'English', 'Story of racial inequality and moral growth');

SELECT '=== ALL BOOKS ===' AS '';
SELECT * FROM Books;

SELECT '=== FANTASY BOOKS ===' AS '';
SELECT * FROM Books WHERE genre = 'Fantasy';

SELECT '=== BOOKS BY STEPHEN KING ===' AS '';
SELECT * FROM Books WHERE author LIKE '%King%';

SELECT '=== BOOK SUMMARIES ===' AS '';
SELECT book_id, title, author, genre FROM Books;

SELECT '=== BOOKS WITH "Harry" IN TITLE ===' AS '';
SELECT * FROM Books WHERE title LIKE '%Harry%';

UPDATE Books 
SET description = 'Classic dystopian novel about government surveillance and control' 
WHERE book_id = 1;

SELECT '=== UPDATED BOOK ===' AS '';
SELECT * FROM Books WHERE book_id = 1;

UPDATE Books 
SET genre = 'Science Fiction', language = 'English', publisher = 'New Publisher'
WHERE book_id = 1;

SELECT * FROM Books WHERE book_id = 1;

DELETE FROM Books WHERE book_id = 5;

SELECT '=== BOOKS AFTER DELETE ===' AS '';
SELECT book_id, title, author, genre FROM Books;

DELETE FROM Books WHERE publication_year < 1950;

