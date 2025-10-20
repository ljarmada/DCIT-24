
CREATE DATABASE IF NOT EXISTS SimpleLibraryDB;
USE SimpleLibraryDB;

CREATE TABLE authors (
    authorid INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE genres (
    genreid INT AUTO_INCREMENT PRIMARY KEY,
    genrename VARCHAR(100) NOT NULL
);

CREATE TABLE publishers (
    publisherid INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE books (
    bookid INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    authorid INT,
    genreid INT,
    publisherid INT,
    yearpublished INT,
    FOREIGN KEY (authorid) REFERENCES authors(authorid),
    FOREIGN KEY (genreid) REFERENCES genres(genreid),
    FOREIGN KEY (publisherid) REFERENCES publishers(publisherid)
);

INSERT INTO authors (name) VALUES 
('J.K. Rowling'),
('George Orwell'),
('J.R.R. Tolkien');


INSERT INTO genres (genrename) VALUES 
('Fantasy'),
('Dystopian'),
('Adventure');

INSERT INTO publishers (name) VALUES 
('Bloomsbury'),
('Penguin Books'),
('HarperCollins');


INSERT INTO books (title, authorid, genreid, publisherid, yearpublished)
VALUES
('Harry Potter and the Sorcerer''s Stone', 1, 1, 1, 1997),
('1984', 2, 2, 2, 1949),
('The Hobbit', 3, 3, 3, 1937);


SELECT 
    b.bookid,
    b.title,
    a.name AS author,
    g.genrename AS genre,
    p.name AS publisher,
    b.yearpublished
FROM books b
JOIN authors a ON b.authorid = a.authorid
JOIN genres g ON b.genreid = g.genreid
JOIN publishers p ON b.publisherid = p.publisherid;

