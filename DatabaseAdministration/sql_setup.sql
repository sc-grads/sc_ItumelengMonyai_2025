CREATE DATABASE AutoTest;
GO
  
USE AutoTest;
CREATE TABLE user (
    Name NVARCHAR(100),
    Surname NVARCHAR(100),
    Email NVARCHAR(100) PRIMARY KEY
);
GO

USE AutoTest;
CREATE PROCEDURE InsertUser (@Name NVARCHAR(100), @Surname NVARCHAR(100), @Email NVARCHAR(100))
AS
BEGIN
    INSERT INTO user (Name, Surname, Email)
    VALUES (@Name, @Surname, @Email);
END;
GO

CREATE LOGIN Auto_user WITH PASSWORD = 'your_password_here';
CREATE USER Auto_user FOR LOGIN Auto_user;
ALTER ROLE db_owner ADD MEMBER Auto_user;
GO

