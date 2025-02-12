CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE nth_salary INT;
    
    SET N = N - 1;

    SELECT DISTINCT salary 
    INTO nth_salary 
    FROM Employee 
    ORDER BY salary DESC 
    LIMIT 1 OFFSET N;

    RETURN nth_salary;
END
