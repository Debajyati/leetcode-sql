-- Write your MySQL query statement below
SELECT e.name as `Employee` FROM Employee e
    INNER JOIN Employee m
    ON e.managerid = m.id
    WHERE e.salary > m.salary;
