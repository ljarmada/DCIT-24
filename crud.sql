#CREATE - Creating and insert data into new Schemas and tables for Database
Create database CS2ADB;
Create table Students 
	(student_id int auto_increment primary key,
    student_lastname varchar(50) not null,
    student_firstname varchar(50) not null,
    student_middlename varchar(50),
    student_email varchar(100));
insert into students 
	(student_id, student_lastname, student_firstname, student_middlename, student_email)
values 
(<Student_ID_Value>, <Last_Name_Value>, <First_Name_Value>, <Middle_Name_Value>, <Email_Address>);
    
#READ - Reading the data from the schemas, tables from the database
Select * from students;
SELECT student_firstname, student_email from students where student_id = <Student_ID_Value>;
#UPDATE - Updating details that was already in the database
Update students set student_firstname = <First_Name_Value>, student_email= <Email_Address> where student_id = <Student_ID_Value>;
#DELETE - Deleting details in the database
DELETE from students where student_id = <Student_ID_Value>;