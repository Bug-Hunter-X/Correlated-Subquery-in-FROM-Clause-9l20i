# SQL Query Error: Correlated Subquery in FROM Clause

This repository demonstrates a common error in SQL queries: using a correlated subquery in the FROM clause. Many database systems (like MySQL, PostgreSQL, and others) do not support this syntax, resulting in a syntax error.

The `bug.sql` file contains the erroneous query. The `bugSolution.sql` file provides a corrected version using a JOIN with a derived table.

## How to reproduce

1. Create a table named `employees` with columns `employee_id`, `employee_name`, `salary`, and `department_id`.
2. Insert some sample data into the `employees` table.
3. Run `bug.sql` - you will encounter a syntax error.
4. Run `bugSolution.sql` - This corrected query will return the expected results.