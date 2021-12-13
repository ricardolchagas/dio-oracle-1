CREATE OR REPLACE PROCEDURE pr_cria_empregado(p_last_name      EMPLOYEES.LAST_NAME%TYPE,
                                              p_email          EMPLOYEES.EMAIL%TYPE,
                                              p_phone_number   EMPLOYEES.PHONE_NUMBER%TYPE,
                                              p_hire_date      EMPLOYEES.HIRE_DATE%TYPE,
                                              p_job_id         EMPLOYEES.JOB_ID%TYPE,
                                              p_salary         EMPLOYEES.SALARY%TYPE,
                                              p_commission_pct EMPLOYEES.COMMISSION_PCT%TYPE,
                                              p_manager_id     EMPLOYEES.MANAGER_ID%TYPE,
                                              p_department_id  EMPLOYEES.DEPARTMENT_ID%TYPE,
                                              p_cpf            EMPLOYEES.CPF%TYPE,
                                              p_first_name     EMPLOYEES.FIRST_NAME%TYPE,
                                              p_employee_id   out EMPLOYEES.EMPLOYEE_ID%TYPE
                                            
                                              
                                              ) IS
BEGIN

 /* INSERT INTO employees
    (employee_id
    ,first_name
    ,last_name
    ,email
    ,phone_number
    ,hire_date
    ,job_id
    ,salary
    ,commission_pct
    ,manager_id
    ,department_id
    ,cpf)
  VALUES
    (-1
    ,'Ricardo'
    ,'Chagas'
    ,'rchagas@spread.com,br'
    ,'11111111'
    ,SYSDATE - 1000
    ,'DIG_LEADER'
    ,11111
    ,NULL
    ,NULL
    ,11
    ,'53130220755');*/
    
   p_employee_id:= 1000; 

END pr_cria_empregado;
/
