-- Arrival slot, employee_id added to the query according to design 
DELIMITER //
CREATE PROCEDURE AddValidBooking(IN booking_date DATE, IN table_no INT, IN slot VARCHAR(45),IN customer_id INT, IN employee_id INT)
BEGIN
DECLARE booking_count INT DEFAULT 0;
START TRANSACTION;
INSERT INTO Bookings(BookingDate, TableNo, ArrivalSlot, Customer_ID, Employee_ID) VALUES(booking_date, table_no, slot, customer_id, employee_id);
SET booking_count = (SELECT Count(*) FROM Bookings WHERE (BookingDate = booking_date AND TableNo = table_no AND ArrivalSLot = slot));
IF booking_count = 1 THEN Commit;
SELECT 'Booking successful.' as 'Booking status';
ELSE ROLLBACK;
SELECT CONCAT('Table ', table_no, ' is already booked-booking cancelled!') as 'Booking status';
END IF;
COMMIT;
END //
DELIMITER ;


-- to check
CALL AddValidBooking('2022-10-13', 7, 'Evening', 9, 6);
