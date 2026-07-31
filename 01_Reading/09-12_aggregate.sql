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
-- Cuenta cuantas filas contiene la tabla "users"
Select COUNT(*) FROM users;

-- Cuenta cuantas filas contienen un dato no nulo en el campo edad de la tabla "users"
Select COUNT(age) FROM users;

-- Contar # de registros únicos de una columna.
SELECT COUNT(DISTINCT column_name) FROM database;

-- Ejemplo: contar tags únicas en Miami
SELECT COUNT(DISTINCT tags) FROM products WHERE city = 'Miami'


# SUM
-- Suma todos los valores del campo edad de la tabla "users"
Select SUM(age) FROM users;

# AVG
-- Obtiene la media de edad de la tabla "users"
Select AVG(age) FROM users;
