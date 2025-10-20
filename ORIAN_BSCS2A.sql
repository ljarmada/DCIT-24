CREATE TABLE Books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    isbn VARCHAR(20) UNIQUE NOT NULL,
    genre VARCHAR(100),
    publisher VARCHAR(255),
    publication_year YEAR,
    language VARCHAR(50),
    description VARCHAR(255)
);

INSERT INTO Books (title, author, isbn, genre, publisher, publication_year, language, description)
VALUES
('The Alchemist', 'Paulo Coelho', '9780061122415', 'Fiction', 'HarperOne', 1988, 'English', 'A shepherd pursues his dream of finding treasure.'),
('To Kill a Mockingbird', 'Harper Lee', '9780061120084', 'Classic', 'J.B. Lippincott & Co.', 1960, 'English', 'A story about justice and innocence in the Deep South.'),
('Pride and Prejudice', 'Jane Austen', '9780141439518', 'Romance', 'T. Egerton', 1813, 'English', 'A witty tale of love and social expectations.');

SELECT * FROM Books;