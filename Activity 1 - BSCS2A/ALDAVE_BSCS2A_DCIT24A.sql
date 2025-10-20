# Nathaniel P. Aldave BSCS2A
# CREATE - Creating and inserting data into new Schemas and tables for Database
CREATE DATABASE LibraryDB;
USE LibraryDB;

CREATE TABLE Books 
	(book_id INT AUTO_INCREMENT PRIMARY KEY,
	title VARCHAR(255) NOT NULL,
	authors VARCHAR(255) NOT NULL,
	isbn VARCHAR(20) UNIQUE NOT NULL,
	genre VARCHAR(100),
	publisher VARCHAR(150),
	publication_year SMALLINT,
	language VARCHAR(50),
	description TEXT);

INSERT INTO Books 
	(title, authors, isbn, genre, publisher, publication_year, language, description)
VALUES 
	('Pride and Prejudice', 'Jane Austen', '9780141439518', 'Romance', 'Penguin Classics', 1813, 'English', 'A witty exploration of love, class, and social expectations in 19th-century England.'),
	('The Alchemist', 'Paulo Coelho', '9780062315007', 'Adventure / Philosophy', 'HarperOne', 1988, 'Portuguese', 'A philosophical tale about following one’s dreams and discovering destiny.'),
	('El Filibusterismo', 'José Rizal', '9789715507100', 'Historical Fiction', 'Bertrand', 1891, 'Tagalog', 'A continuation of Noli Me Tangere, depicting revenge and revolution under Spanish colonial rule.');

# READ - Reading the data from the schemas, tables from the database
SELECT * FROM Books;
SELECT title, authors, publisher FROM Books WHERE book_id = 2;

# UPDATE - Updating details that were already in the database
UPDATE Books 
SET title = 'Pride and Prejudice (Illustrated Edition)', 
    publisher = 'Oxford University Press', 
    publication_year = 2021
WHERE book_id = 1;

# DELETE - Deleting details in the database
DELETE FROM Books WHERE book_id = 3;

# READ AGAIN - To verify the remaining data after deletion
SELECT * FROM Books;
