/*
INDEX
Lección 18.1: https://youtu.be/OuJerKzV5T0?t=18219
*/

Estructura que me permite indexar tablas (como el índice de un libro), para consultar y realizar operaciones más rápido.
PRIMARY INDEX (primarios): vinculados con clave primaria de la tabla
UNIQUE INDEX (únicos): asegura que dos filas de la tabla no tengan valores duplicados
compuestos: permiten usar dos o más columnas

Hay que decidir cuándo sí crearlos y cuándo no,  y con qué atributo. NO se deben crear siempre: pueden afectar rendimiento de la tabla
  - Un índice hace que la tabla pese más (puede llegar a que sea más ineficiente)
  - Cuando escribimos datos en la tabla, escritura va a ser más lenta, porque se escriben en tabla y se regenera el índice con el nuevo dato

Se nombran como quieras - pero es bueno empezar por idx_ para saber que es un índice.
Habitualmente las PRIMARY KEY suelen ser índices para buscar rápidamente por ellas.
  
-- Crea un índice llamado "idx_name" en la tabla "users" asociado al campo "name" (eg siempre hago búsquedas en esta tabla por nombre)
CREATE INDEX idx_name ON users(name);

-- Crea un índice único llamado "idx_name" en la tabla "users" asociado al campo "name"
CREATE UNIQUE INDEX idx_name ON users(name);

-- Crea un índice llamado "idx_name_surname" en la tabla "users" asociado a los campos "name" y "surname"
CREATE UNIQUE INDEX idx_name_surname ON users(name, surname);

-- Elimina el índice llamado "idx_name"
DROP INDEX idx_name ON users;
