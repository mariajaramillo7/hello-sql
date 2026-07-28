/*
CASE
Lección 10.13: https://youtu.be/OuJerKzV5T0?t=9486
*/

--- Define distintos resultados basado en condiciones específicas → es como un if-then-else statement, revisa las condiciones y para en la primera que sea TRUE.
Si ninguna es TRUE, regresa el valor en el ELSE clasue. Si no hay ELSE, regresa NULL.

Resultados pueden ser:
Strings
Números
Booleans
Dates - Times
Null values
	
SELECT *,
CASE
  WHEN condition1 THEN result1
  WHEN condition2 THEN result2
  WHEN conditionN THEN resultN
  ELSE default_result
END AS nombre_alias
FROM table_name;

-- Obtiene todos los datos de la tabla "users" y establece condiciones de visualización de cadenas de texto según el valor de la edad 
SELECT *,
CASE 
	WHEN age > 18 THEN 'Es mayor de edad'
    WHEN age = 18 THEN 'Acaba de cumplir la mayoría de edad'
    ELSE 'Es menor de edad'
END AS '¿Es mayor de edad?'
FROM users;

-- Obtiene todos los datos de la tabla "users" y establece condiciones de visualización de valores booleanos según el valor de la edad 
SELECT *,
CASE 
	WHEN age > 17 THEN True
    ELSE False
END AS '¿Es mayor de edad?'
FROM users;
