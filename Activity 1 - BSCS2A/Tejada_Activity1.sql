# Tejada, Joshua Gabriel S.| BSCS - 2A
#CREATE - Creating and inserting data into new Schemas and tables for Database
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
	('The Great Gatsby', 'F. Scott Fitzgerald', '9780743273565', 'Fiction', 'Scribner', 1925, 'English', 'A novel about the mysterious millionaire Jay Gatsby and his obsession with Daisy Buchanan.'),
	('To Kill a Mockingbird', 'Harper Lee', '9780061120084', 'Fiction', 'J.B. Lippincott & Co.', 1960, 'English', 'A story of racial injustice and childhood in the American South.'),
	('Noli Me Tangere', 'José Rizal', '9789715507063', 'Historical Fiction', 'Bertrand', 1887, 'Tagalog', 'A novel exposing the social cancer of Spanish colonial rule in the Philippines.');
#READ - Reading the data from the schemas, tables from the database
SELECT * FROM Books;
SELECT title, authors, publisher FROM Books WHERE book_id = 2;

#UPDATE - Updating details that were already in the database
UPDATE Books 
SET title = 'The Great Gatsby (Updated Edition)', 
    publisher = 'Penguin Classics', 
    publication_year = 2020
WHERE book_id = 1;

#DELETE - Deleting details in the database
DELETE FROM Books WHERE book_id = 3;

#READ AGAIN - To verify the remaining data after deletion
SELECT * FROM Books;
