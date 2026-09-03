/*
HAVING
Lección 10.12: https://youtu.be/OuJerKzV5T0?t=9265
*/

- Filtra grupos de registros creados por la cláusula GROUP BY, usando funciones de agregación como COUNT, SUM o AVG.
  Similar a WHERE pero aplicado después de agrupar. 
  
SELECT column1, aggregate_function(column2), column3, ...
FROM table_name
WHERE condition
GROUP BY column1, column3
HAVING condition -- The condition on grouped data
ORDER BY column_name;

-- Cuenta cuantas filas contienen un dato no nulo en el campo edad de la tabla "users" mayor que 3
SELECT COUNT(age) FROM users HAVING COUNT(age) > 3
