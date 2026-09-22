/*
UNION (FULL JOIN)
Lección 17.4: https://youtu.be/OuJerKzV5T0?t=17536
*/

Obtiene todo lo de todas las tablas que estás uniendo, haya o no relaciones. Sale como FULL JOIN o FULL OUTER JOIN

  SELECT column_name(s) FROM table1
UNION
SELECT column_name(s) FROM table2; 

Note: If some customers or suppliers have the same country, each country will only be listed once, because UNION selects only distinct values. Use UNION ALL to also select duplicate values!
  
  SELECT column_name(s)
FROM table1
FULL JOIN table2
ON table1.column_name = table2.column_name
WHERE condition;

El problema es que en MySQL en concreto no existe este concepto de FULL JOIN - existe comando UNION (unir todo lo de una tabla con todo lo de otra tabla, PERO tengo que decirle con qué relacionarlo)
El operador UNION permite combinar verticalmente los resultados de dos o más
consultas SELECT. Las columnas de las consultas a unir deben ser del mismo
número y tipo, ya que el UNION apila las filas de resultados. Por defecto, UNION
elimina duplicados entre los resultados combinados; si se desea conservar todas
las filas (incluyendo duplicados), se puede usar UNION ALL.


  
En algunas DB sale como  FULL OUTER JOIN
  
-- UNION elimina duplicados
-- UNION ALL mantiene duplicados
  
-- Obtiene todos los id de usuarios de las tablas dni y usuarios (exista o no relación)
SELECT users.user_id AS u_user_id, dni.user_id AS d_user_id
FROM users
LEFT JOIN dni
ON users.user_id = dni.user_id
UNION
SELECT users.user_id AS user_id, dni.user_id AS d_user_id
FROM users
RIGHT JOIN dni
ON users.user_id = dni.user_id;

-- Obtiene todos los datos de las tablas dni y usuarios (exista o no relación)
SELECT *
FROM users
LEFT JOIN dni
ON users.user_id = dni.user_id
UNION
SELECT *
FROM users

  RIGHT JOIN dni
ON users.user_id = dni.user_id;

  -- Union ALL
The following SQL returns all the countries (also duplicate values) from both the "Customers" and the "Suppliers" table:
  SELECT Country FROM Customers
UNION ALL
SELECT Country FROM Suppliers
ORDER BY Country;



