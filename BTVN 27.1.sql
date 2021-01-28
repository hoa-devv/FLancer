USE master
GO
CREATE DATABASE CodeLean
GO
CREATE TABLE Lophoc
(
ClassName char(6),
Teacher varchar(30),
TimeSlot varchar(30),
Class int,
Lab int,
)
GO
INSERT INTO Lophoc(ClassName, Teacher, TimeSlot, Class, Lab) 
				VALUES ('Toán' , 'Th?o', '3PM','111','222'),
						('V?n' ,'H?ng', '5PM' ,'333','444'),
						('Anh','Thu?n' ,'7AM' ,'555', '666')
GO
SELECT * FROM Lophoc

--T?o an unique,clustered index tên là MyClusteredIndex trên tr??ng ClassName
CREATE clustered index MyClusteredIndex ON Lophoc(ClassName)
GO
CREATE unique index MyClusteredIndexxx ON Lophoc(ClassName)
GO
DROP index TeacherIndex ON Lophoc
GO
ALTER index MyClusteredIndex ON Lophoc REBUILD WITH (FILLFACTOR=80)

--T?o 1 composite index 
CREATE INDEX ClassLabIndex ON  Lophoc(Class,Lab)
--Show all
exec sp_helpindex 'Lophoc'


--Bài 3 
CREATE TABLE Student
(
StudentNo int PRIMARY KEY,
StudentName nvarchar(50),
StudentAddress nvarchar(100),
PhoneNo int,
)
GO
INSERT INTO Student (StudentNo ,StudentName ,StudentAddress ,PhoneNo ) 
					VALUES (123,'Bùi V?n Hòa','Trung Kính',0376306599),
							(456,'L??ng Minh Ti?n','Nh?n',7372398232)
							


SELECT * FROM Student
GO
CREATE TABLE Department
(
DeptNo int PRIMARY KEY,
DeptName nvarchar(50),
ManagerName nvarchar(30),
)
GO

INSERT INTO Department (DeptNo ,DeptName ,ManagerName)
					VALUES (1,'Toán','Hòa'),
							(2,'V?n','Ti?n'),
							(3,'Anh','Ng?c Anh')
GO

SELECT * FROM Department

CREATE TABLE Assignment
(
AssignmentNo int PRIMARY KEY,
Descriptionn nvarchar(100)
)
INSERT INTO Assignment (AssignmentNo ,Descriptionn)
				VALUES (000,'Khó vl'),
						(999,'D? vl')
GO
SELECT* FROM Assignment 
GO

CREATE TABLE Works_Assign
(
JobID int PRIMARY KEY,
StudentNo int,
AssignmentNo int,
TotalHours int,
JobDetails nvarchar(450)
CONSTRAINT pk FOREIGN KEY(StudentNo) REFERENCES Student(StudentNo),
CONSTRAINT fk FOREIGN KEY(AssignmentNo) REFERENCES Assignment(AssignmentNo)
) 
GO
INSERT INTO Works_Assign (JobID ,StudentNo,AssignmentNo,TotalHours ,JobDetails) 
						VALUES (555,123,000,2,'khó vl'),
								(666,456,999,3,'d? vl')

--T?o 1 clustered 
CREATE clustered index  IX_Student ON Student(StudentNO)
GO

CREATE nonclustered index IX_Dept ON Department(DeptName,ManagerName)
GO










