# Experiment 3: DML Commands
### Name: BALAJI.A

## AIM
To study and implement DML (Data Manipulation Language) commands.

## THEORY

### 1. INSERT INTO
Used to add records into a relation.
These are three type of INSERT INTO queries which are as
A)Inserting a single record
**Syntax (Single Row):**
```sql
INSERT INTO table_name (field_1, field_2, ...) VALUES (value_1, value_2, ...);
```
**Syntax (Multiple Rows):**
```sql
INSERT INTO table_name (field_1, field_2, ...) VALUES
(value_1, value_2, ...),
(value_3, value_4, ...);
```
**Syntax (Insert from another table):**
```sql
INSERT INTO table_name SELECT * FROM other_table WHERE condition;
```
### 2. UPDATE
Used to modify records in a relation.
Syntax:
```sql
UPDATE table_name SET column1 = value1, column2 = value2 WHERE condition;
```
### 3. DELETE
Used to delete records from a relation.
**Syntax (All rows):**
```sql
DELETE FROM table_name;
```
**Syntax (Specific condition):**
```sql
DELETE FROM table_name WHERE condition;
```
### 4. SELECT
Used to retrieve records from a table.
**Syntax:**
```sql
SELECT column1, column2 FROM table_name WHERE condition;
```
**Question 1**
--
-- Update the reorder level to 40 pieces for all products belonging to the 'Grocery' category in the products table.

```sql
-- UPDATE products
SET reorder_lvl = 40
WHERE category = 'Grocery'
```

**Output:**

![{0A0B7633-4157-4446-AFC2-6C1DCCCEA934}](https://github.com/user-attachments/assets/f28d38a5-3730-48be-bb82-f90823758784)


**Question 2**
---
-- Write a SQL statement to change the email column of employees table with 'Unavailable' for all employees in employees table.

```sql
-- UPDATE Employees
SET email = 'Unavailable'; 
```

**Output:**

![{B2A650DA-FD8F-4939-9C48-B60AB90A303C}](https://github.com/user-attachments/assets/2e96fb6a-a8e3-4a62-8971-8ed0d80bbe80)


**Question 3**
---
-- Write a SQL statement to Increase the salary by 500 and email as 'updated' for employees with job ID 'SA_REP' and commission percentage greater than 0.15

```sql
-- UPDATE Employees
SET salary = salary + 500, email = 'updated'
WHERE job_id = 'SA_REP' AND commission_pct > 0.15; 
```

**Output:**

![{D42E938F-B829-4054-BAAC-C458CBEAB632}](https://github.com/user-attachments/assets/3210a637-120f-4892-a248-b1afbf377dd3)


**Question 4**
---
-- Write a SQL statement to Update the reorder level to 20 where the quantity in stock is less than 10 and product category is 'Snacks' in the products table.

```sql
-- UPDATE products
SET reorder_lvl = 20
WHERE  quantity < 10 and category = 'Snacks';
```

**Output:**

![{32B15B8B-C5F4-4991-9EF8-FEE12F888ACE}](https://github.com/user-attachments/assets/fe4855cb-600b-41e7-a15b-16ee3853afe8)


**Question 5**
---
-- Write a SQL statement to Increase quantity of all products by 10% to adjust for surplus stock counted

```sql
-- UPDATE Products
SET quantity = quantity * 1.1;
```

**Output:**

![{324EE496-D9BF-4CE3-8587-F2D3A5FAFC35}](https://github.com/user-attachments/assets/93967973-00b3-4e92-b0e9-52aa920e64b0)


**Question 6**
---
-- Write a SQL query to Delete customers from 'customer' table where 'GRADE' is odd.
```sql
-- DELETE FROM customer
WHERE GRADE % 2 != 0; 
```

**Output:**

![{EAA35D49-37BF-4114-BC48-1487B183C648}](https://github.com/user-attachments/assets/b14176b0-3e66-49aa-b05c-13f80d728ca7)


**Question 7**
---
-- Write a SQL query to Delete customers from 'customer' table where 'CUST_CITY' is not 'New York' and 'OUTSTANDING_AMT' is greater than 5000.

```sql
-- DELETE FROM customer
WHERE CUST_CITY != 'New York' and OUTSTANDING_AMT > 5000;
```

**Output:**

![{3968C344-D30C-48B4-B112-5DC2822E93B6}](https://github.com/user-attachments/assets/5eac565f-2f68-4c86-bc45-752f15f1302a)


**Question 8**
---
-- Write a SQL query to Delete All Doctors whose ID ranges from 2 to 4.

```sql
-- DELETE FROM doctors
WHERE doctor_id BETWEEN 2 AND 4;
```

**Output:**

![{E4EB9F39-7814-41EE-AFDF-81680E297EE8}](https://github.com/user-attachments/assets/f377e625-e0ca-47c2-b299-7bce7ade0d73)


**Question 9**
---
-- Write a SQL query to Delete a Specific Surgery whose ID is 3

```sql
-- DELETE FROM surgeries
WHERE surgery_id = 3;
```

**Output:**

![{E326333C-294E-4561-907B-7AA2A446F724}](https://github.com/user-attachments/assets/84260919-f059-4a54-a22f-9c335b5df201)


**Question 10**
---
-- Write a SQL query to remove rows from the table 'customer' with the following condition -

```sql
-- DELETE FROM customer 
WHERE CUST_CITY LIKE 'L%';
```

**Output:**

![{E6BBC25A-CDE7-4D95-8BFA-E04B40A33F31}](https://github.com/user-attachments/assets/2e28a2c3-f329-4eb3-a104-2120a10a83bc)


## RESULT
Thus, the SQL queries to implement DML commands have been executed successfully.
