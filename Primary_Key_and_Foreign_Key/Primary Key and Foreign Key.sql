 USE startersql;

-- PRIMARY KEY 
CREATE TABLE users (
   id INT AUTO_INCREMENT PRIMARY KEY,
   name VARCHAR(100)
);
SELECT * FROM users;

-- Creating a Table with a Foreign Key
USE startersql;
DROP TABLE IF EXISTS addresses;
CREATE TABLE addresses(
id INT AUTO_INCREMENT PRIMARY KEY,
user_id INT,
street VARCHAR(250),
city VARCHAR(100),
state VARCHAR(100),
pincode VARCHAR(10),
CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

INSERT INTO addresses (user_id,street,city,state,pincode)
VALUES
(1,'221b MG ROAD','MUMBAI','maharastra','901321'),
(22,'14 park street','kolkata','wesr bengal','700013'),
(3,'32 residency road','bengaluru','karnataka','902821');

-- Dropping a Foreign Key
CREATE TABLE addresses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES users(id)
);
-- To drop it:
ALTER TABLE addresses
DROP FOREIGN KEY fk_user;

-- Adding a Foreign Key Later (Using ALTER)
ALTER TABLE addresses
ADD CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES users(id);

-- Adding ON DELETE Action
CREATE TABLE addresses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    street VARCHAR(255),
    city VARCHAR(100),
    state VARCHAR(100),
    pincode VARCHAR(10),
    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);
