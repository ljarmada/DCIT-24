#CREATE - Creating and inserting data into new Schemas and tables for Database
CREATE DATABASE LibraryDB;

USE LibraryDB;

CREATE TABLE Books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    isbn VARCHAR(20),
    genre VARCHAR(100),
    publisher VARCHAR(150),
    publication_year YEAR,
    language VARCHAR(50),
    description TEXT
);

INSERT INTO Books 
    (title, author, isbn, genre, publisher, publication_year, language, description)
VALUES 
('The 48 Laws of Power', 'Robert Greene', '978-0140280197', 'Self-Help / Strategy', 'Penguin Books', 1998, 'English', 'A guide to gaining and defending power through historical examples.'),
('The Art of Seduction', 'Robert Greene', '978-1861977694', 'Psychology / Self-Help', 'Profile Books', 2001, 'English', 'Explores the psychology of attraction, manipulation, and influence.'),
('The 33 Strategies of War', 'Robert Greene', '978-0143112785', 'Strategy / History', 'Penguin Books', 2006, 'English', 'A collection of military and social strategies applied to everyday life.'),
('The 50th Law', 'Robert Greene, 50 Cent', '978-0061774607', 'Motivational / Strategy', 'HarperStudio', 2009, 'English', 'A collaboration with rapper 50 Cent about fearlessness and power.'),
('Mastery', 'Robert Greene', '978-0670024964', 'Self-Improvement', 'Viking Adult', 2012, 'English', 'Examines how historical figures achieved mastery and how to follow their path.'),
('The Laws of Human Nature', 'Robert Greene', '978-0525428145', 'Psychology / Philosophy', 'Viking Press', 2018, 'English', 'Analyzes human behavior to help readers better understand themselves and others.');

#READ - Reading the data from the schemas and tables in the database
SELECT * FROM Books;

SELECT title, publication_year, genre 
FROM Books 
WHERE author = 'Robert Greene';

#UPDATE - Updating details that are already in the database
UPDATE Books 
SET publisher = 'Penguin Random House'
WHERE title = 'The Laws of Human Nature';

#DELETE - Deleting details in the database
DELETE FROM Books 
WHERE title = 'The 50th Law';

