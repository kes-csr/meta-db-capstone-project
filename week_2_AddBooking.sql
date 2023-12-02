-- Arrival slot and employee_id added to the query according to design 
DELIMITER //
CREATE PROCEDURE AddBooking(IN booking_date DATE, IN table_no INT, IN slot VARCHAR(45),IN customer_id INT, IN employee_id INT)
BEGIN
INSERT INTO Bookings(BookingDate, TableNo, ArrivalSlot, Customer_ID, Employee_ID) VALUES(booking_date, table_no, slot, customer_id, employee_id);
SELECT 
CASE
WHEN EXISTS (SELECT * from Bookings WHERE BookingDate = Booking_Date AND TableNo = Table_No AND ArrivalSLot = Slot AND Customer_ID = customer_id) THEN 'New booking added.'
ELSE "Something went wrong while adding the booking!"
END AS "Confirmation";
END //
DELIMITER ;

CALL AddBooking('2022-10-14', 8, 'Evening', 10, 6);
