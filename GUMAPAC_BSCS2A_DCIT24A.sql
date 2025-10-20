# GUMAPAC, GRINDALE D. | BSCS 2-A | DCIT24A | ACTIVITY 1
 
# Create and use database for library management system
CREATE DATABASE GumapacLibraryDatabase;
USE GumapacLibraryDatabase;

# Create table for Authors
CREATE TABLE Authors (
    AuthorID INT AUTO_INCREMENT PRIMARY KEY,
    AuthorName VARCHAR(100) NOT NULL,
    BirthYear SMALLINT,             # allows older years like 1896
    Nationality VARCHAR(50)
);

# Create table for Genres
CREATE TABLE Genres (
    GenreID INT AUTO_INCREMENT PRIMARY KEY,
    GenreName VARCHAR(100) NOT NULL
);

# Create table for Publishers
CREATE TABLE Publishers (
    PublisherID INT AUTO_INCREMENT PRIMARY KEY,
    PublisherName VARCHAR(100) NOT NULL,
    Country VARCHAR(50),
    FoundedYear SMALLINT
);

# Create table for Languages
CREATE TABLE Languages (
    LanguageID INT AUTO_INCREMENT PRIMARY KEY,
    LanguageName VARCHAR(50) NOT NULL
);

# Create main table for Books
CREATE TABLE Books (
    BookID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(150) NOT NULL,
    AuthorID INT,
    ISBN VARCHAR(20),
    GenreID INT,
    PublisherID INT,
    PublicationYear YEAR,
    LanguageID INT,
    Description TEXT,
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID) ON DELETE CASCADE,
    FOREIGN KEY (GenreID) REFERENCES Genres(GenreID) ON DELETE CASCADE,
    FOREIGN KEY (PublisherID) REFERENCES Publishers(PublisherID) ON DELETE CASCADE,
    FOREIGN KEY (LanguageID) REFERENCES Languages(LanguageID) ON DELETE CASCADE
);

# Insert Authors
INSERT INTO Authors (AuthorName, BirthYear, Nationality) VALUES
('Lualhati Bautista', 1945, 'Filipino'),
('F. Scott Fitzgerald', 1896, 'American'),
('J.K. Rowling', 1965, 'American'),
('Bob Ong', 1972, 'Filipino'),
('Neil Gaiman', 1960, 'British'); 

# Insert Genres
INSERT INTO Genres (GenreName) VALUES
('Novel'),
('Fantasy'),
('Autobiographical Fiction');

# Insert Publishers
INSERT INTO Publishers (PublisherName, Country, FoundedYear) VALUES
('Cacho Publishing House', 'Philippines', 1980),
('Charles Scribner''s Sons', 'United States', 1846),
('Scholastic', 'United States', 1920),
('Visual Print Enterprises', 'Philippines', 2000),
('Bloomsbury', 'England', 1986);

# Insert Languages
INSERT INTO Languages (LanguageName) VALUES
('Filipino'),
('English');

# Insert Books Data
INSERT INTO Books 
(Title, AuthorID, ISBN, GenreID, PublisherID, PublicationYear, LanguageID, Description)
VALUES
('Dekada ''70', 1, '9789711790233', 1, 1, 1991, 1, 'It tells the story of a middle-class family in Manila living through martial law under Ferdinand Marcos.'),
('The Great Gatsby', 2, '9780743273565', 1, 2, 1925, 2, 'A story about the elusive American dream.'),
('Harry Potter and the Sorcerer''s Stone', 3, '9780590353427', 2, 3, 1999, 2, 'A simple young boy discovers his magical heritage.'),
('ABNKKBSNPLAKo?!', 4, '9789719234203', 3, 4, 2003, 1, 'A humorous reflection on the life and experiences of a typical Filipino student.'),
('Kapitan Sino', 4, '9710545019', 1, 4, 2009, 1, 'The story revolves around Rogelio Manglicmot, an electrician in the small barrio of Pelaez.'),
('Coraline', 5, '9780060575915', 2, 5, 2002, 2, 'A novella that features a young girl named Coraline who has just moved into a new house.');

# Read all available books with complete details
SELECT 
    b.BookID,
    b.Title,
    a.AuthorName,
    b.ISBN,
    g.GenreName,
    p.PublisherName,
    b.PublicationYear,
    l.LanguageName,
    b.Description
FROM Books b
JOIN Authors a ON b.AuthorID = a.AuthorID
JOIN Genres g ON b.GenreID = g.GenreID
JOIN Publishers p ON b.PublisherID = p.PublisherID
JOIN Languages l ON b.LanguageID = l.LanguageID
ORDER BY b.Title ASC;

# Sample Update
SET SQL_SAFE_UPDATES = 0;

# Update publication year of a specific book
UPDATE Books
SET PublicationYear = 1998
WHERE BookID = 3;

# Update nationality of an author
UPDATE Authors
SET Nationality = 'British'
WHERE AuthorID = 3;

# Sample Delete
# Delete a specific book record
DELETE FROM Books
WHERE BookID = 6;

SET SQL_SAFE_UPDATES = 1;