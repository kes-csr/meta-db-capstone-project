SELECT Orders.CustomerID, Customers.FirstName, Customers.LastName, Orders.OrderID, Orders.TotalCost, Orders.MenuID, MenuItems.Course, MenuItems.Starter
FROM Orders 
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID
INNER JOIN Menus ON Orders.MenuID = Menus.MenuID
INNER JOIN MenuItems ON Menus.MenuItemsID = MenuItems.MenuItemsID
WHERE Orders.TotalCost > 150;