SELECT email
FROM Person
GROUP BY email 
HAVING COUNT(email) > 1;

/* 

GROUP BY email: This tells SQL to collect all rows with the same email address into "buckets."
COUNT(email): Within each bucket, SQL counts how many rows exist.
HAVING: This is like a WHERE clause, but specifically for groups. It filters out any bucket that has a count of 1 (unique emails), leaving only the duplicates.
Why not just use WHERE?
We cannot use WHERE COUNT(email) > 1 because the WHERE clause filters individual rows before they are grouped. Since we need to look at the total count of a group, we must use HAVING.
*/