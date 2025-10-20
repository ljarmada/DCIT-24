--Mendoza, Zeth Isaiah S. | BSCS 2-A

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


INSERT INTO books (title, author, isbn, genre, publisher, publication_year, language, description) VALUES
('1984', 'George Orwell', '9780451524935', 'Dystopian Fiction', 'Penguin Random House', '1949', 'English', 'A dystopian social science fiction novel'),
('Harry Potter and the Philosopher''s Stone', 'J.K. Rowling', '9780439780180', 'Fantasy', 'Bloomsbury', '1997', 'English', 'The first novel in the Harry Potter series'),
('The Hobbit', 'J.R.R. Tolkien', '9780547928227', 'Fantasy', 'HarperCollins', '1937', 'English', 'A fantasy novel about Bilbo Baggins'' adventure'),
('Murder on the Orient Express', 'Agatha Christie', '9780062693662', 'Mystery', 'HarperCollins', '1934', 'English', 'A detective novel featuring Hercule Poirot');


SELECT * FROM books;


UPDATE books
SET publisher = 'Penguin Books', genre = 'Science Fiction'
WHERE book_id = 1;


DELETE FROM books WHERE book_id = 4;


SELECT * FROM books;

