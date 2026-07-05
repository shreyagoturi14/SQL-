# SQL Basics

This file covers the fundamental SQL commands used to create, manage, and manipulate databases and tables.

## Create Database

A database is a structured collection of data. The `CREATE DATABASE` statement is used to create a new database where tables and records can be stored.

## Use Database

The `USE` statement selects a specific database and makes it the active database for executing SQL queries.

## Create Table

Tables are used to store data in rows and columns. The `CREATE TABLE` statement defines the table structure, including column names, data types, and constraints.

## Data Types and Constraints

Data types specify the kind of data that can be stored in a column, such as integers, text, dates, or timestamps.

Constraints are rules applied to columns to maintain data integrity, including:
* **PRIMARY KEY** – Uniquely identifies each record.
* **AUTO_INCREMENT** – Automatically generates sequential values.
* **NOT NULL** – Prevents empty values.
* **UNIQUE** – Ensures all values are different.
* **DEFAULT** – Assigns a default value when none is provided.

## Selecting Data

The `SELECT` statement is used to retrieve data from a table. It can return all columns or specific columns based on the query requirements.

## Renaming a Table

The `RENAME TABLE` statement changes the name of an existing table without affecting its stored data.

## Altering a Table

The `ALTER TABLE` statement is used to modify the structure of an existing table.

Common operations include:
* Adding new columns
* Removing existing columns
* Modifying column data types
* Reordering columns

## Inserting Data
The `INSERT INTO` statement adds new records to a table. Data can be inserted by specifying all columns or only selected columns.

## Dropping a Database
The `DROP DATABASE` statement permanently removes a database along with all its tables and data. This operation should be used carefully because the deleted data cannot be recovered.



# SQL Basics - UPDATE & DELETE
Today I practiced SQL data modification commands using MySQL.

## Topics Covered

- UPDATE statement
- Updating single column values
- Updating multiple columns
- Using WHERE clause with UPDATE
- Incrementing numeric values
- DELETE statement
- Deleting specific records
- Safe Update Mode in MySQL Workbench
- Common SQL errors and debugging

## Key Learnings
Always use the WHERE clause while updating or deleting data.
USE database_name; sets the active database.
Safe Update Mode may block UPDATE and DELETE queries.
Table names must match exactly.
Verify changes using SELECT queries.

## Tools Used
MySQL Workbench
MySQL Server
