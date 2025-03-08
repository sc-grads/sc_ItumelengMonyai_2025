-- Create the Database

CREATE DATABASE AutoTest;

-- Switch to the database

USE AutoTest;

-- Create the User table

CREATE TABLE users (
	ID INT PRIMARY KEY IDENTITY(1,1),
	FirstName NVARCHAR(100),
	Surname NVARCHAR(100),
	Email NVARCHAR(100)
);

-- Create a stored procedure for inserting a user

CREATE PROCEDURE InsertUsers
	@Name NVARCHAR(100),
    @Surname NVARCHAR(100),
    @Email NVARCHAR(100)
AS
BEGIN
	INSERT INTO users (FirstName, Surname, Email)
	VALUES (@Name, @Surname, @Email);
END;

-- Create a login for the user

CREATE LOGIN Auto_user WITH PASSWORD = 'AutoUserPassword123';

-- Create a user for the database

USE AutoTest;
CREATE USER Auto_user FOR LOGIN Auto_user;

-- Grant the user full access to the database

ALTER ROLE db_owner ADD MEMBER Auto_user;
