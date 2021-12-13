CREATE OR REPLACE VIEW VW_EMPLOYEES
AS
SELECT e.employee_id
      ,e.job_id
      ,e.manager_id
      ,e.department_id
      ,d.location_id
      ,l.country_id
      ,e.first_name
      ,e.last_name
      ,e.salary
      ,e.commission_pct
      ,d.department_name
      ,j.job_title
      ,l.city
      ,l.state_province
      ,c.country_name
      ,r.region_name
  FROM employees e
 INNER JOIN departments d
    ON e.department_id = d.department_id
 INNER JOIN locations l
    ON d.location_id = l.location_id
 INNER JOIN jobs j
    ON j.job_id = e.job_id
 INNER JOIN countries c
    ON l.country_id = c.country_id
 INNER JOIN regions r
    ON c.region_id = r.region_id;
