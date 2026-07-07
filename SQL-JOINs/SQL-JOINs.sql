SELECT * FROM users;
SELECT * FROM addresses;

-- SQL JOINs in MySQL

-- INNER JOIN
SELECT users.name, users.gender,addresses.city,addresses.state,addresses.id as addresses_id
FROM users
INNER JOIN addresses ON users.id=addresses.user_id;

-- LEFT JOIN
SELECT users.name, users.gender,addresses.city,addresses.state,addresses.id as addresses_id
FROM users
LEFT JOIN addresses ON users.id=addresses.user_id;

-- RIGHT JOIN
SELECT users.name, users.gender,addresses.city,addresses.state,addresses.id as addresses_id
FROM users
RIGHT JOIN addresses ON users.id=addresses.user_id;