The INSERT INTO SELECT statement is used to copy data from an existing table and insert it into another existing table.

The INSERT INTO SELECT statement requires that the data types in source and target tables match.

Note: The existing records in the target table are unaffected.

Copy all columns from one table to another table:
INSERT INTO target_table
SELECT * FROM source_table
WHERE condition;

Note: If you omit the column names, the number and order of columns in the source and target tables must be exactly the same!

Copy only some columns from one table to another table:
INSERT INTO target_table (column1, column2, column3, ...)
SELECT column1, column2, column3, ...
FROM source_table
WHERE condition;
