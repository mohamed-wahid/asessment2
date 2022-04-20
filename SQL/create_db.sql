CREATE DATABASE Pluto;
GO

USE Pluto
GO

CREATE TABLE Contacts (
    Id int IDENTITY(1,1) PRIMARY KEY,
    FirstName varchar(255),
    LastName varchar(255),
    PhoneNumber varchar(255),
);
GO

INSERT INTO Contacts (FirstName, LastName, PhoneNumber) VALUES ('Patrik', 'Jönsson', '070 000 22 55')
INSERT INTO Contacts (FirstName, LastName, PhoneNumber) VALUES ('Nisse', 'Pyssling', '070 000 22 55')
INSERT INTO Contacts (FirstName, LastName, PhoneNumber) VALUES ('Anna', 'Hansen', '070 000 22 55')
INSERT INTO Contacts (FirstName, LastName, PhoneNumber) VALUES ('Mumim', 'Troll', '070 000 22 55')
INSERT INTO Contacts (FirstName, LastName, PhoneNumber) VALUES ('Karsten', 'Hesthave', '070 000 22 55')
INSERT INTO Contacts (FirstName, LastName, PhoneNumber) VALUES ('Karsten', 'Hesthave', '070 000 22 55')

SELECT * FROM Contacts FOR JSON AUTO;