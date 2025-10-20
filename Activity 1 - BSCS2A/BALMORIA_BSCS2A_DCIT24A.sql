-- Balmoria, Ahron James A. | BSCS - 2A
CREATE TABLE Books (
    BookID INT IDENTITY(1,1) PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    Authors VARCHAR(255) NOT NULL,
    ISBN VARCHAR(20) UNIQUE NOT NULL,
    Genre VARCHAR(100),
    Publisher VARCHAR(255),
    PublicationYear INT,
    Language VARCHAR(50),
    Description TEXT  
);

INSERT INTO Books (Title, Authors, ISBN, Genre, Publisher, PublicationYear, Language, Description) VALUES
('To Kill a Mockingbird', 'Harper Lee', '978-0061120084', 'Fiction/Classic', 'J.B. Lippincott & Co.', 1960, 'English', 'A gripping tale of racial injustice and childhood innocence in the American South.'),
('1984', 'George Orwell', '978-0451524935', 'Science Fiction/Dystopian', 'Secker & Warburg', 1949, 'English', 'A dystopian social science fiction novel and cautionary tale about totalitarianism.'),
('The Great Gatsby', 'F. Scott Fitzgerald', '978-0743273565', 'Fiction/Classic', 'Charles Scribner\'s Sons', 1925, 'English', 'A portrait of the Jazz Age in all of its decadence and excess.'),
('Sapiens', 'Yuval Noah Harari', '978-0062316097', 'Non-Fiction/History', 'Harper', 2015, 'English', 'A brief history of humankind exploring how Homo sapiens came to dominate the world.');

SELECT * FROM Books;

SELECT BookID, Title, PublicationYear FROM Books WHERE Authors = 'George Orwell';

SELECT Title, Genre, Publisher FROM Books WHERE ISBN = '978-0743273565';

SELECT Title, Authors, PublicationYear FROM Books WHERE Genre LIKE '%Fiction%';

UPDATE Books 
SET Publisher = 'HarperCollins', 
    Genre = 'Non-Fiction/Anthropology' 
WHERE BookID = 4;

SELECT * FROM Books WHERE BookID = 4;

DELETE FROM Books WHERE BookID = 2;

SELECT * FROM Books;