The EXISTS operator is used in a WHERE clause to check whether a subquery returns any rows.

The EXISTS operator evaluates to TRUE if the subquery returns at least one row, and FALSE otherwise.

SELECT column_name(s)
FROM table_name
WHERE EXISTS (subquery); 

--- The following SQL checks if any suppliers has a product with a price lower than 10. If the subquery evaluates to TRUE; list the suppliers with a product price less than 10:
SELECT SupplierName
FROM Suppliers
WHERE EXISTS (
  SELECT ProductName
  FROM Products
  WHERE Products.SupplierID = Suppliers.supplierID AND Price < 10
); 



----

The ANY operator is used to compare a value to every value returned by a subquery.
The ANY operator evaluates to TRUE if at least one value in the subquery result-set meet the condition.

SELECT column_name(s)
FROM table_name
WHERE column_name operator ANY (subquery); 

The operator must be a standard comparison operator (=, <>, !=, >, >=, <, or <=).
  
---The following SQL returns the ProductName if it finds ANY records in the "OrderDetails" table that has Quantity equal to 10 (this will return TRUE because the Quantity column has some values of 10):
  SELECT ProductName FROM Products
WHERE ProductID = ANY (
  SELECT ProductID
  FROM OrderDetails
  WHERE Quantity = 10
); 

-----
The ALL operator is used to compare a value to every value returned by a subquery.

The ALL operator evaluates to TRUE if every value in the subquery result-set meet the condition.

The ALL operator is typically used with WHERE and HAVING statements.

 SELECT column_name(s)
FROM table_name
WHERE column_name operator ALL (subquery); 

The operator must be a standard comparison operator (=, <>, !=, >, >=, <, or <=).


---The following SQL returns the ProductName if ALL the records in the "OrderDetails" table has Quantity equal to 10. This will of course return FALSE because the Quantity column has many different values (not only the value of 10):
SELECT ProductName
FROM Products
WHERE ProductID = ALL (
  SELECT ProductID
  FROM OrderDetails
  WHERE Quantity = 10
); 

