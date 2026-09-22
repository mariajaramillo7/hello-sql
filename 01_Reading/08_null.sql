/*
NULL
Lección 10.2: https://youtu.be/OuJerKzV5T0?t=7615
*/

Note: A NULL value represents an unknown or missing data in a database field. It is not a value itself, but a placeholder to indicate the absence of data.
  
SQL has some built-in functions to handle NULL values, and the most common functions are:

    COALESCE() - The preferred standard. (Works in MySQL, SQL Server and Oracle). Returns the first non.NULL VALUE IN A LIST OF VALUES.
  COALESCE(val1, val2, ...., val_n)
  
    IFNULL() - (MySQL) 
  IFNULL(expr, alt)
  
    ISNULL() - (SQL Server)
  ISNULL(expr, alt)
  
    NVL() - (Oracle)
  NVL(expr, alt)
  
    IsNull() - (MS Access)
  IsNull(expr)

  
-- Obtiene todos datos de la tabla "users" de la tabla "users" con email nulo
SELECT * FROM users WHERE email IS NULL;

-- Obtiene todos datos de la tabla "users" de la tabla "users" con email no nulo
SELECT * FROM users WHERE email IS NOT NULL;

-- Obtiene todos datos de la tabla "users" de la tabla "users" con email no nulo y edad igual a 15
SELECT * FROM users WHERE email IS NOT NULL AND age = 15;

Remove a NOT NULL CONSTRAINT 
 ALTER TABLE Persons
MODIFY COLUMN Age int NULL; 

/*
IFNULL
Lección 10.14: https://youtu.be/OuJerKzV5T0?t=10023
*/

-- Obtiene el nombre, apellido y edad de la tabla "users", y si la edad es nula la muestra como 0
SELECT name, surname, IFNULL(age, 0) AS age FROM users;

-- Here we replace NULL values with 0:
SELECT ProductName, Price * (InStock + IFNULL(InOrder, 0))
FROM Products; 
