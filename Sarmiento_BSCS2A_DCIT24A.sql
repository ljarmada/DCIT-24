# Sarmiento, Byron Jr. M. -- BSCS 2A -- Activity 1 -- DCIT 24


# DB

CREATE DATABASE LibraryDB;
USE LibraryDB;


# Tables

CREATE TABLE Authors 
(	
    author_ID INT AUTO_INCREMENT PRIMARY KEY,
    author_FN VARCHAR(50) NOT NULL,
    author_LN VARCHAR(50) NOT NULL
) ;

CREATE TABLE Publishers
(
    publisher_ID INT AUTO_INCREMENT PRIMARY KEY,
    publisher_name VARCHAR(200) UNIQUE NOT NULL
);

CREATE TABLE Languages
(
    language_ID INT AUTO_INCREMENT PRIMARY KEY,
    language_name VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE Books
(
    book_ID INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(300) NOT NULL,
    ISBN VARCHAR (20) UNIQUE NOT NULL,
    genre VARCHAR(50),
    publisher_ID INT,
    publication_year INT,
    language_ID INT,
    description_abstract TEXT,

    FOREIGN KEY (publisher_ID) REFERENCES Publishers(publisher_ID) ON DELETE SET NULL,
    FOREIGN KEY (language_ID) REFERENCES Languages(language_ID) ON DELETE SET NULL
);

CREATE TABLE BookAuthors
(
    book_author_ID INT AUTO_INCREMENT PRIMARY KEY,
    book_ID INT NOT NULL,
    author_ID INT NOT NULL,
    
    FOREIGN KEY (book_ID) REFERENCES Books(book_ID) ON DELETE CASCADE,
    FOREIGN KEY (author_ID) REFERENCES Authors(author_ID) ON DELETE CASCADE
);


# Insert Data

INSERT INTO Authors (author_FN, author_LN) VALUES
('Harper', 'Lee'),
('George','Orwell'),
('J.R.R.','Tolkien');

INSERT INTO Publishers (publisher_name) VALUES
('J. B. Lippincott & Co.'),
('Secker & Warburg'),
('George Allen & Unwin');

INSERT INTO Languages (language_name) VALUES
('English'),
('Spanish'),
('French');

INSERT INTO Books (title, ISBN, genre, publisher_ID, publication_year, language_ID, description_abstract) VALUES
('To Kill a Mockingbird', '978-0061120084', 'Southern Gothic', 1, 1960, 1, 'A story about a childs view of a major event in her town.'),
('1984', '978-0451524935', 'Dystopian Fiction', 2, 1949, 1, 'A novel set in a totalitarian superstate.'),
('The Hobbit', '978-0547928227', 'Fantasy', 3, 1937, 1, 'The adventures of a hobbit named Bilbo Baggins.');

INSERT INTO bookAuthors (book_ID, author_ID) VALUES
(1, 1),
(2, 2),
(3, 3);


# Read Data

SELECT
    B.book_ID AS 'Book ID',
    B.title AS 'Title',
    GROUP_CONCAT(CONCAT(A.author_FN, ' ', A.author_LN) SEPARATOR ', ') AS 'Author(s)',
    B.ISBN AS 'ISBN',
    B.genre AS 'Genre/Category',
    P.publisher_name AS 'Publisher',
    B.publication_year AS 'Year',
    L.language_name AS 'Language',
    B.description_abstract AS 'Description/Abstract'
FROM Books B
JOIN BookAuthors BA ON B.book_ID = BA.book_ID
JOIN Authors A ON BA.author_ID = A.author_ID
JOIN Publishers P ON B.publisher_ID = P.publisher_ID
JOIN Languages L ON B.language_ID = L.language_ID
WHERE B.book_ID = 1
GROUP BY B.book_ID, B.title, B.ISBN, B.genre, P.publisher_name, B.publication_year, L.language_name, B.description_abstract;


# Update Data

UPDATE Books
SET
    title = 'Nineteen Eighty-Four',
    language_ID = 3
WHERE book_ID = 2;

UPDATE Authors
SET
    author_LN = 'Tolkien-Smith'
WHERE author_ID = 3;


# Delete Data

DELETE FROM Books
WHERE book_ID = 3;
