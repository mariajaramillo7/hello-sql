/*
SELECT
Lección 8: https://youtu.be/OuJerKzV5T0?t=5618
*/

--- Extrae/obtiene datos de una base de datos. Consulta datos de una o varias tablas en una base de datos relacionar.
SELECT _column1_, _column2, ..._  
FROM _table_name_;

SELECT *  # Usa * para recuperar todas las columnas
FROM table_name;

Con otras cláusulas: 
SELECT column_name
FROM table_name
WHERE condition
DISTINCT 
ORDER BY ASC/DESC
LIMIT number;
  
  - Obtiene todos los datos de la tabla "users"
SELECT * FROM users;

- Obtiene todos los nombres de la tabla "users"
SELECT name FROM users;

- Obtiene todos los identificadores y nombres de la tabla "users"
SELECT user_id, name FROM users;
