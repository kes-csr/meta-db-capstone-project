DELIMITER //
CREATE PROCEDURE UpdateBooking(IN booking_id INT, IN booking_date DATE)
BEGIN
UPDATE Bookings
SET BookingDate = booking_date WHERE BookingID = booking_id;
SELECT 
CASE
WHEN EXISTS (SELECT * from Bookings WHERE BookingID = booking_id AND BookingDate = Booking_Date) THEN CONCAT('Booking ', booking_id, ' updated.')
ELSE CONCAT('There is no booking with booking_id: ', booking_id)
END AS "Confirmation";
END //
DELIMITER ;

CALL UpdateBooking(88, '2022-10-15');