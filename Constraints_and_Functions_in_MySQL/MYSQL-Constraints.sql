USE startersql;
-- USING ALTER 
-- Add UNIQUE using ALTER TABLE:
ALTER TABLE users ADD CONSTRAINT unique_email UNIQUE (email);

-- Change an existing column to NOT NULL:
ALTER TABLE users MODIFY COLUMN name VARCHAR(100) NOT NULL;

-- CHECK Constraint
ALTER TABLE users ADD CONSTRAINT chk_dob CHECK (date_of_birth > '2000-01-01');

-- DEFAULT Constraint
ALTER TABLE users
ALTER COLUMN is_active SET DEFAULT TRUE;

-- PRIMARY KEY Constraint
ALTER TABLE users
ADD PRIMARY KEY (id);

-- AUTO_INCREMENT
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100)
);

SELECT * FROM users;

-- cretaing table using constraint
CREATE DATABASE IF NOT EXISTS startersql;
USE startersql;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    gender ENUM('Male', 'Female', 'Other'),
    date_of_birth DATE,
    salary DECIMAL(10, 2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

