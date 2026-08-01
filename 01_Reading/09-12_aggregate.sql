# AGGREGATE FUNCTIONS 
  Realizan cálculos. 
  Se usan comúnmente junto con GROUP BY para dividir el resultado en grupos y luego con el aggregate function se regresa un valor único para cada grupo. 


COUNT() - returns the number of rows in a set
SUM() - returns the sum of a numerical column
AVG() - returns the average value of a numerical column

/*
Lección 10.3 a 10.6: https://youtu.be/OuJerKzV5T0?t=7834
*/

# MIN MAX 
Funciona con tipos de datos numéricos, string o date.
 
-- MIN() - returns the smallest value of a column
SELECT MIN(column_name)
FROM table_name
WHERE condition;

SELECT MIN(Price) AS SmallestPrice # La nueva columna no tiene nombre a menos que lo asignes.
FROM Products;

SELECT MIN(Price) AS SmallestPrice, CategoryID
FROM Products
GROUP BY CategoryID; 

- Obtiene el valor menor del campo edad de la tabla "users"
Select MIN(age) FROM users;

-- MAX() - returns the largest value of a column
SELECT MAX(column_name)
FROM table_name
WHERE condition;

-- Obtiene el valor mayor del campo edad de la tabla "users"
Select MAX(age) FROM users;

SELECT MAX(Price) AS HighestPrice
FROM Products;

SELECT MAX(Price) AS HighestPrice, CategoryID
FROM Products
GROUP BY CategoryID;

# COUNT
Te dice el # de filas que cumplen un criterio específico. 

SELECT COUNT([DISTINCT] column_name | *)
FROM table_name
WHERE condition;

Se pueden usar distintos argumentos en el paréntesis:
COUNT(*) - Counts the total number of rows in a table (including NULL values).
COUNT(columnname) - Counts all non-null values in the column.
COUNT(DISTINCT columnname) - Counts only the unique, non-null values in the column.

Puedes juntarlo con WHERE 
  SELECT COUNT(ProductID)
FROM Products
WHERE Price > 20;

Se puede usar junto con GROUP BY para contar por cada categoría. 
SELECT COUNT(*) AS [Number of records], CategoryID
FROM Products
GROUP BY CategoryID;

-- Cuenta cuantas filas contiene la tabla "users"
Select COUNT(*) FROM users;

-- Cuenta cuantas filas contienen un dato no nulo en el campo edad de la tabla "users"
Select COUNT(age) FROM users;

-- Contar # de registros únicos de una columna.
SELECT COUNT(DISTINCT column_name) FROM database;

-- Ejemplo: contar tags únicas en Miami
SELECT COUNT(DISTINCT tags) FROM products WHERE city = 'Miami'


# SUM
Suma todos los valores de una columna numérica. Ignora valores NULL.

SELECT SUM(column_name)
FROM table_name
WHERE condition;

Se puede agregar una condición con WHERE
  
Se puede usar junto con GROUP BY para regresar suma de cada categoría
SELECT OrderID, SUM(Quantity) AS [Total Quantity]
FROM OrderDetails
GROUP BY OrderID;

Se puede hacer un cálculo dentro del parámetro 
SELECT SUM(Quantity * 10)
FROM OrderDetails;


  
-- Suma todos los valores del campo edad de la tabla "users"
Select SUM(age) FROM users;

# AVG
Cálcula el promedio de una columna numérica. Ignora valores NULL. 

SELECT AVG(column_name)
FROM table_name
WHERE condition;

Se puede agregar una condición con WHERE
  
Se puede usar junto con GROUP BY para regresar promedo de cada categoría
SELECT AVG(Price) AS AveragePrice, CategoryID
FROM Products
GROUP BY CategoryID;

Higher than average: list all records with a higher price than average
SELECT * FROM Products
WHERE Price > (SELECT AVG(Price) FROM Products);
  

-- Obtiene la media de edad de la tabla "users"
Select AVG(age) FROM users;
