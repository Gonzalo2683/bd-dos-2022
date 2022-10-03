SELECT *
FROM Products p
WHERE EXISTS (SELECT * FROM Suppliers s WHERE s.Country = 'USA' AND s.SupplierID = p.SupplierID);

SELECT p.ProductName
FROM Products p
WHERE p.SupplierID IN (SELECT s.SupplierID FROM Suppliers s WHERE s.Country = 'USA');