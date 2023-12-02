-- Arrival slot added to the query according to design 
DELIMITER //
CREATE PROCEDURE CheckBooking(IN Booking_Date DATE, IN Table_No INT, IN Slot VARCHAR(45))
BEGIN
SELECT 
CASE
WHEN EXISTS (SELECT * from Bookings WHERE BookingDate = Booking_Date AND TableNo = Table_No AND ArrivalSLot = Slot) THEN CONCAT('Table ', Table_No, ' is already booked.')
ELSE "Table is available."
END AS "Booking Status";
END//
DELIMITER ;


CALL CheckBooking('2022-11-12', 3, 'Evening');
