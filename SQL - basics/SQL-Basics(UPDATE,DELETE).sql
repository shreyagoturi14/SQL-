USE startersql;
-- UPDATEING THE TABLE
-- Update One Column
-- UPDATE users SET salary=45000 WHERE id=1;

--  Update Multiple Columns
-- UPDATE users SET salary=45000,email='aarav@aarav.com' WHERE id=1;

-- 1. Update the salary of user with id = 5 to ₹70,000.
-- UPDATE users SET salary=70000
-- WHERE id=5;

--  Change the name of the user with email aisha@example.com to Aisha Khan.
-- UPDATE users 
-- SET name='Aisha Khan'
-- WHERE email='aisha@example.com';

--  Increase salary by ₹10,000 for all users whose salary is less than ₹60,000.
-- UPDATE users SET salary=salary+10000 WHERE salary<60000;

-- Set the gender of user Ishaan to Other.
-- UPDATE users
-- SET gender =  'Other'
-- WHERE name ='Ishaan';


-- DELETING THE DATA
DELETE FROM users WHERE id=2;

SELECT * FROM users;