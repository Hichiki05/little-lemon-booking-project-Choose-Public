USE LittleLemonDB;

CALL GetMaxQuantity();

CALL ManageBooking('2022-10-10', 5);

CALL AddBooking(7, 3, '2022-12-17', 6);

CALL UpdateBooking(7, '2022-12-18');

CALL CancelBooking(7);

SELECT
    b.BookingID,
    b.BookingDate,
    b.TableNumber,
    c.FullName AS CustomerName,
    e.FullName AS EmployeeName
FROM Bookings b
LEFT JOIN Customers c ON b.CustomerID = c.CustomerID
LEFT JOIN Employees e ON b.EmployeeID = e.EmployeeID;

SELECT
    o.OrderID,
    c.FullName AS CustomerName,
    mi.ItemName,
    o.Quantity,
    o.TotalCost
FROM Orders o
LEFT JOIN Customers c ON o.CustomerID = c.CustomerID
LEFT JOIN Menus m ON o.MenuID = m.MenuID
LEFT JOIN MenuItems mi ON m.MenuItemID = mi.MenuItemID;
