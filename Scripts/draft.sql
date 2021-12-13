select * from all_sequences where SEQUENCE_owner = 'HR';


hr.DEPARTMENTS_SEQ
hr.EMPLOYEES_SEQ
hr.LOCATIONS_SEQ;


SELECT * FROM REGIONS;

BEGIN
  UPDATE REGIONS
     SET rEGION_NAME = 'Middle East'
   WHERE region_id = 4
      OR region_id = 3;
  INSERT INTO regions
    (region_id
    ,region_name)
  VALUES
    (5
    ,'Africa');
    
END;
/

SELECT * FROM REGIONS;
select * from countries where region_id = 4 and country_id in ('IL', 'KW')


SELECT VALIDA_CPF ('277.315.163-14') FROM DUAL;


SELECT SUM(E.SALARY)
  FROM DEPARTMENTS D
  LEFT JOIN EMPLOYEES E
    ON E.DEPARTMENT_ID = D.DEPARTMENT_ID
 GROUP BY D.DEPARTMENT_ID
       
;



alter table employees add cpf varchar2(14);
alter table departments add SALARIES_SUM NUMBER(10, 2);


select * from departments d 
inner join locations  l on l.location_id = d.location_id 
where d.department_id = 11 and l.country_id = 'BR'


select * from departments d 
inner join locations  l on l.location_id = d.location_id 
where l.location_id = 2800


select * from locations where country_id = 'BR'


select * from employees


insert into departments ( department_id,
                         department_name,
                         manager_id,
                         location_id) values (11, 'Digital Inovation', null, 2800);
                         
                         

select * from departments;


select * from locations l ;


select * from jobs;

insert into jobs (job_id,
                  job_title,
                  min_salary,
                  max_salary) values ('DIG_LEADER', 'Digital Innovation Leader', 10000, 20000)  
                   


;

insert into employees (employee_id,
                       first_name,
                       last_name,
                       email,
                       phone_number,
                       hire_date,
                       job_id,
                       salary,
                       commission_pct,
                       manager_id,
                       department_id,
                       cpf)
                       values (-1, 'Ricardo', 'Chagas', 'rchagas@spread.com,br', '11111111', sysdate - 1000, 'DIG_LEADER', 11111, null, null, 11,  '53130220755');
                       

insert into employees (employee_id,
                       first_name,
                       last_name,
                       email,
                       phone_number,
                       hire_date,
                       job_id,
                       salary,
                       commission_pct,
                       manager_id,
                       department_id,
                       cpf)
                       values (-2, 'Marcelo', 'Ramos', 'mramos@spread.com,br', '11111111', sysdate - 1000, 'DIG_LEADER', 11111, null, null, 11,  '53130220755');                       



select * from departments;


update employees set salary = 12000 where  employee_id = -2


