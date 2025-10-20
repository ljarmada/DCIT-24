CREATE DATABASE libraryDB;
USE libraryDB;
CREATE TABLE library_System (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    book_title VARCHAR(50),
    author_firstname VARCHAR(20),
    author_lastname VARCHAR(20),
    isbn BIGINT,
    genre VARCHAR(20),
    publisher VARCHAR(50),
    publication_date DATE,
    book_language VARCHAR(20),
    book_description VARCHAR(200)
);

INSERT INTO library_System (
    book_title, author_firstname, author_lastname, isbn, genre,
    publisher, publication_date, book_language, book_description
) VALUES
('To Kill a Mockingbird', 'Harper', 'Lee', 9780061120084, 'Fiction',
 'J.B. Lippincott & Co.', '1960-07-11 00:00:00', 'English', 'A novel about justice and race in the Deep South.'),
 
('1984', 'George', 'Orwell', 9780451524935, 'Dystopian',
 'Secker & Warburg', '1949-06-08 00:00:00', 'English', 'A chilling vision of a totalitarian future.'),
 
('The Great Gatsby', 'F. Scott', 'Fitzgerald', 9780743273565, 'Classic',
 'Charles Scribner’s Sons', '1925-04-10 00:00:00', 'English', 'A story of wealth, love, and the American dream.'),
 
('Pride and Prejudice', 'Jane', 'Austen', 9781503290563, 'Romance',
 'T. Egerton', '1813-01-28 00:00:00', 'English', 'A timeless love story of manners and marriage.'),
 
('The Catcher in the Rye', 'J.D.', 'Salinger', 9780316769488, 'Fiction',
 'Little, Brown and Company', '1951-07-16 00:00:00', 'English', 'A teenager’s journey through alienation and identity.'),
 
('The Hobbit', 'J.R.R.', 'Tolkien', 9780547928227, 'Fantasy',
 'George Allen & Unwin', '1937-09-21 00:00:00', 'English', 'A hobbit’s adventure to reclaim a lost treasure.'),
 
('The Da Vinci Code', 'Dan', 'Brown', 9780307474278, 'Mystery',
 'Doubleday', '2003-03-18 00:00:00', 'English', 'A thrilling mystery involving art, religion, and secrets.'),
 
('The Alchemist', 'Paulo', 'Coelho', 9780061122415, 'Adventure',
 'HarperTorch', '1988-04-15 00:00:00', 'English', 'A shepherd’s journey to discover his destiny.'),
 
('Harry Potter and the Sorcerer\'s Stone', 'J.K.', 'Rowling', 9780590353427, 'Fantasy',
 'Bloomsbury', '1997-06-26 00:00:00', 'English', 'A young wizard’s first year at Hogwarts.'),
 
('The Hunger Games', 'Suzanne', 'Collins', 9780439023528, 'Science Fiction',
 'Scholastic Press', '2008-09-14 00:00:00', 'English', 'A dystopian story of survival and rebellion.');

SELECT * FROM library_System