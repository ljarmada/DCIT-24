Tab 1
-- Navarrete, Aaron Jordan | BSCS-2A


DROP TABLE IF EXISTS Books;


CREATE TABLE Books (
    book_id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT NOT NULL,
    author TEXT NOT NULL,
    isbn TEXT UNIQUE NOT NULL,
    genre TEXT,
    publisher TEXT,
    publication_year INTEGER,
    language TEXT DEFAULT 'English',
    description TEXT,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);


-- INSERT SAMPLE DATA
INSERT INTO Books (title, author, isbn, genre, publisher, publication_year, language, description) VALUES
('The Hobbit', 'J.R.R. Tolkien', '9780547928227', 'Fantasy', 'Allen & Unwin', 1937, 'English', 'A fantasy novel about Bilbo Baggins and his adventure.'),
('The Hunger Games', 'Suzanne Collins', '9780439023528', 'Dystopian', 'Scholastic Press', 2008, 'English', 'A story about survival and rebellion in a dystopian world.'),
('The Da Vinci Code', 'Dan Brown', '9780307474278', 'Thriller', 'Doubleday', 2003, 'English', 'A mystery thriller involving secret societies and historical puzzles.'),
('Dune', 'Frank Herbert', '9780441172719', 'Science Fiction', 'Chilton Books', 1965, 'English', 'A sci-fi epic about politics, religion, and power on the desert planet Arrakis.');


-- DISPLAY ALL BOOKS
SELECT * FROM Books;


-- DISPLAY FANTASY BOOKS
SELECT * FROM Books WHERE genre = 'Fantasy';


-- DISPLAY BOOKS BY DAN BROWN
SELECT * FROM Books WHERE author = 'Dan Brown';


-- UPDATE EXAMPLE (Change genre and publisher of "The Hunger Games")
UPDATE Books
SET genre = 'Adventure / Dystopian', publisher = 'Penguin Books'
WHERE title = 'The Hunger Games';


-- SHOW UPDATED BOOK
SELECT * FROM Books WHERE title = 'The Hunger Games';


-- DELETE EXAMPLE (Delete "The Da Vinci Code")
DELETE FROM Books WHERE title = 'The Da Vinci Code';


-- SHOW BOOKS AFTER DELETE
SELECT book_id, title, author, genre FROM Books;


-- DELETE OLD BOOKS (Before 1950)
DELETE FROM Books WHERE publication_year < 1950;


-- SHOW FINAL BOOK LIST
SELECT * FROM Books;