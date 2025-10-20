----------------------------------------------------------------------------------
1. DATABASE SETUP AND TABLE CREATION (3 TABLES)
----------------------------------------------------------------------------------

DROP DATABASE IF EXISTS Philippine_Library_Catalog;
CREATE DATABASE Philippine_Library_Catalog;
USE Philippine_Library_Catalog;

# Table 1: Authors (Stores unique author names)
CREATE TABLE Authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    author_name VARCHAR(255) NOT NULL UNIQUE
);

# Table 2: Books (Stores core book details, including Primary Key and unique ISBN)
CREATE TABLE Books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    isbn VARCHAR(20) UNIQUE NOT NULL,
    genre VARCHAR(100),
    publisher VARCHAR(255),
    publication_year YEAR,
    language VARCHAR(50),
    description TEXT
);

# Table 3: Book_Authors (Junction table for many-to-many relationship)
CREATE TABLE Book_Authors (
    book_id INT NOT NULL,
    author_id INT NOT NULL,
    PRIMARY KEY (book_id, author_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id) ON DELETE CASCADE,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id) ON DELETE CASCADE
);

----------------------------------------------------------------------------------
2. CRUD: CREATE (INSERT DATA)
----------------------------------------------------------------------------------

# 2.1. Insert Authors
INSERT INTO Authors (author_name) VALUES
('José Rizal'),
('Lualhati Bautista'),
('F.H. Batacan'),
('Nick Joaquin');

# 2.2. Insert Books (Focus on Philippine Literature)
INSERT INTO Books (title, isbn, genre, publisher, publication_year, language, description) VALUES
('Noli Me Tángere', '9789715690184', 'Historical Fiction', 'National Book Store', 1887, 'Spanish/Tagalog', 'A scathing exposé of the Spanish colonial regime in the Philippines.'),
('Dekada \'70', '9789711001506', 'Historical Fiction', 'Cacho Publishing House', 1983, 'Filipino', 'A story of a middle-class family navigating the turbulent years of Martial Law.'),
('Smaller and Smaller Circles', '9789712716174', 'Crime Fiction/Mystery', 'UP Press', 2002, 'English', 'A pair of Jesuit priests investigate a series of brutal murders in the Manila slums.'),
('The Woman Who Had Two Navels', '9789712716723', 'Gothic Fiction', 'Anvil Publishing', 1961, 'English', 'A novel exploring Filipino identity, colonialism, and memory.');

# 2.3. Link Books to Authors
INSERT INTO Book_Authors (book_id, author_id) VALUES
((SELECT book_id FROM Books WHERE title = 'Noli Me Tángere'), (SELECT author_id FROM Authors WHERE author_name = 'José Rizal')),
((SELECT book_id FROM Books WHERE title = 'Dekada \'70'), (SELECT author_id FROM Authors WHERE author_name = 'Lualhati Bautista')),
((SELECT book_id FROM Books WHERE title = 'Smaller and Smaller Circles'), (SELECT author_id FROM Authors WHERE author_name = 'F.H. Batacan')),
((SELECT book_id FROM Books WHERE title = 'The Woman Who Had Two Navels'), (SELECT author_id FROM Authors WHERE author_name = 'Nick Joaquin'));

----------------------------------------------------------------------------------
3. CRUD: READ (RETRIEVE ALL DATA)
----------------------------------------------------------------------------------

# List of all Available Books with Author(s) - The main READ operation
SELECT
    b.book_id AS 'Book ID',
    b.title AS 'Title',
    GROUP_CONCAT(a.author_name SEPARATOR ', ') AS 'Author(s)',
    b.isbn AS 'ISBN',
    b.genre AS 'Genre/Category',
    b.publisher AS 'Publisher',
    b.publication_year AS 'Pub. Year',
    b.language AS 'Language',
    b.description AS 'Description'
FROM
    Books b
JOIN
    Book_Authors ba ON b.book_id = ba.book_id
JOIN
    Authors a ON ba.author_id = a.author_id
GROUP BY
    b.book_id
ORDER BY
    b.title;

----------------------------------------------------------------------------------
4. CRUD: UPDATE
----------------------------------------------------------------------------------

# Update the publication year for a book (e.g., Smaller and Smaller Circles was re-published)
UPDATE Books
SET publication_year = 2015
WHERE title = 'Smaller and Smaller Circles';

----------------------------------------------------------------------------------
5. CRUD: DELETE
----------------------------------------------------------------------------------

# Delete a book record by its title
DELETE FROM Books
WHERE title = 'The Woman Who Had Two Navels';