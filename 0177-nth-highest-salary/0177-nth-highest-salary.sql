CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
    set N = N - 1; 
    #if i want the 1st highest salary then i would skip 0 rows, for     2nd     highest salary i would skip 1 row etc
  RETURN (
      # Write your MySQL query statement below.
      select distinct salary
      from employee
      order by salary desc
      limit 1 offset N


  );
END