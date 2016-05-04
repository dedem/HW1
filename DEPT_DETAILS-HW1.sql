create or replace 
FUNCTION DEPT_DETAILS 
(
  P_ID IN VARCHAR2  
) RETURN VARCHAR2 AS 
p_name  varchar2(50);
m_first_name employees.fýrst_name%type;
m_last_name employees.last_name%type;
BEGIN
select d.DEPARTMENT_NAME, e.FIRST_NAME , e.LAST_NAME into p_name,m_first_name,m_last_name FROM DEPARTMENTS d JOIN EMPLOYEES e ON d.MANAGER_ID = e.EMPLOYEE_ID where d.DEPARTMENT_ID = P_ID;
RETURN p_name || m_first_name || m_last_name;
 
END DEPT_DETAILS;