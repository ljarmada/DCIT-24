
CREATE TABLE Books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    isbn VARCHAR(20) UNIQUE NOT NULL,
    genre VARCHAR(100),
    publisher VARCHAR(255),
    publication_year YEAR,
    language VARCHAR(50),
    description TEXT
);


INSERT INTO Books (title, author, isbn, genre, publisher, publication_year, language, description)
VALUES
('Foundation', 'Isaac Asimov', '9780553293357', 'Science Fiction', 'Penguin Books', 1951, 'English', 'A sci-fi classic about the fall of the Galactic Empire.'),
('Harry Potter and the Philosopher''s Stone', 'J.K. Rowling', '9780747532743', 'Fantasy', 'Bloomsbury', 1997, 'English', 'A young wizard''s first year at Hogwarts.'),
('Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', '9780099590088', 'Non-Fiction', 'Harper', 2011, 'English', 'A history of humanity from the Stone Age to today.');

SELECT * FROM Books;
UPDATE Books
SET description = 'A new description for Foundation.'
WHERE book_id = 1;

DELETE FROM Books
WHERE book_id = 3;

-- VIEW AFTER DELETE
SELECT * FROM Books;