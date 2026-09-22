/*
DROP TABLE
Lección 13.8: https://youtu.be/OuJerKzV5T0?t=12412
*/

Elimina una tabla completa y todos sus datos.

DROP TABLE table_name; 

To prevent an error from occur (if the table does not exists), it is a good practice to add the IF EXISTS clause:
DROP TABLE IF EXISTS table_name;

Note: In most databases you cannot drop a table that is referenced by a foreign key constraint in another table. To solve this, you must remove the foreign key constraint or drop the dependent table.
  
-- Elimina la tabla llamada "persons8"
DROP TABLE persons8;


Truncate table. The TRUNCATE TABLE statement is used to delete all the records in a table, but it keeps the table structure, columns and constraints.
 TRUNCATE TABLE table_name; 
