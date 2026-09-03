# JOIN: relaciona dos o más tablas. Combina filas de dos o más tablas basándose en una columna común.
SELECT A.columna, B.columna
FROM TablaA A
[INNER|LEFT|RIGHT] JOIN TablaB B
ON A.col_comun = B.col_comun;

/*
INNER JOIN (JOIN)
Lección 17.1: https://youtu.be/OuJerKzV5T0?t=16101
*/

Obtiene datos comunes (filas que coinciden) de 2 o más tablas. Pueden ir en ambos sentidos (cualquiera de las dos tablas seleccionada, pero la que ponga primero en SELECT sale de primera).
En la mayoría de bases de datos INNER JOIN es lo mismo que JOIN. 
  
-- Realiza un JOIN de manera incorrecta, ya que no existe un campo de relación
SELECT * FROM users
INNER JOIN dni;

-- Obtiene los datos de los usuarios que tienen un dni. Solo me muestra las filas que coinciden. 
SELECT * FROM users
INNER JOIN dni
ON users.user_id = dni.user_id;

-- Obtiene los datos de los usuarios que tienen un dni 
SELECT * FROM users
JOIN dni
ON users.user_id = dni.user_id;

-- Obtiene el nombre y el dni de los usuarios que tienen un dni y los ordena por edad
SELECT name, dni_number FROM users
JOIN dni
ON users.user_id = dni.user_id
ORDER BY age ASC;

-- Obtiene los datos de los usuarios que tienen empresa
SELECT * FROM users
JOIN companies
ON users.company_id = companies.company_id;

-- Obtiene los datos de las empresas que tienen usuarios
SELECT * FROM companies
JOIN users
ON users.company_id = companies.company_id;

-- Obtiene el nombre de las empresas junto al nombre de sus usuarios
SELECT companies.name, users.name FROM companies
JOIN users
ON companies.company_id = users.company_id;

-- Obtiene los nombres de usuarios junto a los lenguajes que conocen
SELECT users.name, languages.name
FROM users_languages
JOIN users ON users_languages.user_id=users.user_id
JOIN languages ON users_languages.language_id=languages.language_id;

-- Obtiene los nombres de usuarios junto a los lenguajes que conocen (utilizando otro orden de relación entre tablas, da el mismo resultado)
SELECT users.name, languages.name
FROM users
JOIN users_languages ON users.user_id=users_languages.user_id
JOIN languages ON users_languages.language_id=languages.language_id;
