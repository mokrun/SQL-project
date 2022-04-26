# SQL-project
Description and implementation of my university SQL project

EIE36E Database Systems project:
\n Database for School Dependencies
\n Author: Artem Makurin

**Introduction**
\n This work designs a database that keeps track of school dependencies. It is
intended to be used on computers of class teachers and higher members of
school managerial community. It’s based on following assumptions:
\n • Each student has one or two parents, is allocated into one of the classes
and has one address.
\n • Each class has many students and many subjects but only one head
teacher.
\n • Each parent has one or many students enrolled and only one address.
\n • Each subject has only one garant but is taught in many classes.
\n • Each teacher teaches one or many subjects and heads one or none classes.
They only have one address.
\n This project does not address the problem of storage and ignores several
important attributes required in a real system.


**1. Possible use cases for the model**
\n • Show every student in the class
\n • Return student’s parents’ phone numbers
\n • Show which class the person belongs to
\n • Show student’s address
\n • Show what subjects does a class have

**2. Entity relationship diagrams**
Following section shows proposed structure of the database using different entity
relationship diagrams. The diagrams were created in the most recent version of
Lucidcharts.
\nFigures 1-3 contain Conceptual, Logical and Physical ERDs.

**3. SQL Implementation**
\n SQL files 1 through 3 contain: 
\n a. Definition of database objects and their constraints
\n b. Filling the database with test data
\n c. Queries which demonstrate the relational design of the result database


**4. Conclusion**
\n This project is a basic proposal of a database that can be used in a school
environment. It defines essential database objects and shows practical use of the
system with included SQL queries. This project is a vital part of integrating a full
scale system in a workplace as it captures important details about the future
system.
