CREATE OR REPLACE TRIGGER tr_a_er_iu_employees
  AFTER INSERT OR UPDATE ON employees
  FOR EACH ROW
  WHEN (nvl(new.salary, -1) <> nvl(old.salary, 0) AND
         new.department_id IS NOT NULL)
DECLARE
  v_salary_sum departments.salaries_sum%TYPE;
BEGIN

  UPDATE departments d
     SET salaries_sum  = nvl(salaries_sum 
                           ,0) - nvl(:old.salary
                                    ,0) + :new.salary
   WHERE d.department_id = :new.department_id;

END tr_a_er_iu_employees;
/
