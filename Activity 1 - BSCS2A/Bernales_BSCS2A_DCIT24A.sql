CREATE DATABASE libratrack;
USE libratrack;

CREATE TABLE books (
  book_id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(150) NOT NULL,
  authors VARCHAR(150),
  isbn VARCHAR(20),
  genre VARCHAR(50),
  publisher VARCHAR(100),
  publication_year YEAR,
  language VARCHAR(50),
  description TEXT
);

INSERT INTO books (title, author, isbn, genre, publisher, publication_year, language, description)
VALUES
('Echoes of the Sun', 'Mira Dela Cruz', '978-0-321-94723-0', 'Historical Fiction', 'Golden Quill Press', 2018, 'English', 'A tale of resilience during the Japanese occupation of the Philippines.'),
('Binary Hearts', 'Ryan T. Villanueva', '978-1-423-81223-6', 'Romance', 'PixelLeaf Media', 2023, 'English', 'A love story between two programmers who meet in a virtual world.'),
('Waves of Tomorrow', 'K. R. Mendoza', '978-1-55963-812-5', 'Non-Fiction', 'SeaBreeze Books', 2019, 'Filipino', 'An inspiring collection of essays about environmental sustainability.');

SELECT * FROM books;