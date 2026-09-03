/*
WHERE
Lección 9.2: https://youtu.be/OuJerKzV5T0?t=6384
*/

--- Obtiene registros que cumplen una condición específica (filtra los datos)
SELECT column1, column2, ...
FROM table_name
WHERE condition;

Puede usarse con SELECT, UPDATE, DELETE
Operadores: 
  - Matemáticos: = > < >= <= <> (o !=, depende de versión de SQL)
  - BETWEEN: entre un rango específico
  - LIKE: patrón 
  - IN: especifica múltiples valores posibles para una columna 
  - LÓGICOS: AND, OR, NOT

- Filtra todos los datos de la tabla "users" con edad igual a 15
SELECT * FROM users WHERE age = 15;

- Filtra todos los nombres de la tabla "users" con edad igual a 15
SELECT name FROM users WHERE age = 15;

- Filtra todos los nombres distintos de la tabla "users" con edad igual a 15
SELECT DISTINCT name FROM users WHERE age = 15;

- Filtra todas las edades distintas de la tabla "users" con edad igual a 15
SELECT DISTINCT age FROM users WHERE age = 15;
