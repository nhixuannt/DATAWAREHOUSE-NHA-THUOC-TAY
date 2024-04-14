Create database LongChau
Go
--dim_Customer
CREATE TABLE Customer (
CustomerID	INT PRIMARY KEY,
Year_birth INT NOT NULL,
Gender NVARCHAR (3) NOT NULL,
CustomerCategoryID VARCHAR(4) NOT NULL
);

--dim_Customer category
CREATE TABLE  CustomerCategory(
CustomerCategoryID VARCHAR(4) PRIMARY KEY,
CustomerCategoryName NVARCHAR(20) NOT NULL
);

--dim_Employee
CREATE TABLE Employee(
EmployeeID INT PRIMARY KEY,
EmployeeName NVARCHAR (100) NOT NULL,
EmployeePhone NVARCHAR (10) NOT NULL,
);

--dim_Time
CREATE TABLE  Time (
DateID VARCHAR(8) PRIMARY KEY,
FullDate DATE NOT NULL,
Year INT NOT NULL,
Quarter INT NOT NULL,
Month INT NOT NULL,
Day INT NOT NULL,
DayofWeek	INT NOT NULL,
WeekofMonth INT NOT NULL,
WeekofYear INT NOT NULL,
);
set dateformat dmy

--dim_Store
CREATE TABLE Store (
RegionID INT NOT NULL,
CityID INT NOT NULL,
DistrictID NVARCHAR (15) NOT NULL,
StoreID NVARCHAR (15) PRIMARY KEY,
Address NVARCHAR (255) NOT NULL
);

--dim_Region
CREATE TABLE Region (
RegionID INT PRIMARY KEY,
RegionName NVARCHAR (50) NOT NULL
); 
--dim_City
CREATE TABLE City (
CityID INT PRIMARY KEY,
CityName NVARCHAR (50) NOT NULL
);

--dim_District
CREATE TABLE District (
DistrictID NVARCHAR (15) PRIMARY KEY,
DistrictName NVARCHAR (50) NOT NULL
); 

--dim_Category
CREATE TABLE Category (
CategoryID NVARCHAR (15) PRIMARY KEY,
CategoryName NVARCHAR (50) NOT NULL
);

--dim_Brand 
CREATE TABLE Brand (
BrandID NVARCHAR (15) PRIMARY KEY,
BrandName NVARCHAR (50) NOT NULL
);
   

--dim_Packaging
CREATE TABLE Packaging (
PackagingID NVARCHAR (15) PRIMARY KEY,
PackagingName NVARCHAR (50) NOT NULL
); 

--dim_Product
CREATE TABLE Product (
ProductID NVARCHAR (15) PRIMARY KEY,
ProductName NVARCHAR (200) NOT NULL,
Price DECIMAL(10, 2) NOT NULL,
CategoryID NVARCHAR (15) NOT NULL,
BrandID NVARCHAR (15) NOT NULL,
PackagingID NVARCHAR (15) NOT NULL
);

--dim_PaymentMethod
CREATE TABLE PaymentMethod (
MethodID NVARCHAR (15) PRIMARY KEY,
MethodName NVARCHAR (50) NOT NULL
);
--fact_Sales
CREATE TABLE Sales (
OrderID INT NOT NULL,
CustomerID	INT NOT NULL,
EmployeeID INT NOT NULL ,
StoreID NVARCHAR (15) NOT NULL,
DateID VARCHAR(8) NOT NULL,
ProductID NVARCHAR (15) NOT NULL,
Quantity INT NOT NULL,
Total REAL NOT NULL,
MethodID NVARCHAR (15) NOT NULL,
);
