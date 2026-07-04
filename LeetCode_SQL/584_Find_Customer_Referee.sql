-- LeetCode 584: Find Customer Referee

-- Concepts Used:
-- SELECT
-- WHERE
-- NULL Handling (IS NULL)
-- Logical Operator (OR)

SELECT name
FROM Customer
WHERE referee_id != 2
   OR referee_id IS NULL;
