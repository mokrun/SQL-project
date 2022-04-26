INSERT INTO Address (Address_ID, City, Street, ZIP_Code, House_number)
VALUES (1, 'Kladno', 'Foersterova', 27201, '2412');
INSERT INTO Address VALUES (2, 'Velvary', 'Sokolska', 27324, '348', 1);
INSERT INTO Teacher VALUES (1, 'Michal', 'Upal', 2018, '21/08/1975', 2);
INSERT INTO Class (Class_ID, Year_Started, Head_Teacher) VALUES (1, '2010', 1);
INSERT INTO Student (Student_ID, Name, Surname, Date_of_Birth, Address_ID,
Class_ID) VALUES (1, 'Greg', 'McGregor', '4/4/2001', 1, 1);
INSERT INTO Parent (Parent_ID, Name, Surname, Phone_number, Address_ID)
VALUES (1, 'Winston', 'McGregor', '420774149308', 1);
INSERT INTO Subject (Subject_ID, Name, Hours_per_semester, Garant_ID)
VALUES (1, 'General Algebra for sixthgraders', 39, 1);
INSERT INTO Student_Parent (Student_ID, Parent_ID) VALUES (1, 1);
INSERT INTO Class_Subject (Class_ID, Subject_ID) VALUES (1, 1);
INSERT INTO Subject_Teacher (Subject_ID, Teacher_ID) VALUES (1, 1);