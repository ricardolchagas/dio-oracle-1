  SELECT * 
    FROM departments d
   INNER JOIN locations l
      ON l.location_id = d.location_id
   WHERE  l.country_id = 'BR';
   

-- sql ansi --
SELECT *
  FROM employees emp
 INNER JOIN departments dep
    ON dep.department_id = emp.department_id
 INNER JOIN locations loc
    ON loc.location_id = dep.location_id
 WHERE loc.country_id = 'BR';
 
-- sql oracle --
SELECT *
  FROM employees   emp
      ,departments dep
      ,locations   loc
 WHERE loc.country_id = 'BR'
   AND dep.department_id = emp.department_id
   AND loc.location_id = dep.location_id;
   
 SELECT * from departments dep
 INNER JOIN locations loc
    ON loc.location_id = dep.location_id
 WHERE loc.country_id = 'BR';
    

select * from jobs  ;

select employees_seq.nextval  from  dual;


 
 INSERT INTO employees
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
   (employees_seq.nextval
   ,'Ricardo'
   ,'Chagas'
   ,'rchagas@spread.com.br'
   ,'1123232323'
   ,to_date('26/07/2020'
           ,'dd/mm/yyyy')
   ,'DIG_LEADER'
   ,11000
   ,NULL
   ,NULL
   ,11
   ,43373297906)
   ;
   

