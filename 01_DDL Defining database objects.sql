CREATE TABLE Student (Student_ID number(10), Name varchar2(50) NOT NULL,
Surname varchar2(50) NOT NULL, Date_of_Birth date NOT NULL, Address_ID
number(10) NOT NULL, Class_ID number(10) NOT NULL, PRIMARY KEY
(Student_ID));

CREATE TABLE Address (Address_ID number(10), City varchar2(50) NOT NULL,
Street varchar2(50) NOT NULL, ZIP_Code number(8) NOT NULL, House_number
varchar2(4) NOT NULL, Apartment_number number(3), PRIMARY KEY
(Address_ID));

CREATE TABLE Parent (Parent_ID number(10), Name varchar2(50) NOT NULL,
Surname varchar2(50) NOT NULL, Phone_number number(12) NOT NULL,
Address_ID number(10) NOT NULL, PRIMARY KEY (Parent_ID));

CREATE TABLE Teacher (Teacher_ID number(10), Name varchar2(50) NOT NULL,
Surname varchar2(50) NOT NULL, Year_joined number(4) NOT NULL,
Date_of_Birth date NOT NULL, Address_ID number(10) NOT NULL, PRIMARY KEY
(Teacher_ID));

CREATE TABLE Class (Class_ID number(10), Year_started number(4) NOT NULL,
Head_Teacher number(10) NOT NULL, PRIMARY KEY (Class_ID));

CREATE TABLE Subject (Subject_ID number(10), Name varchar2(50) NOT NULL,
Hours_per_semester number(3) NOT NULL, Garant_ID number(10) NOT NULL,
PRIMARY KEY (Subject_ID));

CREATE TABLE Student_Parent (Student_ID number(10) NOT NULL, Parent_ID
number(10) NOT NULL, PRIMARY KEY (Student_ID, Parent_ID));

CREATE TABLE Class_Subject (Class_ID number(10) NOT NULL, Subject_ID
number(10) NOT NULL, PRIMARY KEY (Class_ID, Subject_ID));

CREATE TABLE Subject_Teacher (Subject_ID number(10) NOT NULL, Teacher_ID
number(10) NOT NULL, PRIMARY KEY (Subject_ID, Teacher_ID));

ALTER TABLE Student ADD CONSTRAINT lives_at FOREIGN KEY (Address_ID)
REFERENCES Address (Address_ID);
ALTER TABLE Student ADD CONSTRAINT is_part_of FOREIGN KEY (Class_ID)
REFERENCES Class (Class_ID);
ALTER TABLE Parent ADD CONSTRAINT lives_in FOREIGN KEY (Address_ID)
REFERENCES Address (Address_ID);
ALTER TABLE Class ADD CONSTRAINT headed_by FOREIGN KEY (Head_Teacher)
REFERENCES Teacher (Teacher_ID);
ALTER TABLE Teacher ADD CONSTRAINT lives_on FOREIGN KEY (Address_ID)
REFERENCES Address (Address_ID);
ALTER TABLE Subject ADD CONSTRAINT garanted_by FOREIGN KEY (Garant_ID)
REFERENCES Teacher (Teacher_ID);

