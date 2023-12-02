-- Since booking table alread populated, tasks booking id starts 31 and arrival slot added to the query according design 
INSERT INTO Bookings(BookingDate,TableNo,ArrivalSlot,Customer_ID,Employee_ID)
VALUES 
('2022-10-10', 5, 'Evening', 4, 6),
('2022-11-12', 3, 'Evening', 6, 6),
('2022-10-11', 2, 'Evening', 5, 6),
('2022-10-13', 2, 'Evening', 4, 6);
