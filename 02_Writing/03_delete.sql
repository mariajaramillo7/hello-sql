/*
DELETE
Lección 11.3: https://youtu.be/OuJerKzV5T0?t=10920
*/

--- Elimina registros de una tabla. 
DELETE FROM table_name
WHERE condition;

WHERE: especifica qué registros eliminar. OJO: si la omites, se eliminan todos los registros. 

- Elimina el registro de la tabla "users" con identificador igual a 11
DELETE FROM users WHERE user_id = 11;

--- Eliminar todos los registros: borra todo, sin borrar la tabla - mantiene estructura, atributos e indexes. 
DELETE FROM table_name;

--- Elimina la tabla por completo. 
DROP TABLE table_name;
