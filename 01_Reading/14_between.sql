/*
BETWEEN
Lección 10.8: https://youtu.be/OuJerKzV5T0?t=8559
*/

Se usa junto con WHERE para seleccionar valores dentro de un rango. 
  El rango es inclusivo: incluye valores de inicio y fin. Valores pueden ser números, texto o fechas. 

SELECT column_name(s)
FROM table_name
WHERE column_name BETWEEN value1 AND value2;

-- Ordena todos los datos de la tabla "users" con edad comprendida entre 20 y 30
SELECT * FROM users WHERE age BETWEEN 20 AND 30

-- Returns all products with a price NOT between 10 and 20:
SELECT * FROM Products
WHERE Price NOT BETWEEN 10 AND 20;

--  Select all products with a ProductName alphabetically between 'Geitost' and 'Louisiana Hot Spiced Okra':
SELECT * FROM Products
WHERE ProductName BETWEEN 'Geitost' AND 'Louisiana Hot Spiced Okra'
ORDER BY ProductName;

--  Selects all orders placed in July, 1996:
SELECT * FROM Orders
WHERE OrderDate BETWEEN '1996-07-01' AND '1996-07-31';
