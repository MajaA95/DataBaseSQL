----CREATE DATABASE SEDC

--USE SEDC

--CREATE TABLE dbo.Customer (

--Id INT NOT NULL,
--FirstName NVARCHAR(20) NOT NULL,
--LastName NVARCHAR(50) NOT NULL,
--City NVARCHAR(50) NULL

--)


---- INSERT VALUES INTO TABLE
--INSERT INTO dbo.Customer (Id,FirstName,LastName,City)
--VALUES (1,'Dana','Tasevska','London')

--INSERT INTO dbo.Customer (Id,FirstName,LastName,City)
--VALUES (2,'Maja','Apostolova','Skopje')

--INSERT INTO dbo.Customer (Id,FirstName,LastName,City)
--VALUES (3,'Zare','Ilievski','Berlin')

--=--READ VALUES from table

--SELECT *  --ako sakame firstname i last name pr gi pisuvame i tie gi dava so * SITE KOLONI
--FROM dbo.Customer
--WHERE CITY = 'London' and FirstName = 'Dana'

--DROP TABLE dbo.Customer -- se brise tabela kako objekt

--CREATE TABLE dbo.Customer(
--Id INT IDENTITY(1,1),
--FirstName NVARCHAR (20) NOT NULL,
--LastName NVARCHAR(50) NOT NULL,
--City NVARCHAR(50) NULL,
--CONSTRAINT PK_Customer PRIMARY KEY CLUSTERED (Id)

--)

--INSERT INTO dbo.Customer (FirstName,LastName,City)
--VALUES ('Dana','Stojanovska','Viena')

--INSERT INTO dbo.Customer (FirstName,LastName,City)
--VALUES ('Maja','Apostolova','Skopje')

--SELECT *
--FROM dbo.Customer

--UPDATE dbo.Customer
--SET City = 'Berlin'
--WHERE Id = 3

----DELETES ROWS

--DELETE FROM dbo.Customer
--WHERE Id  = 1

--SELECT *
--FROM dbo.Customer

--INSERT INTO dbo.Customer(FirstName,LastName,City)
--VALUES ('FAFAF','FAFAD','GHGHG')

--TRUNCATE TABLE dbo.Customer --BRISEE SEEE

--CREATE TABLE dbo.BusinessEntity (

--Id INT NOT NULL,
--Name NVARCHAR(20) NOT NULL,
--Region NVARCHAR(50) NOT NULL,
--ZipCode NVARCHAR(50) NULL

--)

CREATE DATABASE SEDCACADEMYDB

CREATE TABLE dbo.Students(
Id INT IDENTITY(1,1),
FirstName nvarchar (50) NOT NULL,
LastName nvarchar (50) NOT NULL,
DateOfBirth date NOT NULL,
EnrolledDate date NOT NULL,
Gender nchar NOT NULL,
NationallDNumber int NOT NULL,
StudentCardNumber int NOT NULL,
CONSTRAINT PK_Customer PRIMARY KEY CLUSTERED (Id) -- wrong name
)

CREATE TABLE dbo.Teacher(
Id INT IDENTITY(1,1),
FirstName nvarchar (50) NOT NULL,
LastName nvarchar (50) NOT NULL,
DateOfBirth date NOT NULL,
AcademicRank int NOT NULL,
HireDate date NOT NULL,
CONSTRAINT PK_Teacher PRIMARY KEY CLUSTERED (Id)
)

CREATE TABLE dbo.Grade(
Id INT IDENTITY(1,1),
StudentID int NOT NULL,
CourseId int NOT NULL,
TeacherId int NOT NULL,
Grade int NOT NULL,
Comment nvarchar(1000) NULL,
CreatedDate date NOT NULL,
CONSTRAINT PK_Grade PRIMARY KEY CLUSTERED (Id)
)

CREATE TABLE dbo.Course(
Id INT IDENTITY(1,1),
Name nvarchar NOT NULL,
Credit int NOT NULL,
AcademicYear tinyint NOT NULL,
Semester tinyint NOT NULL,
CONSTRAINT PK_Course PRIMARY KEY CLUSTERED (Id)
)

CREATE TABLE dbo.GradeDetails(
Id INT IDENTITY(1,1),
GradeID tinyint NOT NULL,
AchivmentTypeID tinyint NOT NULL,
AchivmentPoints int NOT NULL,
AchivmentMaxPoints int NOT NULL,
AchivmentDate date NOT NULL,
CONSTRAINT PK_GradeDetails PRIMARY KEY CLUSTERED (Id)
)

CREATE TABLE dbo.AchivmentType(
Id INT IDENTITY(1,1),
Name nvarchar NOT NULL,
Description nvarchar NULL,
ParticipationRate int NOT NULL,
CONSTRAINT PK_AchivmentType PRIMARY KEY CLUSTERED (Id)
)




