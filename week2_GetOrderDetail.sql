PREPARE GetOrderDetail FROM 'SELECT OrderID, Quantity, TotalCost FROM Orders WHERE CustomerID = ?';

SET @id = 4;

EXECUTE GetOrderDetail USING @id;