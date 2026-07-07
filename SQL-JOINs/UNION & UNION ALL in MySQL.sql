USE startersql;
SELECT * FROM users;
SELECT * FROM addresses;
SELECT * FROM admin_users;

-- UNION to Combine Data
SELECT  email,name FROM users
UNION
SELECT email,name FROM admin_users;

-- UNION ALL
SELECT  name FROM users
UNION ALL 
SELECT name FROM admin_users;

-- Adding separate roles and Order By
SELECT  email,name, date_of_birth, 'USER'as role FROM users
UNION
SELECT email,name,date_of_birth, 'Admin' as role FROM admin_users
ORDER BY date_of_birth;


