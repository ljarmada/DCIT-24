-- GARCIA, CHARLES DERRICK A. | BSCS-2A | DCIT24A - ACTIVITY 1

/* 
1. Database Initialization 
*/

DROP DATABASE IF EXISTS MangaLibraryDB;
CREATE DATABASE MangaLibraryDB;
USE MangaLibraryDB;

-- Table: manga_authors (stores all manga creators)
CREATE TABLE manga_authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    author_name VARCHAR(200) NOT NULL UNIQUE
);

-- Table: manga_books (stores main manga information)
CREATE TABLE manga_books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    isbn VARCHAR(20) NOT NULL UNIQUE,
    category VARCHAR(100),
    publisher VARCHAR(150),
    release_year YEAR,
    language VARCHAR(60),
    synopsis TEXT
);

-- Table: book_author_map (connects manga books with their authors)
CREATE TABLE book_author_map (
    book_id INT NOT NULL,
    author_id INT NOT NULL,
    PRIMARY KEY (book_id, author_id),
    FOREIGN KEY (book_id) REFERENCES manga_books(book_id) ON DELETE CASCADE,
    FOREIGN KEY (author_id) REFERENCES manga_authors(author_id) ON DELETE CASCADE
);


/* 
2. Create 
*/

-- Step 1: Insert authors
INSERT INTO manga_authors (author_name) VALUES
('Tite Kubo'),
('Gege Akutami'),
('Kanehito Yamada'),
('Naoko Takeuchi'),
('Kentaro Miura');

-- Step 2: Insert manga books
INSERT INTO manga_books (title, isbn, category, publisher, release_year, language, synopsis) VALUES
('Bleach', '9784088736211', 'Action, Supernatural', 'Shueisha', 2001, 'Japanese/English', 'Ichigo Kurosaki becomes a Soul Reaper and defends the world of the living from evil spirits.'),
('Jujutsu Kaisen', '9784088808581', 'Action, Dark Fantasy', 'Shueisha', 2018, 'Japanese/English', 'Yuji Itadori joins a secret organization to fight Cursed Spirits and uncover hidden truths.'),
('Frieren: Beyond Journey\'s End', '9784098506589', 'Fantasy, Adventure', 'Shogakukan', 2020, 'Japanese/English', 'An elven mage named Frieren reflects on her long life and her past adventures after the passing of her human companions.'),
('Sailor Moon', '9784061789456', 'Magical Girl, Fantasy', 'Kodansha', 1992, 'Japanese/English', 'Usagi Tsukino transforms into Sailor Moon and fights to protect Earth from evil.'),
('Berserk', '9784592131984', 'Dark Fantasy, Action', 'Hakusensha', 1989, 'Japanese/English', 'Guts, a lone mercenary, battles demons and fate in a brutal medieval world.');

-- Step 3: Link books with authors
INSERT INTO book_author_map (book_id, author_id) VALUES
((SELECT book_id FROM manga_books WHERE title = 'Bleach'),
 (SELECT author_id FROM manga_authors WHERE author_name = 'Tite Kubo')),
((SELECT book_id FROM manga_books WHERE title = 'Jujutsu Kaisen'),
 (SELECT author_id FROM manga_authors WHERE author_name = 'Gege Akutami')),
((SELECT book_id FROM manga_books WHERE title = 'Frieren: Beyond Journey\'s End'),
 (SELECT author_id FROM manga_authors WHERE author_name = 'Kanehito Yamada')),
((SELECT book_id FROM manga_books WHERE title = 'Sailor Moon'),
 (SELECT author_id FROM manga_authors WHERE author_name = 'Naoko Takeuchi')),
((SELECT book_id FROM manga_books WHERE title = 'Berserk'),
 (SELECT author_id FROM manga_authors WHERE author_name = 'Kentaro Miura'));


/* 
3. Read 
*/

-- Retrieve all manga with author(s) and full details
SELECT 
    b.book_id AS 'Book ID',
    b.title AS 'Manga Title',
    GROUP_CONCAT(a.author_name SEPARATOR ', ') AS 'Author(s)',
    b.isbn AS 'ISBN',
    b.category AS 'Genre',
    b.publisher AS 'Publisher',
    b.release_year AS 'Release Year',
    b.language AS 'Language',
    b.synopsis AS 'Synopsis'
FROM manga_books b
JOIN book_author_map ba ON b.book_id = ba.book_id
JOIN manga_authors a ON ba.author_id = a.author_id
GROUP BY b.book_id
ORDER BY b.release_year DESC;

SET SQL_SAFE_UPDATES = 0;
/* 
4. Update 
*/

-- Example: Update publisher info for a specific manga
UPDATE manga_books
SET publisher = 'VIZ Media'
WHERE title = 'Bleach';


/* 
5. Delete 
*/

-- Example: Delete one manga title and its mapping
DELETE FROM manga_books
WHERE title = 'Berserk';

SET SQL_SAFE_UPDATES = 1;