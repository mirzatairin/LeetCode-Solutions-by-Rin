SELECT Department, Employee, Salary
FROM (
    SELECT 
        d.Name AS Department,
        e.Name AS Employee,
        e.Salary,
        DENSE_RANK() OVER (PARTITION BY e.DepartmentId ORDER BY e.Salary DESC) as rnk
    FROM Employee e
    JOIN Department d ON e.DepartmentId = d.Id
) temp
WHERE rnk <= 3;