# Primary Key, Foreign Key & Transactions in SQL
This section covers essential database concepts used to maintain data integrity and manage relationships between tables.

## Primary Key
A Primary Key uniquely identifies each record in a table. It ensures that every row has a unique value and prevents duplicate entries.

### Key Features
* Unique for every record
* Cannot contain NULL values
* Commonly used with `AUTO_INCREMENT`
* Improves data integrity

Example:
```sql
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100)
);
```

## Foreign Key
A Foreign Key establishes a relationship between two tables by referencing the Primary Key of another table.

### Key Features
* Maintains referential integrity
* Prevents invalid relationships between tables
* Connects related data across multiple tables

Example:
```sql
CONSTRAINT fk_user
FOREIGN KEY (user_id)
REFERENCES users(id)
```

## ON DELETE CASCADE
`ON DELETE CASCADE` automatically removes related records from the child table when a record is deleted from the parent table.

### Example
If a user is deleted from the `users` table, all corresponding address records linked through `user_id` are automatically removed from the `addresses` table.
This helps maintain consistent and clean data.

## Managing Foreign Keys
SQL provides commands to modify relationships between tables.

### Drop a Foreign Key
```sql
ALTER TABLE addresses
DROP FOREIGN KEY fk_user;
```

### Add a Foreign Key
```sql
ALTER TABLE addresses
ADD CONSTRAINT fk_user
FOREIGN KEY (user_id)
REFERENCES users(id);
```

## Transactions
Transactions are used to execute a group of SQL operations as a single unit of work.

### Auto Commit
By default, MySQL automatically saves changes after every query.
```sql
SET autocommit = 0;
```

Disabling Auto Commit allows multiple operations to be controlled manually.

### COMMIT
The `COMMIT` statement permanently saves all changes made during a transaction.

```sql
COMMIT;
```

### ROLLBACK
The `ROLLBACK` statement reverses changes and restores the database to its previous state before the transaction was committed.
```sql
ROLLBACK;
```

## Learning Outcomes
Through these exercises, I learned:
* How Primary Keys uniquely identify records
* How Foreign Keys establish relationships between tables
* How `ON DELETE CASCADE` maintains referential integrity
* How to add and remove Foreign Key constraints
* How transactions ensure reliable and controlled database operations using COMMIT and ROLLBACK

---

**Author:** Shreya G
