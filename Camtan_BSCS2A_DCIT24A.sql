-- Camtan, Carl Patrick | BSCS 2-A

-- CREATE TABLE
CREATE TABLE IF NOT EXISTS books (
    book_id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT NOT NULL,
    author TEXT NOT NULL,
    isbn TEXT UNIQUE NOT NULL,
    genre TEXT,
    publisher TEXT,
    publication_year TEXT,
    language TEXT,
    description TEXT
);

-- INSERT DIFFERENT SAMPLE DATA
INSERT INTO books (title, author, isbn, genre, publisher, publication_year, language, description) VALUES
('The Alchemist', 'Paulo Coelho', '9780061122415', 'Adventure Fiction', 'HarperOne', '1988', 'English', 'A journey of self-discovery and destiny.'),
('Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', '9780062316097', 'Non-Fiction', 'Harper', '2011', 'English', 'A narrative of human evolution and history.'),
('The Da Vinci Code', 'Dan Brown', '9780307474278', 'Thriller', 'Doubleday', '2003', 'English', 'A symbologist uncovers secrets hidden in art and history.'),
('The Little Prince', 'Antoine de Saint-Exupéry', '9780156012195', 'Fable', 'Reynal & Hitchcock', '1943', 'English', 'A philosophical tale disguised as a children’s book.');

-- DISPLAY ALL BOOKS
SELECT * FROM books;

-- UPDATE EXAMPLE (Change genre and publisher of "Sapiens")
UPDATE books
SET genre = 'Historical Non-Fiction', publisher = 'Vintage Books'
WHERE title = 'Sapiens: A Brief History of Humankind';

-- DELETE EXAMPLE (Delete "The Da Vinci Code")
DELETE FROM books
WHERE title = 'The Da Vinci Code';

-- SHOW UPDATED LIST
SELECT * FROM books;
