USE startersql;

-- SELECT * FROM users;
-- ALTER TABLE users
-- DROP COLUMN referred_by_id;

-- -- Add a referred_by_id Column
-- ALTER TABLE users
-- ADD COLUMN referred_by_id INT;

-- Insert Referral Data 
UPDATE users SET referred_by_id = 1 WHERE id IN (2, 3); -- User 1 referred Users 2 and 3
UPDATE users SET referred_by_id = 2 WHERE id = 4;       -- User 2 referred User 4

-- Use a Self JOIN to Get Referrer Names
SELECT 
a.id,
a.name AS user_name,
b.name AS referred_by
FROM users a
LEFT JOIN users b ON a.referred_by_id = b.id;

