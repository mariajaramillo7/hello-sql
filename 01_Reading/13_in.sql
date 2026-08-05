/*
IN
Lección 10.7: https://youtu.be/OuJerKzV5T0?t=8335
*/

# Se usa con WHERE para revisar si el valor de una columna coincide con cualquier valor dentro de una lista o subconsulta. 
  Sirve para abreviar múltiples condiciones OR.

SELECT column_name(s)
FROM table_name
WHERE column_name IN (value1, value2, ...);

-- Ordena todos los datos de la tabla "users" con nombre igual a brais y sara
SELECT * FROM users WHERE name IN ('brais', 'sara')

# NOT IN. Para revisar registros que NO son valores en la lista 
# IN (SELECT). Subonculsta. Filtra registros en una tabla principal cuando un valor consulte con cualquier valor dentro de una lista. 

SELECT * FROM table_name
WHERE column_name IN (SELECT other_column FROM other_table)

-- Regresa todos los customers que también tienen una orden en la tabla Orders.
SELECT * FROM Customers
WHERE CustomerID IN (SELECT CustomerID FROM Orders);
  
NOT IN (SELECT) 

-- Regresa todos los customers qeu NO tienen órdenes en la tabla Orders.
  SELECT * FROM Customers
WHERE CustomerID NOT IN (SELECT CustomerID FROM Orders);
