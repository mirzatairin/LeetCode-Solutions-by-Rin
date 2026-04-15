# Write your MySQL query statement below
select (
    select distinct salary
    from Employee
    order by salary desc # making sure that the salaries are sorted in desc order
    limit 1 offset 1 # skips the first row and takes the second one

) as SecondHighestSalary; # naming the output table 