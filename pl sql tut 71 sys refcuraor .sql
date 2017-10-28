--Script from PL/SQL Tutorial 71 RebellionRider.com
SET SERVEROUTPUT ON;
DECLARE
    cur_var SYS_REFCURSOR;
    
    f_name  employees.first_name%TYPE;
    emp_sal employees.salary%TYPE;
BEGIN
    OPEN cur_var FOR SELECT first_name, Salary FROM employees WHERE employee_id = 100;
    FETCH cur_var INTO f_name, emp_sal;
    CLOSE cur_var;
    DBMS_OUTPUT.PUT_LINE(f_name ||' '||emp_sal);
END;
/