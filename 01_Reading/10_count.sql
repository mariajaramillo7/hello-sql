/*
COUNT
Lección 10.4: https://youtu.be/OuJerKzV5T0?t=8043
*/

-- Cuenta cuantas filas contiene la tabla "users"
Select COUNT(*) FROM users;

-- Cuenta cuantas filas contienen un dato no nulo en el campo edad de la tabla "users"
Select COUNT(age) FROM users;

-- Contar # de unique quieres de una columna.
SELECT COUNT(DISTINCT column_name) FROM database;


SELECT **COUNT(*column1*) FROM Customers;
