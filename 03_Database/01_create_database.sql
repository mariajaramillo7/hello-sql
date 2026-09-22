# Sentencias DDL (Data Definition Language): se usan para crear y administrar bases de datos y sus objetos e.g. tablas. 
  
/*
CREATE DATABASE
Lección 12.1: https://youtu.be/OuJerKzV5T0?t=11064
*/

Crea una nueva base de datos. 
   CREATE DATABASE database_name; 

-- Crea una base de datos llamada "test"
CREATE DATABASE test;


# USE
Selecciona una DB para que las siguientes operaciones se ejecuten en ella.

Mostrar databases. 
Syntax for SQL Server
SELECT name FROM sys.databases;

Syntax for MySQL
SHOW DATABASES;
