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
------------UC-5-----------------
select * from addressbook;
DELETE FROM addressbook WHERE First_Name = 'Amisha';
-------------UC-6----------------
select * from addressbook;
select * from addressbook WHERE City = 'Jharsuguda';
select * from addressbook WHERE State = 'Meghalaya';
-------------UC-7----------------
select * from addressbook;
SELECT COUNT(City) as Number_of_City FROM addressbook;
SELECT COUNT(State) as Number_of_State FROM addressbook;
--------------UC-8----------------
SELECT * FROM addressbook ORDER BY City;
SELECT * FROM addressbook ORDER BY State;
--------------UC-9----------------
SELECT * FROM addressbook;
ALTER TABLE addressbook Add Type varchar(50);
UPDATE addressbook SET Type = 'Family' WHERE First_Name = 'Aman';
UPDATE addressbook SET Type = 'Friend' WHERE First_Name = 'Dibya';
UPDATE addressbook SET Type = 'Profession' WHERE First_Name = 'Durgesh';
SELECT * FROM addressbook WHERE Type = 'Family';
--------------UC-10----------------
SELECT * FROM addressbook;
SELECT COUNT(Type) as Number_of_Type from addressbook;
--------------UC-11----------------
SELECT * FROM addressbook;
INSERT INTO addressbook (First_Name,Last_Name,Address,City,State,Zip,Phone,Email,Type)
VALUES ('Ashok','Patel','BLS','SNGH','Odisha',770091,1236547890,'ashokpatel@gmail.com','Family');
INSERT INTO addressbook (First_Name,Last_Name,Address,City,State,Zip,Phone,Email,Type)
VALUES ('Ashok','Patel','BLS','SNGH','Odisha',770091,1236547890,'ashokpatel@gmail.com','Friend');
--------------UC-12----------------

create table Contacttype( cont_id int primary key identity(1,1),
Contacttype_Name varchar(255),
Contacttype_id int FOREIGN KEY REFERENCES addressbook(Serial_Number));
create table AddressDetails(
Contact_ID int identity(1,1) primary key,
FirstName varchar(100),
SecondName varchar(100),
Address varchar(250),
City varchar(100),
State varchar(100),
zip BigInt,
PhoneNumber BigInt,
Email varchar(200),
Contacttype_id int FOREIGN KEY REFERENCES addressbook(Serial_Number));

create table person( person_id int primary key identity(1,1),
person_name varchar(255),
Contacttype_id int FOREIGN KEY REFERENCES addressbook(Serial_Number));

select * from addressbook;
----------------UC-13---------------
select * from addressbook;
-----------------------------------------------------
select * from addressbook WHERE City = 'Jharsuguda';
select * from addressbook WHERE State = 'Meghalaya'
------------------------------------------------------
SELECT COUNT(City) as Number_of_City FROM addressbook;
SELECT COUNT(State) as Number_of_State FROM addressbook;
--------------------------------------------------------
SELECT * FROM addressbook ORDER BY City;
SELECT * FROM addressbook ORDER BY State;
------------------------------------------------------
SELECT COUNT(Type) as Number_of_Type from addressbook;
