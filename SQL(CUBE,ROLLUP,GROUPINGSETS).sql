-- simple Group by

SELECT City , Gender ,SUM(Salary) from Employee
Group BY City,Gender

-- CUBE 

SELECT City , Gender ,SUM(Salary) from Employee
Group BY CUBE(City,Gender)

-- CUBE SYNTAX-2
SELECT City , Gender ,SUM(Salary) from Employee
Group BY City,Gender WITH CUBE


-- Rollup

SELECT City , Gender ,SUM(Salary) from Employee
Group BY City,Gender WITH Rollup

SELECT City , Gender ,SUM(Salary) from Employee
Group BY ROLLUP(City,Gender)

SELECT City , Gender ,SUM(Salary) from Employee
Group BY ROLLUP(Gender,City)



-- Grouping Sets

SELECT City , Gender , SUM(Salary)  from Employee
Group By 
grouping sets(
(City,Gender),
(City),
(Gender),
()
)
order by grouping(City),grouping(Gender)
