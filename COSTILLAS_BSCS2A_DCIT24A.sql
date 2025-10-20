# Costillas, John Michael L. | BSCS 2A

CREATE DATABASE library_crud;
USE library_crud;

-- Authors Table
CREATE TABLE Authors (
    AuthorID INT AUTO_INCREMENT PRIMARY KEY,
    AuthorName VARCHAR(255) NOT NULL
);

-- Publisher Table
CREATE TABLE Publishers (
    PublisherID INT AUTO_INCREMENT PRIMARY KEY,
    PublisherName VARCHAR(255) NOT NULL
);

-- Genres Table
CREATE TABLE Genres (
    GenreID INT AUTO_INCREMENT PRIMARY KEY,
    GenreName VARCHAR(100) NOT NULL
);

-- Books Table
CREATE TABLE Books (
    BookID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    ISBN VARCHAR(17) UNIQUE,
    GenreID INT,
    PublisherID INT,
    PublicationYear YEAR,
    Language VARCHAR(50),
    Description TEXT,
    FOREIGN KEY (GenreID) REFERENCES Genres(GenreID),
    FOREIGN KEY (PublisherID) REFERENCES Publishers(PublisherID)
);

-- BookAuthors Table (for many-to-many relationship)
CREATE TABLE BookAuthors (
    BookID INT,
    AuthorID INT,
    PRIMARY KEY (BookID, AuthorID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);

-- Insert authors
INSERT INTO Authors (AuthorName)
VALUES ('J.K. Rowling'), ('George Orwell'), ('J.R.R. Tolkien');

-- Insert publishers
INSERT INTO Publishers (PublisherName)
VALUES ('Bloomsbury'), ('Secker & Warburg'), ('Allen & Unwin');

-- Insert genres
INSERT INTO Genres (GenreName)
VALUES ('Fantasy'), ('Dystopian'), ('Adventure');

-- BOOKS
INSERT INTO Books (Title, ISBN, GenreID, PublisherID, PublicationYear, Language, Description)
VALUES 
('Harry Potter and the Philosopher\'s Stone', '9780747532699', 1, 1, 1997, 'English', 'A young wizard discovers his magical heritage.'),
('1984', '9780451524935', 2, 2, 1949, 'English', 'A dystopian novel about totalitarian surveillance.'),
('The Hobbit', '9780345339683', 3, 3, 1937, 'English', 'A hobbit embarks on a grand adventure.');

-- BOOKAUTHORS (link books to authors)
INSERT INTO BookAuthors (BookID, AuthorID)
VALUES 
(1, 1),  -- Harry Potter → J.K. Rowling
(2, 2),  -- 1984 → George Orwell
(3, 3);  -- The Hobbit → J.R.R. Tolkien

-- CREATE (Add a new book)
INSERT INTO Books (Title, ISBN, GenreID, PublisherID, PublicationYear, Language, Description)
VALUES ('Animal Farm', '9780451526342', 2, 2, 1945, 'English', 'A political satire on totalitarian regimes.');

-- READ (List all books with author, publisher, and genre)
SELECT 
    b.BookID,
    b.Title,
    GROUP_CONCAT(a.AuthorName SEPARATOR ', ') AS Authors,
    g.GenreName AS Genre,
    p.PublisherName AS Publisher,
    b.PublicationYear,
    b.Language,
    b.Description
FROM Books b
LEFT JOIN BookAuthors ba ON b.BookID = ba.BookID
LEFT JOIN Authors a ON ba.AuthorID = a.AuthorID
LEFT JOIN Genres g ON b.GenreID = g.GenreID
LEFT JOIN Publishers p ON b.PublisherID = p.PublisherID
GROUP BY b.BookID;

-- UPDATE (Change a book's description)
UPDATE Books
SET Description = 'A dystopian allegory by George Orwell.'
WHERE Title = 'Animal Farm';

-- DELETE (Remove a book)
DELETE FROM Books
WHERE BookID = 4;
