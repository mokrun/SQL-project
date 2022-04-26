# SQL-project
Description and implementation of my university SQL project
EIE36E Database Systems project:
Database for School Dependencies
Author: Artem Makurin
Introduction
This work designs a database that keeps track of school dependencies. It is
intended to be used on computers of class teachers and higher members of
school managerial community. It’s based on following assumptions:
• Each student has one or two parents, is allocated into one of the classes
and has one address.
• Each class has many students and many subjects but only one head
teacher.
• Each parent has one or many students enrolled and only one address.
• Each subject has only one garant but is taught in many classes.
• Each teacher teaches one or many subjects and heads one or none classes.
They only have one address.
This project does not address the problem of storage and ignores several
important attributes required in a real system.

Outline
1. Possible use cases for the model
2. Entity relationship diagrams
a. Conceptual ERD
b. Logical ERD
c. Physical ERD
3. SQL Implementation
a. DDL: Defining the database objects
b. DML: Inserting the data (examples)
c. SQL Queries
4. Conclusion

1. Possible use cases for the model
• Show every student in the class
• Return student’s parents’ phone numbers
• Show which class the person belongs to
• Show student’s address
• Show what subjects does a class have

2. Entity relationship diagrams
Following section shows proposed structure of the database using different entity
relationship diagrams. The diagrams were created in the most recent version of
Lucidcharts.
Figures 1-3 contain Conceptual, Logical and Physical ERDs.

3. SQL Implementation
SQL files 1 through 3 contain: 
a. Definition of database objects and their constraints
b. Filling the database with test data
c. Queries which demonstrate the relational design of the result database


4. Conclusion
This project is a basic proposal of a database that can be used in a school
environment. It defines essential database objects and shows practical use of the
system with included SQL queries. This project is a vital part of integrating a full
scale system in a workplace as it captures important details about the future
system.
