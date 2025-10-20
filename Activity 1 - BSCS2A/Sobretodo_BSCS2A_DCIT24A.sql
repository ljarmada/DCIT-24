-- SOBRETODO, MA. GEOHANNAH D.
-- BSCS-2A (INFOMANAGEMENT)


CREATE DATABASE Librarydb;
USE Librarydb;
CREATE TABLE books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(50) NOT NULL,
    authors VARCHAR(100) NOT NULL,
    isbn VARCHAR(100) UNIQUE NOT NULL,
    genre VARCHAR(50),
    publisher VARCHAR(100),
    publication_year YEAR,
    language VARCHAR(50),
    description TEXT
);


insert into books ( book_id, title, authors, isbn, genre, publisher, publication_year, language, description)
values ('001', 'Harry Potter and the Sorcerer’s Stone', 'J.K. Rowling', ' 978-0-590-35340-3', 'Fantasy / Adventure / Young Adult', 'Bloomsbury (UK) / Scholastic (US)', '1997', 'English', 'he first book in the Harry Potter series introduces a young boy who discovers he is a wizard and attends Hogwarts School of Witchcraft and Wizardry.'),
('002', 'Harry Potter and the Chamber of Secrets', 'J.K. Rowling', '978-0-439-06486-6', 'antasy / Mystery / Adventure', 'Bloomsbury (UK) / Scholastic (US)', '1998', 'English', 'n his second year at Hogwarts, Harry faces the mystery of a hidden chamber and a monster that threatens the students of the school.'),
('003', 'Your Name (Kimi no Na wa)', 'Makoto Shinkai', '978-0-349-14218-7', 'Romance / Fantasy / Drama', 'Kadokawa', '2016', 'Japanese', 'Two teenagers mysteriously swap bodies and form a deep connection that transcends time and space as they search for each other.'),
('004', 'Noli Me Tangere', 'Dr. José Rizal', ' 978-971-27-2400-8', 'Historical Fiction / Classic / Political', 'National Historical Commission of the Philippines', '1887', 'Tagalog', 'A classic novel exposing the injustices and abuses during the Spanish colonial period in the Philippines through the story of Crisostomo Ibarra and the tragic love of Maria Clara'),
('005', ' Ride Your Wave (Kimi to, Nami ni Noretara)', 'Masaaki Yuasa, Reiko Yoshida', '978-1-9747-1691-8', 'Romance / Drama / Fantasy', 'Seven Seas Entertainment', '2020', 'Japanese', 'Based on the hit anime film by Masaaki Yuasa, this novel tells the story of Hinako, a surfer who falls in love with a firefighter named Minato. After a tragic accident, Hinako discovers she can still see Minato’s spirit whenever she sings their favorite song — learning to move forward while keeping his memory alive.');


-- READ
SELECT * from books;


-- UPDATE 
UPDATE books
SET description = 'a surfer who falls in love with a firefighter named Minato. After a tragic accident, Hinako discovers she can still see Minato’s spirit whenever she sings their favorite song'
WHERE book_id = '005';


SELECT * from books;


-- DELETE
ALTER TABLE books DROP COLUMN genre;


SELECT * FROM books;