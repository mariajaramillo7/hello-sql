The EXISTS operator is used in a WHERE clause to check whether a subquery returns any rows.

The EXISTS operator evaluates to TRUE if the subquery returns at least one row, and FALSE otherwise.

SELECT column_name(s)
FROM table_name
WHERE EXISTS (subquery); 
