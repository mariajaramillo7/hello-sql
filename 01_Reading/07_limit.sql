/*
LIMIT
Lección 9.6: https://youtu.be/OuJerKzV5T0?t=7395
*/

--- Limita # de registros a extraer. Es bueno siempre empezar con LIMIT al empezar a conocer los datos para evitar overwhelm tu output.
Se hace con LIMIT, SELECT TOP o FETCH FIRST dependiendo del programa.
- OFFSET: decirle cuántas filas saltarse antes de empezar a regresar datos del query. 

# LIMIT: MySQL, PostgreSQL, and SQLite
  - Permite offsets 
  - No permite porcentajes ni maneja empates

SELECT column_name(s)
FROM table_name
WHERE condition
LIMIT number;

- Obtiene las 3 primeras filas de la tabla "Customers"
  SELECT * FROM Customers
  LIMIT 3;
- SELECT * FROM Customers
  WHERE Country = 'Germany'
  LIMIT 3;
- Obtiene las 2 primeras filas de la tabla "users" con email distinto a sara@gmail.com o edad igual a 15
SELECT * FROM users WHERE NOT email = 'sara@gmail.com' OR age = 15 LIMIT 2;

# SELECT TOP: MS SQL Server, MS Access
  - No permite offsets → requiere OFFSET-FETCH
  - Maneja porcentajes (TOP 10 PERCENT) y empates (TOP 10 WITH TIES)

SELECT TOP number|percent column_name(s)
FROM table_name
WHERE condition;

- SELECT TOP 3 * FROM Customers;
- SELECT TOP 50 PERCENT * FROM Customers;
- SELECT TOP 3 * FROM Customers
  WHERE Country = 'Germany';
- SELECT TOP 10 * FROM Employees ORDER BY Salary DESC;

# FETCH FIRST: oficial standard ANSI SQL. Uso: Oracle, DB2, PostgreSQL
  - Permite offsets (OFFSET 20 ROWS FETCH)
  - Maneja porcentajes (FETCH FIRST 10 PERCENT ROWS ONLY) y empates (FETCH FIRST 10 ROWS WITH TIES)

SELECT column_name(s)
FROM table_name
ORDER BY column_name(s)
FETCH FIRST number ROWS ONLY;

  - SELECT * FROM Customers
  FETCH FIRST 3 ROWS ONLY;
  - SELECT * FROM Customers
  FETCH FIRST 50 PERCENT ROWS ONLY;
  - SELECT * FROM Customers
  WHERE Country = 'Germany'
  FETCH FIRST 3 ROWS ONLY;





