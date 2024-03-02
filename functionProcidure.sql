-- Active: 1708921245946@@127.0.0.1@5432@ph
SELECT * FROM employees;
SELECT count(*) FROM employees

CREATE Function emp_count()
RETURNS INT
LANGUAGE SQL
as 
$$
SELECT count(*) from employees
$$;

SELECT emp_count()

-----delete FUNCTION (dynamic)
CREATE  OR REPLACE Function emp_delete_by_id_dynamic(p_emp_id INT)
RETURNS void
LANGUAGE SQL
as 
$$
DELETE FROM employees WHERE employee_id = p_emp_id
$$;

SELECT emp_delete_by_id_dynamic(29)