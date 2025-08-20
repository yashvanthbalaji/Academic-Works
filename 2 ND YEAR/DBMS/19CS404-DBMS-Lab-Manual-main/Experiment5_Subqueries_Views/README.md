# Experiment 5: Subqueries and Views

## AIM
To study and implement subqueries and views.

## THEORY

### Subqueries
A subquery is a query inside another SQL query and is embedded in:
- WHERE clause
- HAVING clause
- FROM clause

**Types:**
- **Single-row subquery**:
  Sub queries can also return more than one value. Such results should be made use along with the operators in and any.
- **Multiple-row subquery**:
  Here more than one subquery is used. These multiple sub queries are combined by means of ‘and’ & ‘or’ keywords.
- **Correlated subquery**:
  A subquery is evaluated once for the entire parent statement whereas a correlated Sub query is evaluated once per row processed by the parent statement.

**Example:**
```sql
SELECT * FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);
```
### Views
A view is a virtual table based on the result of an SQL SELECT query.
**Create View:**
```sql
CREATE VIEW view_name AS
SELECT column1, column2 FROM table_name WHERE condition;
```
**Drop View:**
```sql
DROP VIEW view_name;
```

**Question 1**
--
![image](https://github.com/user-attachments/assets/77e1968f-b1bf-4e3e-b001-570e4612f8a9)


```sql
SELECT 
    o.ord_no, 
    o.purch_amt, 
    o.ord_date, 
    o.customer_id, 
    o.salesman_id
FROM 
    orders o
JOIN 
    salesman s 
ON 
    o.salesman_id = s.salesman_id
WHERE 
    s.city = 'New York';
```

**Output:**

![image](https://github.com/user-attachments/assets/28183208-3f9b-45ad-beb6-bf5e76e83e9f)


**Question 2**
---
![image](https://github.com/user-attachments/assets/69e1a1bc-09ed-4ea1-8aae-b25f9e5dee6b)


```sql
SELECT *
FROM customer
WHERE customer_id = (
    SELECT salesman_id - 2001
    FROM salesman
    WHERE name = 'Mc Lyon'
); 
```

**Output:**

![image](https://github.com/user-attachments/assets/48bb145a-748e-40c8-8762-334422342a1e)


**Question 3**
---
![image](https://github.com/user-attachments/assets/f39eef97-03bb-4fce-8641-9080c41ea0b7)


```sql
SELECT *
FROM CUSTOMERS
WHERE ADDRESS = 'Delhi';

```

**Output:**

![image](https://github.com/user-attachments/assets/421e0404-cce1-4085-a36e-b3cdfb065e34)


**Question 4**
---
![image](https://github.com/user-attachments/assets/b45f4823-d6fd-4b69-aeac-36362bc156f6)


```sql
SELECT *
FROM CUSTOMERS
WHERE SALARY = 1500;
```

**Output:**

![image](https://github.com/user-attachments/assets/3447d91a-6ef1-490a-b5af-1e898c8ba0da)


**Question 5**
---
![image](https://github.com/user-attachments/assets/2456c24c-0d53-4095-865d-6efb7703a1d9)


```sql
SELECT *
FROM Employee
WHERE age < (
    SELECT AVG(age)
    FROM Employee
    WHERE income > 1000000
);

```

**Output:**

![image](https://github.com/user-attachments/assets/027b0a45-a79a-4fc3-9ac3-ce6a8def3c62)


**Question 6**
---
![image](https://github.com/user-attachments/assets/34531730-7ae3-47d9-a3bc-df9bcc0d5c4f)


```sql
SELECT 
    o.ord_no, 
    o.purch_amt, 
    o.ord_date, 
    o.customer_id, 
    o.salesman_id
FROM 
    orders o
JOIN 
    salesman s 
ON 
    o.salesman_id = s.salesman_id
WHERE 
    s.city = 'New York';
```

**Output:**

![image](https://github.com/user-attachments/assets/e090bfe9-3934-4fae-8269-7932ffa97677)


**Question 7**
---
![image](https://github.com/user-attachments/assets/caabf366-d624-4c59-a059-918fb24370e0)


```sql
SELECT 
    o.ord_no, 
    o.purch_amt, 
    o.ord_date, 
    o.customer_id, 
    o.salesman_id
FROM 
    orders o
JOIN 
    salesman s 
ON 
    o.salesman_id = s.salesman_id
WHERE 
    s.city = 'London';
```

**Output:**

![image](https://github.com/user-attachments/assets/b369e363-620b-4ce5-8b91-bad2690adcf3)


**Question 8**
---
![image](https://github.com/user-attachments/assets/bb44a12e-b692-4c4c-a491-bdb23de31c3b)


```sql
SELECT 
    department_id,
    department_name
FROM 
    Departments
WHERE 
    LENGTH(department_name) > (
        SELECT AVG(LENGTH(department_name))
        FROM Departments
    );
```

**Output:**

![image](https://github.com/user-attachments/assets/c46506a5-15cb-4b7e-8037-7174d7d4111e)


**Question 9**
---
![image](https://github.com/user-attachments/assets/80eb9dbb-c31d-4b65-8e05-7957c21ee05e)


```sql
SELECT *
FROM CUSTOMERS
WHERE SALARY > 1500;
```

**Output:**

![image](https://github.com/user-attachments/assets/119c2c8b-e407-4e27-b78e-7d722ee75452)


**Question 10**
---
![image](https://github.com/user-attachments/assets/44c0e4af-d61d-4094-9d5b-4bd8e1b51276)


```sql
SELECT 
    s.salesman_id, 
    s.name
FROM 
    salesman s
JOIN 
    customer c ON s.salesman_id = c.salesman_id
GROUP BY 
    s.salesman_id, s.name
HAVING 
    COUNT(c.customer_id) > 1;

```

**Output:**

![image](https://github.com/user-attachments/assets/ace8ddee-8fac-4323-88ef-7574f092ad36)



## RESULT
Thus, the SQL queries to implement subqueries and views have been executed successfully.
