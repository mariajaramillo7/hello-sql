/*
DISTINCT
Lección 9.1: https://youtu.be/OuJerKzV5T0?t=6089
*/

--- Obtiene valores únicos (de una columna con duplicados)
SELECT DISTINCT _column1_, _column2, ..._  
FROM _table_name_;

- Obtiene todos los datos distintos entre sí de la tabla "users"
SELECT DISTINCT * FROM users;

- Obtiene todos los valores distintos referentes al atributo edad de la tabla "users"
SELECT DISTINCT age FROM users;
