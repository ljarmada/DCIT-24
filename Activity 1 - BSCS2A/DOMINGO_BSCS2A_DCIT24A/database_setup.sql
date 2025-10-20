CREATE DATABASE booksactivity;

USE booksactivity;

CREATE TABLE publishers (
    publisherId INT AUTO_INCREMENT PRIMARY KEY,
    publisherName VARCHAR(100) NOT NULL,
    publisherEmail VARCHAR(100),
    publisherAddress VARCHAR(150)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE books (
    bookID VARCHAR(50) PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    authors VARCHAR(100),
    isbn VARCHAR(20) UNIQUE,
    category VARCHAR(50),
    publisherId INT,
    publicationDate VARCHAR(20),
    language VARCHAR(50),
    description TEXT,

    FOREIGN KEY (publisherId) REFERENCES publishers(publisherId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE students (
    studentId INT AUTO_INCREMENT PRIMARY KEY,
    lastName VARCHAR(50),
    firstName VARCHAR(50),
    middleName VARCHAR(50),
    email VARCHAR(100)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE borrow_records (
    recordId INT AUTO_INCREMENT PRIMARY KEY,
    studentId INT,
    bookID VARCHAR(50),
    borrowDate DATE,
    returnDate DATE,
    status VARCHAR(20),

    FOREIGN KEY (studentId) REFERENCES students(studentId),
    FOREIGN KEY (bookID) REFERENCES books(bookID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


/*
    TEMPLATE FOR CRUD

    CREATE: 
        INSERT INTO publishers (publisherName, 
                                publisherEmail, 
                                publisherAddress)

        VALUES ('sample1', 
                'sample1@gmail.com', 
                'sample1street'),

                ('sample2', 
                'sample2@gmail.com', 
                'sample2street'),

                ('sample3', 
                'sample3@gmail,com', 
                'sample3street');

    READ:
        SELECT * FROM publishers;
        
        SELECT * FROM publishers WHERE publisherId = 1;

    UPDATE: 
        UPDATE publishers

        SET 
            publisherName = 'updatesample',
            publisherEmail = 'updatesample@gmail.com',
            publisherAddress = 'updatesamplestreet'

        WHERE publisherId = 1;

    DELETE:
        DELETE FROM publishers WHERE publisherId = 3;

*/

#DATA FOR PUBLISHER

INSERT INTO publishers (publisherName, 
                        publisherEmail, 
                        publisherAddress)

VALUES ('sample1', 
        'sample1@gmail.com', 
        'sample1street'),

        ('sample2', 
        'sample2@gmail.com', 
        'sample2street'),

        ('sample3', 
        'sample3@gmail.com', 
        'sample3street');

#DATA FOR BOOKS

INSERT INTO books (bookID, 
                    title, 
                    authors,
                    isbn,
                    category,
                    publisherId,
                    publicationDate,
                    language,
                    description)

VALUES ('B001', 
        'sample book one', 
        'sample author',
        '1234567890',
        'Horror',
        1,
        '2000-02-20',
        'Tagalog',
        'this is a sample book'),

        ('B002', 
        'sample book two', 
        'sample author',
        '0987654321',
        'Fantasy',
        2,
        '2015-12-12',
        'Bisaya',
        'this is a sample book');

#DATA FOR STUDENTS 

INSERT INTO students (studentId, 
                        lastName, 
                        firstName,
                        middleName,
                        email)

VALUES (202410001, 
        'tralala', 
        'tralalero',
        'S',
        'tralalero.tralala@cvsu.edu.ph'),

        (202410002, 
        'sahur', 
        'tung tung tung',
        'G',
        'tungtungtung.sahur@cvsu.edu.ph');

#DATA FOR BORROWED BOOKS

INSERT INTO borrow_records (recordId, 
                            studentId, 
                            bookID,
                            borrowDate,
                            returnDate,
                            status)

VALUES (1, 
        202410001, 
        'B001',
        '2025-10-01',
        '2025-10-2',
        'returned');

#PRINTING THE OUTPUT

SELECT * FROM publishers;
SELECT * FROM books;
SELECT * FROM students;
SELECT * FROM borrow_records;

#UPDATING

UPDATE publishers

    SET 
        publisherName = 'updatesample',
        publisherEmail = 'updatesample@gmail.com',
        publisherAddress = 'updatesamplestreet'

    WHERE publisherId = 1;

#DELETING

DELETE FROM publishers WHERE publisherId = 3;

#SEE THE CURRENT CHANGES

SELECT * FROM publishers;

# OPTIONAL : DELETE THE COMMENTS TO RUN PROPERLY
# USE " DROP DATABASE db_name; " TO DROP THE DATABASE
# USE " DROP TABALE table_name " TO DROP THE TABLE