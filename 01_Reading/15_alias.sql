/*
ALIAS
Lección 10.9: https://youtu.be/OuJerKzV5T0?t=8667
*/

Nombre temporal (Apodo) que se le asigna a una columna o tabla. Solo existe mientras dura la consulta y no cambia el nombre real en la base de datos. 

Alias for column:
SELECT column_name AS alias_name
FROM table_name;

Alias for table: útil al unir tablas 
SELECT column_name(s)
FROM table_name AS alias_name;

For spaces: use [square brackets] or "double quotes" (depende del programa)

-- Establece el alias 'Fecha de inicio en programación' a la columna init_date
SELECT name, init_date AS 'Fecha de inicio en programación' FROM users WHERE name = 'Brais'

-- Consulta igual que la anterior. Representa la posibilidad de usar comillas dobles para cadenas
SELECT name, init_date AS "Fecha de inicio en programación" FROM users WHERE name = "Brais"

--
