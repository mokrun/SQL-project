--Show student’s classmates
Select Name, Surname From Student Where Class_ID = (Select Class_ID
From Student Where Surname = 'McGregor');
--Return student’s parents’ phone numbers
Select Parent.Phone_number, Parent.Surname From Parent Inner Join
Student_Parent On Parent.Parent_ID = Student_Parent.Parent_ID Inner
Join Student On Student_Parent.Student_ID = Student.Student_ID Where
Student.Student_ID = (Select Student_ID From Student Where Name =
'Greg' AND Surname = 'McGregor');
--Show Head Teacher of a student
Select Name , Surname From Teacher Where Teacher_ID = (Select
Head_Teacher From Class Where Class_ID = (Select Class_ID From Student
Where Surname LIKE 'McGregor%'));
--Show student’s address
Select City, Street, ZIP_Code, House_number, Apartment_number From
Address Where Address_ID = (Select Address_ID From Student Where
Name LIKE 'Greg%');
--Show what subjects does a class have
Select Subject.Name, Subject.Hours_per_semester From Subject Inner Join
Class_Subject On Subject.Subject_ID = Class_Subject.Subject_ID Inner Join
Class On Class_Subject.Class_ID = Class.Class_ID Where Class.Class_ID = 1;