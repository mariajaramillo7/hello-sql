/*
UNION (FULL JOIN)
Lección 17.4: https://youtu.be/OuJerKzV5T0?t=17536
*/

Obtiene todo lo de todas las tablas que estás uniendo, haya o no relaciones. 
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

