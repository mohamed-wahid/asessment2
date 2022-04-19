CREATE DATABASE Pluto;
GO

USE Pluto
GO

CREATE TABLE Contacts (
    Id int IDENTITY(1,1) PRIMARY KEY,
    FirstName varchar(255),
    LastName varchar(255)
);
GO

INSERT INTO Contacts (FirstName, LastName) VALUES ('Patrik', 'Jönsson')
INSERT INTO Contacts (FirstName, LastName) VALUES ('Nisse', 'Pyssling')
INSERT INTO Contacts (FirstName, LastName) VALUES ('Anna', 'Hansen')
INSERT INTO Contacts (FirstName, LastName) VALUES ('Mumim', 'Troll')
INSERT INTO Contacts (FirstName, LastName) VALUES ('Karsten', 'Hesthave')

SELECT * FROM Contacts FOR JSON AUTO;