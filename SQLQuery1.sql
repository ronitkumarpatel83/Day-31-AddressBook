create database address_book_service_DB;
use address_book_service_DB;
----------UC-2----------------
CREATE TABLE addressbook (
Serial_Number int identity(1,1) primary key,
First_Name varchar(200),
Last_Name varchar(200),
Address varchar(200),
City varchar(200),
State varchar(200),
Zip int,
Phone bigint,
Email varchar(200)
);
-------------UC-3---------------
INSERT INTO addressbook (First_Name,Last_Name,Address,City,State,Zip,Phone,Email)
VALUES ('Ronit','Patel','SNG','Sundergarh','Odisha',770001,7008427274,'ronitkumarpatel83@gmail.com'),
('Dibya','Jena','KJR','Keonjhar','Meghalaya',123456,1234567890,'dibyajena@gmail.com'),
('Aman','Patel','JSD','Jharsuguda','Bihar',236549,2345678910,'amanpatel@gmail.com'),
('Durgesh','Dash','PatraPada','Bangalore','Karnatak',345612,3654789120,'durgeshdash@gmail.com'),
('Amisha','Patel','Bhor','Pune','Maharastra',456123,4567891230,'amisha@gmail.com');
------------UC-4----------------
select * from addressbook;
UPDATE addressbook
SET Last_Name = 'Naik',Address ='RLD', City= 'BLS',State ='Odisha',Zip = 120021,Phone = 1122334455,Email = 'patelamisha@gmail.com'
WHERE First_Name = 'Amisha';
------------UC-5----------------
select * from addressbook;
DELETE FROM addressbook WHERE First_Name = 'Amisha';
