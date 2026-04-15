DELETE FROM Person 
WHERE Id NOT IN (
    SELECT sub.min_id FROM (
        SELECT MIN(Id) as min_id 
        FROM Person 
        GROUP BY Email
    ) sub
);