
CREATE DATABASE IF NOT EXISTS LibraryDB;
USE LibraryDB;

CREATE TABLE IF NOT EXISTS Books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    isbn VARCHAR(100) UNIQUE NOT NULL,
    genre VARCHAR(100),
    publisher VARCHAR(150),
    publication_year SMALLINT,
    language VARCHAR(50),
    description TEXT
);

INSERT INTO Books (title, author, isbn, genre, publisher, publication_year, language, description)
VALUES
('Rich Dad Poor Dad', 'Robert T. Kiyosaki', '9781612681139', 'Finance', 'Plata Publishing', 1997, 'English', 'A personal finance classic advocating financial education and investment.'),
('Think and Grow Rich', 'Napoleon Hill', '9781585424337', 'Self-Help', 'TarcherPerigee', 1937, 'English', 'A success book outlining principles of wealth-building through mindset.'),
('The Intelligent Investor', 'Benjamin Graham', '9780060555665', 'Investing', 'HarperBusiness', 1949, 'English', 'A respected book on value investing and stock market fundamentals.');

SELECT * FROM Books;

SELECT title, author, publisher FROM Books WHERE book_id = 2;

UPDATE Books
SET
    publisher = 'Winner Books',
    publication_year = 2020,
    genre = 'Finance & Investing'
WHERE book_id = 1;

DELETE FROM Books WHERE book_id = 3;

SELECT * FROM Books;