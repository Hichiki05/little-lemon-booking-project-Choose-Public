CREATE DATABASE IF NOT EXISTS LittleLemonDB;
USE LittleLemonDB;

DROP TABLE IF EXISTS OrderDeliveryStatus;
DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS Bookings;
DROP TABLE IF EXISTS Menus;
DROP TABLE IF EXISTS MenuItems;
DROP TABLE IF EXISTS Employees;
DROP TABLE IF EXISTS Customers;

CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT,
    FullName VARCHAR(150) NOT NULL,
    ContactNumber VARCHAR(20),
    Email VARCHAR(150),
    PRIMARY KEY (CustomerID)
);

CREATE TABLE Employees (
    EmployeeID INT AUTO_INCREMENT,
    FullName VARCHAR(150) NOT NULL,
    Role VARCHAR(100),
    Salary DECIMAL(10,2),
    PRIMARY KEY (EmployeeID)
);

CREATE TABLE MenuItems (
    MenuItemID INT AUTO_INCREMENT,
    ItemName VARCHAR(150) NOT NULL,
    ItemType VARCHAR(100),
    Price DECIMAL(10,2),
    PRIMARY KEY (MenuItemID)
);

CREATE TABLE Menus (
    MenuID INT AUTO_INCREMENT,
    MenuItemID INT,
    Cuisine VARCHAR(100),
    PRIMARY KEY (MenuID),
    FOREIGN KEY (MenuItemID) REFERENCES MenuItems(MenuItemID)
);

CREATE TABLE Bookings (
    BookingID INT AUTO_INCREMENT,
    BookingDate DATE NOT NULL,
    TableNumber INT NOT NULL,
    CustomerID INT,
    EmployeeID INT,
    PRIMARY KEY (BookingID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);

CREATE TABLE Orders (
    OrderID INT AUTO_INCREMENT,
    BookingID INT,
    CustomerID INT,
    MenuID INT,
    Quantity INT NOT NULL,
    TotalCost DECIMAL(10,2),
    PRIMARY KEY (OrderID),
    FOREIGN KEY (BookingID) REFERENCES Bookings(BookingID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (MenuID) REFERENCES Menus(MenuID)
);

CREATE TABLE OrderDeliveryStatus (
    DeliveryID INT AUTO_INCREMENT,
    OrderID INT,
    DeliveryDate DATE,
    Status VARCHAR(100),
    PRIMARY KEY (DeliveryID),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);
