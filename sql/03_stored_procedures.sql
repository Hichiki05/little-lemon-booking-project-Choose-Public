USE LittleLemonDB;

DROP PROCEDURE IF EXISTS GetMaxQuantity;
DROP PROCEDURE IF EXISTS ManageBooking;
DROP PROCEDURE IF EXISTS UpdateBooking;
DROP PROCEDURE IF EXISTS AddBooking;
DROP PROCEDURE IF EXISTS CancelBooking;

DELIMITER //

CREATE PROCEDURE GetMaxQuantity()
BEGIN
    SELECT MAX(Quantity) AS MaxQuantity
    FROM Orders;
END //

CREATE PROCEDURE ManageBooking(
    IN booking_date DATE,
    IN table_number INT
)
BEGIN
    DECLARE booking_count INT DEFAULT 0;

    SELECT COUNT(*)
    INTO booking_count
    FROM Bookings
    WHERE BookingDate = booking_date
      AND TableNumber = table_number;

    IF booking_count > 0 THEN
        SELECT CONCAT('Table ', table_number, ' is already booked') AS 'Booking status';
    ELSE
        SELECT CONCAT('Table ', table_number, ' is available') AS 'Booking status';
    END IF;
END //

CREATE PROCEDURE UpdateBooking(
    IN booking_id INT,
    IN new_booking_date DATE
)
BEGIN
    UPDATE Bookings
    SET BookingDate = new_booking_date
    WHERE BookingID = booking_id;

    SELECT CONCAT('Booking ', booking_id, ' updated') AS Confirmation;
END //

CREATE PROCEDURE AddBooking(
    IN booking_id INT,
    IN customer_id INT,
    IN booking_date DATE,
    IN table_number INT
)
BEGIN
    INSERT INTO Bookings (BookingID, BookingDate, TableNumber, CustomerID)
    VALUES (booking_id, booking_date, table_number, customer_id);

    SELECT 'New booking added' AS Confirmation;
END //

CREATE PROCEDURE CancelBooking(
    IN booking_id INT
)
BEGIN
    DELETE FROM Bookings
    WHERE BookingID = booking_id;

    SELECT CONCAT('Booking ', booking_id, ' cancelled') AS Confirmation;
END //

DELIMITER ;
