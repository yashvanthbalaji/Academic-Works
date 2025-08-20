# Experiment 10: PL/SQL – Triggers

## AIM
To write and execute PL/SQL trigger programs for automating actions in response to specific table events like INSERT, UPDATE, or DELETE.

---

## THEORY

A **trigger** is a stored PL/SQL block that is automatically executed or fired when a specified event occurs on a table or view. Triggers can be used for enforcing business rules, auditing changes, or automatic updates.

### Types of Triggers:
- **Before Trigger**: Executes before the operation (INSERT, UPDATE, DELETE).
- **After Trigger**: Executes after the operation.
- **Row-level Trigger**: Executes for each affected row.
- **Statement-level Trigger**: Executes once for the triggering statement.

**Basic Syntax:**
```sql
CREATE OR REPLACE TRIGGER trigger_name
BEFORE|AFTER INSERT|UPDATE|DELETE ON table_name
[FOR EACH ROW]
BEGIN
   -- trigger logic
END;
```

## 1. Write a trigger to log every insertion into a table.
**Steps:**
- Create two tables: `employees` (for storing data) and `employee_log` (for logging the inserts).
- Write an **AFTER INSERT** trigger on the `employees` table to log the new data into the `employee_log` table.

**Program:**
```sql
CREATE TABLE employees (
    emp_id NUMBER PRIMARY KEY,
    emp_name VARCHAR2(50),
    salary NUMBER
);

CREATE TABLE employee_log (
    log_id NUMBER PRIMARY KEY,
    emp_id NUMBER,
    emp_name VARCHAR2(50),
    salary NUMBER,
    log_date DATE
);

CREATE SEQUENCE log_seq START WITH 1 INCREMENT BY 1;

CREATE OR REPLACE TRIGGER trg_after_insert_employees
AFTER INSERT ON employees
FOR EACH ROW
BEGIN
    INSERT INTO employee_log (log_id, emp_id, emp_name, salary, log_date)
    VALUES (log_seq.NEXTVAL, :NEW.emp_id, :NEW.emp_name, :NEW.salary, SYSDATE);
END;
/

INSERT INTO employees (emp_id, emp_name, salary) VALUES (1, 'Alice', 5000);
COMMIT;

SELECT * FROM employee_log;

```

**Output:**

![image](https://github.com/user-attachments/assets/763f5617-c378-4f8a-84fc-b1aef3de6dd2)

**Expected Output:**
- A new entry is added to the `employee_log` table each time a new record is inserted into the `employees` table.

---

## 2. Write a trigger to prevent deletion of records from a sensitive table.
**Steps:**
- Write a **BEFORE DELETE** trigger on the `sensitive_data` table.
- Use `RAISE_APPLICATION_ERROR` to prevent deletion and issue a custom error message.

**Program:**
```sql
CREATE TABLE sensitive_data (
    id NUMBER PRIMARY KEY,
    info VARCHAR2(100)
);

CREATE OR REPLACE TRIGGER trg_prevent_delete_sensitive
BEFORE DELETE ON sensitive_data
FOR EACH ROW
BEGIN
    RAISE_APPLICATION_ERROR(-20001, 'Deletion not allowed on this table.');
END;
/

INSERT INTO sensitive_data (id, info) VALUES (1, 'Secret Info');
COMMIT;

DELETE FROM sensitive_data WHERE id = 1;

```

**Output:**

  ![image](https://github.com/user-attachments/assets/6db9dd0e-588e-4cf5-8c1b-fdfdca2cb2d7)

**Expected Output:**
- If an attempt is made to delete a record from `sensitive_data`, an error message is raised, e.g., `ERROR: Deletion not allowed on this table.`

---

## 3. Write a trigger to automatically update a `last_modified` timestamp.
**Steps:**
- Add a `last_modified` column to the `products` table.
- Write a **BEFORE UPDATE** trigger on the `products` table to set the `last_modified` column to the current timestamp whenever an update occurs.
  
**Program:**
```sql
CREATE TABLE products (
    product_id NUMBER PRIMARY KEY,
    product_name VARCHAR2(50),
    price NUMBER,
    last_modified DATE
);

CREATE OR REPLACE TRIGGER trg_update_last_modified
BEFORE UPDATE ON products
FOR EACH ROW
BEGIN
    :NEW.last_modified := SYSDATE;
END;
/

INSERT INTO products (product_id, product_name, price) VALUES (1, 'Product1', 100);

UPDATE products SET price = 120 WHERE product_id = 1;

SELECT product_id, product_name, price, last_modified FROM products WHERE product_id = 1;

```

**Output:**

![image](https://github.com/user-attachments/assets/c17262ba-0941-4d70-a3f7-68804d22ae82)

**Expected Output:**
- The `last_modified` column in the `products` table is updated automatically to the current date and time when any record is updated.

---

## 4. Write a trigger to keep track of the number of updates made to a table.
**Steps:**
- Create an `audit_log` table with a counter column.
- Write an **AFTER UPDATE** trigger on the `customer_orders` table to increment the counter in the `audit_log` table every time a record is updated.

**Program:**
```sql
CREATE TABLE audit_log (
    table_name VARCHAR2(50) PRIMARY KEY,
    update_count NUMBER
);

CREATE TABLE customer_orders (
    order_id NUMBER PRIMARY KEY,
    customer_name VARCHAR2(50),
    order_amount NUMBER
);

INSERT INTO audit_log (table_name, update_count) VALUES ('CUSTOMER_ORDERS', 0);

CREATE OR REPLACE TRIGGER trg_after_update_customer_orders
AFTER UPDATE ON customer_orders
DECLARE
BEGIN
    UPDATE audit_log
    SET update_count = update_count + 1
    WHERE table_name = 'CUSTOMER_ORDERS';
END;
/

INSERT INTO customer_orders VALUES (1, 'Alice', 100);
UPDATE customer_orders SET order_amount = 150 WHERE order_id = 1;
SELECT * FROM audit_log WHERE table_name = 'CUSTOMER_ORDERS';

```

**Output:**

![image](https://github.com/user-attachments/assets/2464e440-f2a7-4a6b-8a4a-2d41d6954024)

**Expected Output:**
- The `audit_log` table will maintain a count of how many updates have been made to the `customer_orders` table.

---

## 5. Write a trigger that checks a condition before allowing insertion into a table.
**Steps:**
- Write a **BEFORE INSERT** trigger on the `employees` table to check if the inserted salary meets a specific condition (e.g., salary must be greater than 3000).
- If the condition is not met, raise an error to prevent the insert.

**Program:**
```sql
CREATE OR REPLACE TRIGGER trg_check_salary_before_insert
BEFORE INSERT ON employees
FOR EACH ROW
BEGIN
    IF :NEW.salary < 3000 THEN
        RAISE_APPLICATION_ERROR(-20001, 'ERROR: Salary below minimum threshold.');
    END IF;
END;
/
INSERT INTO employees (emp_id, emp_name, salary) VALUES (101, 'John Doe', 2500);
INSERT INTO employees (emp_id, emp_name, salary) VALUES (102, 'Jane Smith', 3500);

```

**Output:**

![image](https://github.com/user-attachments/assets/a3619f47-aea5-494d-827a-f1a35cd08fe1)

**Expected Output:**
- If the inserted salary in the `employees` table is below the condition (e.g., salary < 3000), the insert operation is blocked, and an error message is raised, such as: `ERROR: Salary below minimum threshold.`

## RESULT
Thus, the PL/SQL trigger programs were written and executed successfully.
