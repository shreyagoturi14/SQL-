-- LeetCode 595: Big Countries

-- Concepts Used:
-- SELECT
-- WHERE
-- OR

-- Problem:
-- Find all countries that are considered big.
-- A country is big if:
-- 1. area >= 3000000
-- OR
-- 2. population >= 25000000

SELECT name, population, area
FROM World
WHERE area >= 3000000
   OR population >= 25000000;
