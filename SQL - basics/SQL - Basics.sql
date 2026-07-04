-- Create a Database
CREATE DATABASE startersql;
USE startersql;


-- Create a Table
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    gender ENUM('Male', 'Female', 'Other'),
    date_of_birth DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

 -- Drop the Database
 DROP DATABASE startersql;
 
 
 -- Selecting Data from a Table
-- Select All Columns
SELECT * FROM users;

-- Select Specific Columns
SELECT name, email FROM users;

-- Renaming a Table
RENAME TABLE users TO customers;

-- Altering a Table
-- Add a Column
ALTER TABLE users ADD COLUMN is_active BOOLEAN DEFAULT TRUE;


-- Drop a Column
ALTER TABLE users DROP COLUMN is_active;

-- Modify a Column Type
ALTER TABLE users MODIFY COLUMN name VARCHAR(150);

-- Move a Column to the First Position
ALTER TABLE users MODIFY COLUMN email VARCHAR(100) FIRST;



-- Inserting Data into MySQL Tables
INSERT INTO users VALUES
(1, 'Alice', 'alice@example.com', 'Female', '1995-05-14', DEFAULT);

INSERT INTO users (name, email, gender, date_of_birth) VALUES
('Bob', 'bob@example.com', 'Male', '1990-11-23');
