# Nilo, Iris Joyce G. | BSCS 2A
# CRUD

# ----- TABLE 1 - BOOKS TABLE -----
# CREATE ----------------------------------------------------
CREATE database LIBRARY;
CREATE table Books
	(book_id int auto_increment primary key,
    book_title varchar(50) not null,
    book_author varchar(50) not null,
    book_isbn varchar(17) unique,
    book_genre varchar(100),
    book_publisher varchar(50),
	book_publication_year YEAR,
    book_language varchar(50),
    book_abstract TEXT
    );
    
insert into Books
	(book_title, book_author, book_isbn, book_genre, book_publisher, book_publication_year, book_language, book_abstract)
    
#values 
#( '<Book_Title_Value>', '<Book_ISBN_Value>', '<Book_Genre_Value>', '<Book_Publisher_Address>', '<Book_Publication_Year_Value>', '<Book_Language_Value>', '<Book_Abstract_Value>');

#Example data ↓ 
 values
 ('Little Mushroom', 'Mo Xiang Tong Xiu', '978-0-321-54325-7', 'Fiction', 'Jiuzhou Publishing House', '2002', 'Chinese', 
 'A blend of sci-fi and male-male romance set in a world devastated by cosmic radiation, where mutated creatures and humans struggle to survive.');

# READ ----------------------------------------------------

Select * from Books;

#SELECT book_title, book_id from Books where book_isbn = '<Book_ISBN_Value>';

# Example data ↓
SELECT book_title, book_id from Books where book_isbn = '978-0-321-54325-7';

# UPDATE ----------------------------------------------------

#Update books set book_title = '<Book_Title_Value>', book_publisher = '<Book_Publisher_Value>' where book_id = '<Book_ID_Value>';

# Example data ↓
UPDATE Books set book_title = 'Little Mushroom', book_publisher = 'Jiuzhou Publishing House' where book_id = 1;

# DELETE ----------------------------------------------------

#DELETE from books where book_id = '<Book_ID_Value>';

# Example data ↓
DELETE from Books where book_id = 1;

# ----- TABLE 2 - AUTHORS TABLE -----
# CREATE ----------------------------------------------------
CREATE table Authors
	(author_id int auto_increment primary key,
    author_name varchar(50) not null,
    author_nationality varchar(50),
    author_gender varchar(50),
	author_email  varchar (100)
    );
    
insert into Authors
	(author_name, author_nationality, author_gender, author_email)
    
#values 
#( '<Author_Name_Value>', '<Author_Nationality_Value>', '<Author_Gender_Value>', '<Author_Email_Address>');

#Example data ↓ 
 values
 ('Mo Xiang Tong Xiu', 'Chinese', 'Female', 'moxiangtongxiu@163.com');

# READ ----------------------------------------------------

Select * from Authors;

#SELECT author_name, author_id from Authors where author_email = '<Author_Email_Address>';

# Example data ↓
SELECT author_name, author_id from Authors where author_email = 'moxiangtongxiu@163.com';

# UPDATE ----------------------------------------------------

#UPDATE Authors set author_name = '<Author_Name_Value>', author_email = '<Author_Email_Address>' where book_id = '<Author_ID_Value>';

# Example data ↓
UPDATE Authors set author_name = 'Mo Xiang Tong Xiu', author_email = 'moxiangtongxiu@163.com' where author_id = 1;

# DELETE ----------------------------------------------------

#DELETE from Authors where author_id = '<Author_ID_Value>';

# Example data ↓
DELETE from Authors where author_id = 1;


# ----- TABLE 3 - PUBLISHERS TABLE -----
# CREATE ----------------------------------------------------
CREATE table Publishers
	(publisher_id int auto_increment primary key,
    publisher_name varchar(50) not null,
    publisher_address varchar(100) not null,
    publisher_email varchar(100),
	publisher_website  varchar (100)
    );
    
insert into Publishers
	(publisher_name, publisher_address,  publisher_email, publisher_website)
    
#values 
#( '<Publisher_Name_Value>', '<Publisher_Address_Value>', '<Publisher_Email_Address>', '<Publisher_Website_Value>');

#Example data ↓ 
 values
 ('Jiuzhou Publishing House', '76 Dongshui Lu Fuzhou Fujian China', 'jiuzhoupublishinghouse@163.com', 'https://www.jiuzhoupress.com');

# READ ----------------------------------------------------

Select * from Publishers;

#SELECT publisher_name, publisher_id from Publishers where publisher_email = '<Publisher_Email_Address>';

# Example data ↓
SELECT publisher_name, publisher_id from Publishers where publisher_email = 'jiuzhoupublishinghouse@163.com';

# UPDATE ----------------------------------------------------

#UPDATE Publishers set publisher_name = '<Publisher_Name_Value>', publisher_email = '<Publisher_Email_Address>' where publisher_id = <Publisher_ID_Value>;

# Example data ↓
UPDATE Publishers set publisher_name = 'Jiuzhou Publishing House', publisher_email = 'jiuzhoupublishinghouse@163.com' where publisher_id = 1;

# DELETE ----------------------------------------------------

#DELETE from Publishers where publisher_id = '<Publisher_ID_Value>';

# Example data ↓
DELETE from Publishers where publisher_id = 1;