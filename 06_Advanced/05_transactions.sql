/*
TRANSACTIONS
Lección 18.5: https://youtu.be/OuJerKzV5T0?t=20501
*/

Algo que se ejecuta en bloque y asegura que eso solo se ejecute si está bien hecha. 
  Puedo indicarle iniciar transacción, lanzarla, luego revisar si lo que hice está bien. (por ej actualicé un campo que no quiero actualizar, o que no quiero que permita números negativos).
  Si correcto - commit / si no, me puedo devolver con rollback.
  
-- Inicia una nueva transacción. Desde este punto, todas las modificaciones realizadas en la
-- base de datos son temporales y solo son visibles dentro de esta transacción
START TRANSACTION

-- Finaliza una transacción con éxito. Cuando se ejecuta, todos los cambios realizados en la
-- base de datos durante la transacción actual se hacen permanentes y visibles
COMMIT

-- Deshace las operaciones realizadas en una transacción, revirtiendo la base de datos
-- al estado en que se encontraba antes de iniciar la transacción
ROLLBACK
