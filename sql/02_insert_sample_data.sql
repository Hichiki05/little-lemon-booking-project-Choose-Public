USE LittleLemonDB;

INSERT INTO Customers (CustomerID, FullName, ContactNumber, Email) VALUES
(1, 'Anna Iversen', '555-0101', 'anna@example.com'),
(2, 'Joakim Iversen', '555-0102', 'joakim@example.com'),
(3, 'Vanessa McCarthy', '555-0103', 'vanessa@example.com'),
(4, 'Marcos Romero', '555-0104', 'marcos@example.com'),
(5, 'Hiroki Yamane', '555-0105', 'hiroki@example.com'),
(6, 'Diana Pinto', '555-0106', 'diana@example.com');

INSERT INTO Employees (EmployeeID, FullName, Role, Salary) VALUES
(1, 'John Miller', 'Receptionist', 3000.00),
(2, 'Maria Garcia', 'Waiter', 2800.00),
(3, 'George Wilson', 'Head Chef', 5000.00),
(4, 'Fatma Kaya', 'Assistant Chef', 3800.00),
(5, 'Ali Hassan', 'Manager', 5500.00);

INSERT INTO MenuItems (MenuItemID, ItemName, ItemType, Price) VALUES
(1, 'Greek Salad', 'Starter', 12.00),
(2, 'Bruschetta', 'Starter', 10.00),
(3, 'Pizza Margherita', 'Main Course', 18.00),
(4, 'Pasta Carbonara', 'Main Course', 20.00),
(5, 'Lemon Dessert', 'Dessert', 8.00),
(6, 'Turkish Coffee', 'Drink', 6.00);

INSERT INTO Menus (MenuID, MenuItemID, Cuisine) VALUES
(1, 1, 'Greek'),
(2, 2, 'Italian'),
(3, 3, 'Italian'),
(4, 4, 'Italian'),
(5, 5, 'Mediterranean'),
(6, 6, 'Turkish');

INSERT INTO Bookings (BookingID, BookingDate, TableNumber, CustomerID, EmployeeID) VALUES
(1, '2022-10-10', 5, 1, 1),
(2, '2022-11-12', 3, 2, 1),
(3, '2022-10-11', 2, 3, 4),
(4, '2022-10-13', 2, 4, 2),
(5, '2022-10-14', 4, 5, 3),
(6, '2022-10-15', 1, 6, 5);

INSERT INTO Orders (OrderID, BookingID, CustomerID, MenuID, Quantity, TotalCost) VALUES
(1, 1, 1, 3, 2, 36.00),
(2, 2, 2, 4, 1, 20.00),
(3, 3, 3, 1, 3, 36.00),
(4, 4, 4, 6, 4, 24.00),
(5, 5, 5, 5, 2, 16.00),
(6, 6, 6, 2, 5, 50.00);

INSERT INTO OrderDeliveryStatus (DeliveryID, OrderID, DeliveryDate, Status) VALUES
(1, 1, '2022-10-10', 'Delivered'),
(2, 2, '2022-11-12', 'Delivered'),
(3, 3, '2022-10-11', 'In progress'),
(4, 4, '2022-10-13', 'Delivered'),
(5, 5, '2022-10-14', 'Cancelled'),
(6, 6, '2022-10-15', 'Delivered');
