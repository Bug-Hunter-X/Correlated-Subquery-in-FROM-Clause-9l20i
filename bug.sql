The following SQL query attempts to use a subquery in the FROM clause to calculate the average salary for each department, and then join the result with the employees table to retrieve employees whose salary is greater than the average salary of their department. However, it contains a common error: it uses a correlated subquery in the FROM clause, which is not supported by most SQL dialects.

```sql
SELECT e.employee_id, e.employee_name, e.salary, d.department_name
FROM employees e, (SELECT department_id, AVG(salary) AS avg_salary FROM employees GROUP BY department_id) AS avg_salaries
WHERE e.department_id = avg_salaries.department_id AND e.salary > avg_salaries.avg_salary;
```