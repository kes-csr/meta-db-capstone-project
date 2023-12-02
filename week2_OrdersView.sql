CREATE VIEW OrdersView AS
SELECT OrderID AS 'OrderID', Quantity AS 'Quantity',TotalCost AS 'TotalCost'
FROM Orders
WHERE Quantity > 2;


SELECT * FROM OrdersView;
