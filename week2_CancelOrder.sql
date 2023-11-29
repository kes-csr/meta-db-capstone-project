DELIMITER //
CREATE PROCEDURE CancelOrder(IN Order_ID INT)
BEGIN
DELETE FROM Orders WHERE OrderID = Order_ID;
SELECT concat("Order ", Order_ID, " is cancelled!") AS Confirmation;
END//
DELIMITER ;