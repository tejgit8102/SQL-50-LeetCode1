DELETE 
FROM Person
WHERE id NOT IN (
    SELECT min_id 
    FROM (
        SELECT email, MIN(id) AS min_id
        FROM Person
        GROUP BY email
    ) temp1
);
