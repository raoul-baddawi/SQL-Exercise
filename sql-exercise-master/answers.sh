Basic Queries:

1-SELECT DISTINCT name FROM students;

2-SELECT DISTINCT name FROM students WHERE Age=30;

3-SELECT DISTINCT name FROM students WHERE Gender='F' and Age=30;

4-SELECT Points from students WHERE name like 'Alex';

5-INSERT INTO students VALUES ('7',' Raoul', '21','M','0');

6-UPDATE students SET Points='700' WHERE name='Basma';

7-UPDATE students SET Points='170' WHERE name='Alex';

Creating table:

8-CREATE TABLE "graduates" (
	"ID"	INTEGER NOT NULL,
	"Name"	TEXT NOT NULL UNIQUE,
	"Age"	INTEGER,
	"Gender"	TEXT,
	"Points"	INTEGER,
	"Graduation"	TEXT,
	PRIMARY KEY("ID" AUTOINCREMENT)
);
INSERT INTO graduates ('ID', 'name', 'Age','Gender','Points')
SELECT ID, name, Age,Gender,Points
FROM students WHERE name='Layal';

9- UPDATE graduates
set Graduation='08/09/2018' WHERE name='Layal';

10- DELETE FROM students WHERE name='Layal';