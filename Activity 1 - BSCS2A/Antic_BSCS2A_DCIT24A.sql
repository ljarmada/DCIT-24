-- Antic, Kacy Lorraine / BSCS-2A / DCIT24A
-- Library Database CRUD Activity

CREATE DATABASE IF NOT EXISTS library_db;
USE library_db;

-- Drop table if it already exists (for testing)
DROP TABLE IF EXISTS Books;

-- Create the Books table
CREATE TABLE Books (
	book_id INT AUTO_INCREMENT PRIMARY KEY,
	title VARCHAR(255) NOT NULL,
	author VARCHAR(255) NOT NULL,
	isbn VARCHAR(50) UNIQUE NOT NULL,
	genre VARCHAR(100),
	publisher VARCHAR(100),
	publication_year INT,
	language VARCHAR(50) DEFAULT 'English',
	description TEXT,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- ======================
-- C R E A T E
-- ======================
INSERT INTO Books (title, author, isbn, genre, publisher, publication_year, language, description) VALUES
('The Silent Observatory', 'Aria Mendoza', '978-1993245901', 'Science Fiction', 'Starlight Press', 2011, 'English', 'A scientist discovers a strange signal from deep space that changes everything.'),
('Echoes of Tomorrow', 'Liam Navarro', '978-1854276178', 'Thriller', 'Iron Quill Publishing', 2019, 'English', 'A time-travel agent must fix a future she accidentally destroyed.'),
('The Painted Horizon', 'Sofia Rivera', '978-1425643284', 'Romance', 'Bluebird House', 2008, 'English', 'A painter and a traveler fall in love under the Tuscan sun.'),
('The Last Kingdom of Glass', 'Noah Castillo', '978-1327550933', 'Fantasy', 'Moonspire Books', 2017, 'English', 'A young warrior defends a magical kingdom built entirely of glass.'),
('Midnight Circuit', 'Elena Cruz', '978-1903772945', 'Cyberpunk', 'Voltage Press', 2022, 'English', 'A hacker uncovers a government AI that controls human emotions.'),
('Forgotten Shores', 'Rafael Santos', '978-1546730029', 'Historical Fiction', 'Golden Age Publications', 2015, 'English', 'A soldier writes letters to a love he can never return to.');

-- ======================
-- R E A D
-- ======================
SELECT '=== ALL BOOKS ===' AS '';
SELECT * FROM Books;

SELECT '=== FANTASY BOOKS ===' AS '';
SELECT * FROM Books WHERE genre = 'Fantasy';

SELECT '=== BOOKS BY ARIA MENDOZA ===' AS '';
SELECT * FROM Books WHERE author LIKE '%Mendoza%';

SELECT '=== BOOK SUMMARIES ===' AS '';
SELECT book_id, title, author, genre FROM Books;

SELECT '=== BOOKS WITH "The" IN TITLE ===' AS '';
SELECT * FROM Books WHERE title LIKE '%The%';

-- ======================
-- U P D A T E
-- ======================
UPDATE Books 
SET description = 'A thrilling story about the discovery of alien life and human morality.'
WHERE book_id = 1;

SELECT '=== UPDATED BOOK ===' AS '';
SELECT * FROM Books WHERE book_id = 1;

UPDATE Books 
SET genre = 'Science Fiction', publisher = 'Nebula House'
WHERE book_id = 1;

SELECT * FROM Books WHERE book_id = 1;

-- ======================
-- D E L E T E
-- ======================
DELETE FROM Books WHERE book_id = 5;

SELECT '=== BOOKS AFTER DELETE ===' AS '';
SELECT book_id, title, author, genre FROM Books;

DELETE FROM Books WHERE publication_year < 2010;
