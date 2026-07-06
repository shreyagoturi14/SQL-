-- SQL Functions
 USE startersql;
SELECT * FROM users;

-- 1. Aggregate Functions
-- COUNT() function
SELECT COUNT(*)FROM users WHERE gender='Female';

-- MIN and MAX function
SELECT MIN(salary) AS min_salary,MAX(salary) AS MAX_salary FROM users;

-- SUM, AVERAGE and GROUP BY function
SELECT gender, SUM(salary) AS avg_salary FROM users GROUP BY gender;

-- 2. String Functions
-- LOWER and UPPER , LENGHT,CONCAT Functions 
SELECT id,gender, LOWER(name) as lower, CONCAT(LOWER(name),"5678") as username, NOW() as time,LENGTH(name) AS name_len FROM users;

-- 3.Date Function
-- DATEDIFF
SELECT name,DATEDIFF(CURDATE(),date_of_birth)AS days FROM users;

-- 4. Mathematical Function
-- ROUND(),FLOOR(),CEIL() functions
SELECT salary,
ROUND(salary) AS rounded,
FLOOR(salary) AS floored,
CEIL(salary) AS ceiled
FROM users;

SELECT id, MOD(id,2) AS remainder FROM users;

-- 5. Conditional Functions
-- IF()
SELECT name,gender,
IF(gender='Female','Yes','No') AS is_female
FROM users;

