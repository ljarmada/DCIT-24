#KABIGTING, ALTHEA NICOLE C.  BSCS-2A

#CREATE - Creating and inserting data into new tables and schema for database.

CREATE DATABASE LibraryDb;
USE LibraryDb;

CREATE TABLE books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    isbn VARCHAR(20) UNIQUE NOT NULL,
    genre VARCHAR(100),
    publisher VARCHAR(255),
    publication_year YEAR,
    language VARCHAR(50),
    description TEXT
);

# Tahereh Mafi's Shatter Me Series Data
INSERT INTO books (title, author, isbn, genre, publisher, publication_year, language, description)
VALUES
('Shatter Me', 'Tahereh Mafi', '9780062085504', 'Young Adult, Dystopian, Romance', 'HarperCollins', 2011, 'English', 'Juliette Ferrars has a lethal touch — one that can kill with a single contact. Her story begins with fear and isolation.'),
('Unravel Me', 'Tahereh Mafi', '9780062085535', 'Young Adult, Dystopian, Romance', 'HarperCollins', 2013, 'English', 'Juliette’s journey continues as she learns to harness her power and face a world in chaos.'),
('Ignite Me', 'Tahereh Mafi', '9780062085542', 'Young Adult, Dystopian, Romance', 'HarperCollins', 2014, 'English', 'Juliette rises from fear to leadership in this explosive conclusion to the original trilogy.');

#READ - Reading the data from the schemas and tables from database

SELECT * FROM books;
SELECT * FROM books WHERE title = 'Ignite Me';
SELECT * FROM books WHERE author LIKE '%Mafi%';

#UPDATE - Updating information in the database

UPDATE books
SET publisher = 'HarperTeen', publication_year = 2018
WHERE title = 'Shatter Me';

#DELETE - Deleting information in the database

DELETE FROM books
WHERE title = 'Ignite Me';  -- Example deletion

#ALTER TABLE - Adding new column and querying by status

ALTER TABLE books ADD COLUMN status ENUM('Available', 'Borrowed') DEFAULT 'Available';
SELECT * FROM books WHERE status = 'Available';
