# SQL Joins and Data Combination
This module focuses on combining and analyzing data across multiple tables using SQL JOINs, SELF JOINs, and UNION operations. These concepts are fundamental for relational database management and are widely used in Data Analytics, Data Science, and Backend Development.

## Topics Covered

### INNER JOIN
Retrieves only the matching records from both tables based on a specified condition.

**Use Case:**
* Finding users with corresponding address records.
* Combining related data from multiple tables.

### LEFT JOIN
Returns all records from the left table and matching records from the right table. Non-matching rows from the right table are returned as NULL.

**Use Case:**
* Identifying users who may not have address information.

### RIGHT JOIN
Returns all records from the right table and matching records from the left table.

**Use Case:**
* Ensuring all address records are displayed even if a related user record is missing.

### SELF JOIN
A table is joined with itself to establish relationships between rows within the same table.

**Use Case:**
* Referral systems
* Employee–Manager relationships
* Hierarchical data structures

Example:
* Displaying which user referred another user using a `referred_by_id` column.

### UNION
Combines the results of multiple SELECT statements and removes duplicate records.

**Use Case:**
* Merging similar data from multiple tables while maintaining uniqueness.

### UNION ALL
Combines the results of multiple SELECT statements and retains duplicate records.

**Use Case:**
* Combining complete datasets without removing duplicates.

### ORDER BY with UNION
Used to sort the final combined result set after applying UNION or UNION ALL operations.

## Key Learning Outcomes
* Understanding relationships between tables using JOINs.
* Combining data from multiple sources efficiently.
* Working with hierarchical relationships using SELF JOIN.
* Differentiating between UNION and UNION ALL.
* Organizing combined results using ORDER BY.
* Building a strong foundation for advanced SQL querying and database analysis.

## Applications
* Data Analytics
* Business Intelligence Reporting
* Database Management Systems
* Customer Relationship Management (CRM)
* Real-World Relational Database Design

---

**Author:** Shreya G

