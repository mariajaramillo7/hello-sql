/*
COUNT
Lección 10.4: https://youtu.be/OuJerKzV5T0?t=8043
*/

-- Cuenta cuantas filas contiene la tabla "users"
Select COUNT(*) FROM users;

-- Cuenta cuantas filas contienen un dato no nulo en el campo edad de la tabla "users"
Select COUNT(age) FROM users;

-- Contar # de registros únicos de una columna.
SELECT COUNT(DISTINCT column_name) FROM database;

-- Ejemplo: contar tags únicas en Miami
SELECT COUNT(DISTINCT tags) FROM products WHERE city = 'Miami'
