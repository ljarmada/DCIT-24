-- LibraryDB_3Tables.sql - Complete working version

DROP DATABASE IF EXISTS LibraryDB_3Tables;
CREATE DATABASE LibraryDB_3Tables;
USE LibraryDB_3Tables;

CREATE TABLE Authors (
  author_id INT AUTO_INCREMENT PRIMARY KEY,
  author_name VARCHAR(255) NOT NULL
);

CREATE TABLE Publishers (
  publisher_id INT AUTO_INCREMENT PRIMARY KEY,
  publisher_name VARCHAR(255) NOT NULL
);

CREATE TABLE Books (
  book_id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  author_id INT,
  isbn VARCHAR(20),
  genre VARCHAR(100),
  publisher_id INT,
  publication_year INT,
  language VARCHAR(50),
  description TEXT,
  FOREIGN KEY (author_id) REFERENCES Authors(author_id)
    ON DELETE SET NULL ON UPDATE CASCADE,
  FOREIGN KEY (publisher_id) REFERENCES Publishers(publisher_id)
    ON DELETE SET NULL ON UPDATE CASCADE
);

INSERT INTO Authors (author_name) VALUES
('F. Scott Fitzgerald'),
('Luna Gray'),
('Ethan Cole'),
('Margaret Hayes'),
('Noah Winters');

INSERT INTO Publishers (publisher_name) VALUES
('Scribner'),
('HarperCollins'),
('Penguin Random House');

INSERT INTO Books (title, author_id, isbn, genre, publisher_id, publication_year, language, description) VALUES
('The Great Gatsby', 1, '9780743273565', 'Fiction', 1, 1925, 'English', 'A classic story of wealth and love.'),
('Midnight Sun', 2, '9780316038379', 'Fantasy', 2, 2015, 'English', 'A fantasy about a hidden world under the midnight sun.'),
('Echoes of Tomorrow', 3, '9781451673319', 'Sci-Fi', 3, 2017, 'English', 'A scientist races to prevent a paradox.'),
('The Silent Stars', 1, '9780143128540', 'Sci-Fi', 1, 2018, 'English', 'A journey through distant galaxies.'),
('Whispers of the Sea', 2, '9780062457738', 'Romance', 2, 2019, 'English', 'A love story in a coastal town.'),
('Echoes in the Valley', 3, '9780307271037', 'Historical Fiction', 1, 2020, 'English', 'Tales of courage during war.'),
('Digital Shadows', 2, '9781982137274', 'Thriller', 3, 2021, 'English', 'A hacker uncovers a conspiracy.'),
('Garden of Secrets', 4, '9780451491322', 'Mystery', 2, 2017, 'English', 'A detective explores an old mansion.'),
('The Lost Melody', 3, '9780061120084', 'Drama', 1, 2016, 'English', 'A pianist rediscovers her passion.'),
('Fires of the North', 5, '9780553573428', 'Adventure', 3, 2022, 'English', 'An explorer faces the frozen north.');

SELECT 
  b.book_id,
  b.title,
  a.author_name,
  p.publisher_name,
  b.genre,
  b.publication_year,
  b.language,
  b.description
FROM Books b
JOIN Authors a ON b.author_id = a.author_id
JOIN Publishers p ON b.publisher_id = p.publisher_id
ORDER BY b.book_id;
