CREATE DATABASE GroceryStore
GO

--SQL_Latin1_General_CP1251_CI_AS
ALTER DATABASE GroceryStore
COLLATE SQL_Latin1_General_CP1251_CI_AS
GO

USE GroceryStore
GO

CREATE TABLE Products(
	Id int PRIMARY KEY IDENTITY (1, 1),
	Product_name NVARCHAR(50) NOT NULL,
	Product_description NVARCHAR(250) NULL
)
GO

CREATE TABLE Categories(
	Id int PRIMARY KEY IDENTITY (1, 1),
	Category_name NVARCHAR(50) NOT NULL,
	Category_description NVARCHAR(250) NOT NULL
)
GO

CREATE TABLE Categories_Products(
	Product_Id int REFERENCES Products(Id),
	Category_Id int REFERENCES Categories(Id),

	CONSTRAINT Categories_Products_PK PRIMARY KEY (Product_Id, Category_Id)
)
GO