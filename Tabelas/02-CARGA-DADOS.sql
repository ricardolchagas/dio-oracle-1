--prompt PL/SQL Developer Export Tables for user HR@192.168.15.45:1521/PDB1
--prompt Created by ricchagas on Sunday, December 12, 2021

--prompt Disabling triggers for REGIONS...
alter table REGIONS disable all triggers;
--prompt Disabling triggers for COUNTRIES...
alter table COUNTRIES disable all triggers;
--prompt Disabling triggers for JOBS...
alter table JOBS disable all triggers;
--prompt Disabling triggers for DEPARTMENTS...
alter table DEPARTMENTS disable all triggers;
--prompt Disabling triggers for EMPLOYEES...
alter table EMPLOYEES disable all triggers;
--prompt Disabling triggers for LOCATIONS...
alter table LOCATIONS disable all triggers;
--prompt Disabling triggers for JOB_HISTORY...
alter table JOB_HISTORY disable all triggers;
--prompt Disabling triggers for WORLD_CITIES...
alter table WORLD_CITIES disable all triggers;
--prompt Disabling foreign key constraints for COUNTRIES...
alter table COUNTRIES disable constraint COUNTR_REG_FK;
--prompt Disabling foreign key constraints for DEPARTMENTS...
alter table DEPARTMENTS disable constraint DEPT_LOC_FK;
alter table DEPARTMENTS disable constraint DEPT_MGR_FK;
--prompt Disabling foreign key constraints for EMPLOYEES...
alter table EMPLOYEES disable constraint EMP_DEPT_FK;
alter table EMPLOYEES disable constraint EMP_JOB_FK;
alter table EMPLOYEES disable constraint EMP_MANAGER_FK;
--prompt Disabling foreign key constraints for LOCATIONS...
alter table LOCATIONS disable constraint LOC_C_ID_FK;
--prompt Disabling foreign key constraints for JOB_HISTORY...
alter table JOB_HISTORY disable constraint JHIST_DEPT_FK;
alter table JOB_HISTORY disable constraint JHIST_EMP_FK;
alter table JOB_HISTORY disable constraint JHIST_JOB_FK;
--prompt Deleting WORLD_CITIES...
delete from WORLD_CITIES;
commit;
--prompt Deleting JOB_HISTORY...
delete from JOB_HISTORY;
commit;
--prompt Deleting LOCATIONS...
delete from LOCATIONS;
commit;
--prompt Deleting EMPLOYEES...
delete from EMPLOYEES;
commit;
--prompt Deleting DEPARTMENTS...
delete from DEPARTMENTS;
commit;
--prompt Deleting JOBS...
delete from JOBS;
commit;
--prompt Deleting COUNTRIES...
delete from COUNTRIES;
commit;
--prompt Deleting REGIONS...
delete from REGIONS;
commit;
--prompt Loading REGIONS...
insert into REGIONS (region_id, region_name)
values (1, 'Europe');
insert into REGIONS (region_id, region_name)
values (2, 'Americas');
insert into REGIONS (region_id, region_name)
values (3, 'Asia');
insert into REGIONS (region_id, region_name)
values (4, 'Middle East and Africa');
commit;
--prompt 4 records loaded
--prompt Loading COUNTRIES...
insert into COUNTRIES (country_id, country_name, region_id)
values ('AR', 'Argentina', 2);
insert into COUNTRIES (country_id, country_name, region_id)
values ('AU', 'Australia', 3);
insert into COUNTRIES (country_id, country_name, region_id)
values ('BE', 'Belgium', 1);
insert into COUNTRIES (country_id, country_name, region_id)
values ('BR', 'Brazil', 2);
insert into COUNTRIES (country_id, country_name, region_id)
values ('CA', 'Canada', 2);
insert into COUNTRIES (country_id, country_name, region_id)
values ('CH', 'Switzerland', 1);
insert into COUNTRIES (country_id, country_name, region_id)
values ('CN', 'China', 3);
insert into COUNTRIES (country_id, country_name, region_id)
values ('DE', 'Germany', 1);
insert into COUNTRIES (country_id, country_name, region_id)
values ('DK', 'Denmark', 1);
insert into COUNTRIES (country_id, country_name, region_id)
values ('EG', 'Egypt', 4);
insert into COUNTRIES (country_id, country_name, region_id)
values ('FR', 'France', 1);
insert into COUNTRIES (country_id, country_name, region_id)
values ('IL', 'Israel', 4);
insert into COUNTRIES (country_id, country_name, region_id)
values ('IN', 'India', 3);
insert into COUNTRIES (country_id, country_name, region_id)
values ('IT', 'Italy', 1);
insert into COUNTRIES (country_id, country_name, region_id)
values ('JP', 'Japan', 3);
insert into COUNTRIES (country_id, country_name, region_id)
values ('KW', 'Kuwait', 4);
insert into COUNTRIES (country_id, country_name, region_id)
values ('ML', 'Malaysia', 3);
insert into COUNTRIES (country_id, country_name, region_id)
values ('MX', 'Mexico', 2);
insert into COUNTRIES (country_id, country_name, region_id)
values ('NG', 'Nigeria', 4);
insert into COUNTRIES (country_id, country_name, region_id)
values ('NL', 'Netherlands', 1);
insert into COUNTRIES (country_id, country_name, region_id)
values ('SG', 'Singapore', 3);
insert into COUNTRIES (country_id, country_name, region_id)
values ('UK', 'United Kingdom', 1);
insert into COUNTRIES (country_id, country_name, region_id)
values ('US', 'United States of America', 2);
insert into COUNTRIES (country_id, country_name, region_id)
values ('ZM', 'Zambia', 4);
insert into COUNTRIES (country_id, country_name, region_id)
values ('ZW', 'Zimbabwe', 4);
commit;
--prompt 25 records loaded
--prompt Loading JOBS...
insert into JOBS (job_id, job_title, min_salary, max_salary)
values ('AD_PRES', 'President', 20080, 40000);
insert into JOBS (job_id, job_title, min_salary, max_salary)
values ('AD_VP', 'Administration Vice President', 15000, 30000);
insert into JOBS (job_id, job_title, min_salary, max_salary)
values ('AD_ASST', 'Administration Assistant', 3000, 6000);
insert into JOBS (job_id, job_title, min_salary, max_salary)
values ('FI_MGR', 'Finance Manager', 8200, 16000);
insert into JOBS (job_id, job_title, min_salary, max_salary)
values ('FI_ACCOUNT', 'Accountant', 4200, 9000);
insert into JOBS (job_id, job_title, min_salary, max_salary)
values ('AC_MGR', 'Accounting Manager', 8200, 16000);
insert into JOBS (job_id, job_title, min_salary, max_salary)
values ('AC_ACCOUNT', 'Public Accountant', 4200, 9000);
insert into JOBS (job_id, job_title, min_salary, max_salary)
values ('SA_MAN', 'Sales Manager', 10000, 20080);
insert into JOBS (job_id, job_title, min_salary, max_salary)
values ('SA_REP', 'Sales Representative', 6000, 12008);
insert into JOBS (job_id, job_title, min_salary, max_salary)
values ('PU_MAN', 'Purchasing Manager', 8000, 15000);
insert into JOBS (job_id, job_title, min_salary, max_salary)
values ('PU_CLERK', 'Purchasing Clerk', 2500, 5500);
insert into JOBS (job_id, job_title, min_salary, max_salary)
values ('ST_MAN', 'Stock Manager', 5500, 8500);
insert into JOBS (job_id, job_title, min_salary, max_salary)
values ('ST_CLERK', 'Stock Clerk', 2008, 5000);
insert into JOBS (job_id, job_title, min_salary, max_salary)
values ('SH_CLERK', 'Shipping Clerk', 2500, 5500);
insert into JOBS (job_id, job_title, min_salary, max_salary)
values ('IT_PROG', 'Programmer', 4000, 10000);
insert into JOBS (job_id, job_title, min_salary, max_salary)
values ('MK_MAN', 'Marketing Manager', 9000, 15000);
insert into JOBS (job_id, job_title, min_salary, max_salary)
values ('MK_REP', 'Marketing Representative', 4000, 9000);
insert into JOBS (job_id, job_title, min_salary, max_salary)
values ('HR_REP', 'Human Resources Representative', 4000, 9000);
insert into JOBS (job_id, job_title, min_salary, max_salary)
values ('PR_REP', 'Public Relations Representative', 4500, 10500);
commit;
--prompt 19 records loaded
--prompt Loading DEPARTMENTS...
insert into DEPARTMENTS (department_id, department_name, manager_id, location_id)
values (10, 'Administration', 200, 1700);
insert into DEPARTMENTS (department_id, department_name, manager_id, location_id)
values (20, 'Marketing', 201, 1800);
insert into DEPARTMENTS (department_id, department_name, manager_id, location_id)
values (30, 'Purchasing', 114, 1700);
insert into DEPARTMENTS (department_id, department_name, manager_id, location_id)
values (40, 'Human Resources', 203, 2400);
insert into DEPARTMENTS (department_id, department_name, manager_id, location_id)
values (50, 'Shipping', 121, 1500);
insert into DEPARTMENTS (department_id, department_name, manager_id, location_id)
values (60, 'IT', 103, 1400);
insert into DEPARTMENTS (department_id, department_name, manager_id, location_id)
values (70, 'Public Relations', 204, 2700);
insert into DEPARTMENTS (department_id, department_name, manager_id, location_id)
values (80, 'Sales', 145, 2500);
insert into DEPARTMENTS (department_id, department_name, manager_id, location_id)
values (90, 'Executive', 100, 1700);
insert into DEPARTMENTS (department_id, department_name, manager_id, location_id)
values (100, 'Finance', 108, 1700);
insert into DEPARTMENTS (department_id, department_name, manager_id, location_id)
values (110, 'Accounting', 205, 1700);
insert into DEPARTMENTS (department_id, department_name, manager_id, location_id)
values (120, 'Treasury', null, 1700);
insert into DEPARTMENTS (department_id, department_name, manager_id, location_id)
values (130, 'Corporate Tax', null, 1700);
insert into DEPARTMENTS (department_id, department_name, manager_id, location_id)
values (140, 'Control And Credit', null, 1700);
insert into DEPARTMENTS (department_id, department_name, manager_id, location_id)
values (150, 'Shareholder Services', null, 1700);
insert into DEPARTMENTS (department_id, department_name, manager_id, location_id)
values (160, 'Benefits', null, 1700);
insert into DEPARTMENTS (department_id, department_name, manager_id, location_id)
values (170, 'Manufacturing', null, 1700);
insert into DEPARTMENTS (department_id, department_name, manager_id, location_id)
values (180, 'Construction', null, 1700);
insert into DEPARTMENTS (department_id, department_name, manager_id, location_id)
values (190, 'Contracting', null, 1700);
insert into DEPARTMENTS (department_id, department_name, manager_id, location_id)
values (200, 'Operations', null, 1700);
insert into DEPARTMENTS (department_id, department_name, manager_id, location_id)
values (210, 'IT Support', null, 1700);
insert into DEPARTMENTS (department_id, department_name, manager_id, location_id)
values (220, 'NOC', null, 1700);
insert into DEPARTMENTS (department_id, department_name, manager_id, location_id)
values (230, 'IT Helpdesk', null, 1700);
insert into DEPARTMENTS (department_id, department_name, manager_id, location_id)
values (240, 'Government Sales', null, 1700);
insert into DEPARTMENTS (department_id, department_name, manager_id, location_id)
values (250, 'Retail Sales', null, 1700);
insert into DEPARTMENTS (department_id, department_name, manager_id, location_id)
values (260, 'Recruiting', null, 1700);
insert into DEPARTMENTS (department_id, department_name, manager_id, location_id)
values (270, 'Payroll', null, 1700);
commit;
--prompt 27 records loaded
--prompt Loading EMPLOYEES...
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (198, 'Donald', 'OConnell', 'DOCONNEL', '650.507.9833', to_date('21-06-2007', 'dd-mm-yyyy'), 'SH_CLERK', 2600, null, 124, 50);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (199, 'Douglas', 'Grant', 'DGRANT', '650.507.9844', to_date('13-01-2008', 'dd-mm-yyyy'), 'SH_CLERK', 2600, null, 124, 50);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (200, 'Jennifer', 'Whalen', 'JWHALEN', '515.123.4444', to_date('17-09-2003', 'dd-mm-yyyy'), 'AD_ASST', 4400, null, 101, 10);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (201, 'Michael', 'Hartstein', 'MHARTSTE', '515.123.5555', to_date('17-02-2004', 'dd-mm-yyyy'), 'MK_MAN', 13000, null, 100, 20);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (202, 'Pat', 'Fay', 'PFAY', '603.123.6666', to_date('17-08-2005', 'dd-mm-yyyy'), 'MK_REP', 6000, null, 201, 20);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (203, 'Susan', 'Mavris', 'SMAVRIS', '515.123.7777', to_date('07-06-2002', 'dd-mm-yyyy'), 'HR_REP', 6500, null, 101, 40);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (204, 'Hermann', 'Baer', 'HBAER', '515.123.8888', to_date('07-06-2002', 'dd-mm-yyyy'), 'PR_REP', 10000, null, 101, 70);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (205, 'Shelley', 'Higgins', 'SHIGGINS', '515.123.8080', to_date('07-06-2002', 'dd-mm-yyyy'), 'AC_MGR', 12008, null, 101, 110);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (206, 'William', 'Gietz', 'WGIETZ', '515.123.8181', to_date('07-06-2002', 'dd-mm-yyyy'), 'AC_ACCOUNT', 8300, null, 205, 110);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (100, 'Steven', 'King', 'SKING', '515.123.4567', to_date('17-06-2003', 'dd-mm-yyyy'), 'AD_PRES', 24000, null, null, 90);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (101, 'Neena', 'Kochhar', 'NKOCHHAR', '515.123.4568', to_date('21-09-2005', 'dd-mm-yyyy'), 'AD_VP', 17000, null, 100, 90);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (102, 'Lex', 'De Haan', 'LDEHAAN', '515.123.4569', to_date('13-01-2001', 'dd-mm-yyyy'), 'AD_VP', 17000, null, 100, 90);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (103, 'Alexander', 'Hunold', 'AHUNOLD', '590.423.4567', to_date('03-01-2006', 'dd-mm-yyyy'), 'IT_PROG', 9000, null, 102, 60);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (104, 'Bruce', 'Ernst', 'BERNST', '590.423.4568', to_date('21-05-2007', 'dd-mm-yyyy'), 'IT_PROG', 6000, null, 103, 60);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (105, 'David', 'Austin', 'DAUSTIN', '590.423.4569', to_date('25-06-2005', 'dd-mm-yyyy'), 'IT_PROG', 4800, null, 103, 60);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (106, 'Valli', 'Pataballa', 'VPATABAL', '590.423.4560', to_date('05-02-2006', 'dd-mm-yyyy'), 'IT_PROG', 4800, null, 103, 60);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (107, 'Diana', 'Lorentz', 'DLORENTZ', '590.423.5567', to_date('07-02-2007', 'dd-mm-yyyy'), 'IT_PROG', 4200, null, 103, 60);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (108, 'Nancy', 'Greenberg', 'NGREENBE', '515.124.4569', to_date('17-08-2002', 'dd-mm-yyyy'), 'FI_MGR', 12008, null, 101, 100);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (109, 'Daniel', 'Faviet', 'DFAVIET', '515.124.4169', to_date('16-08-2002', 'dd-mm-yyyy'), 'FI_ACCOUNT', 9000, null, 108, 100);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (110, 'John', 'Chen', 'JCHEN', '515.124.4269', to_date('28-09-2005', 'dd-mm-yyyy'), 'FI_ACCOUNT', 8200, null, 108, 100);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (111, 'Ismael', 'Sciarra', 'ISCIARRA', '515.124.4369', to_date('30-09-2005', 'dd-mm-yyyy'), 'FI_ACCOUNT', 7700, null, 108, 100);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (112, 'Jose Manuel', 'Urman', 'JMURMAN', '515.124.4469', to_date('07-03-2006', 'dd-mm-yyyy'), 'FI_ACCOUNT', 7800, null, 108, 100);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (113, 'Luis', 'Popp', 'LPOPP', '515.124.4567', to_date('07-12-2007', 'dd-mm-yyyy'), 'FI_ACCOUNT', 6900, null, 108, 100);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (114, 'Den', 'Raphaely', 'DRAPHEAL', '515.127.4561', to_date('07-12-2002', 'dd-mm-yyyy'), 'PU_MAN', 11000, null, 100, 30);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (115, 'Alexander', 'Khoo', 'AKHOO', '515.127.4562', to_date('18-05-2003', 'dd-mm-yyyy'), 'PU_CLERK', 3100, null, 114, 30);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (116, 'Shelli', 'Baida', 'SBAIDA', '515.127.4563', to_date('24-12-2005', 'dd-mm-yyyy'), 'PU_CLERK', 2900, null, 114, 30);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (117, 'Sigal', 'Tobias', 'STOBIAS', '515.127.4564', to_date('24-07-2005', 'dd-mm-yyyy'), 'PU_CLERK', 2800, null, 114, 30);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (118, 'Guy', 'Himuro', 'GHIMURO', '515.127.4565', to_date('15-11-2006', 'dd-mm-yyyy'), 'PU_CLERK', 2600, null, 114, 30);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (119, 'Karen', 'Colmenares', 'KCOLMENA', '515.127.4566', to_date('10-08-2007', 'dd-mm-yyyy'), 'PU_CLERK', 2500, null, 114, 30);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (120, 'Matthew', 'Weiss', 'MWEISS', '650.123.1234', to_date('18-07-2004', 'dd-mm-yyyy'), 'ST_MAN', 8000, null, 100, 50);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (121, 'Adam', 'Fripp', 'AFRIPP', '650.123.2234', to_date('10-04-2005', 'dd-mm-yyyy'), 'ST_MAN', 8200, null, 100, 50);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (122, 'Payam', 'Kaufling', 'PKAUFLIN', '650.123.3234', to_date('01-05-2003', 'dd-mm-yyyy'), 'ST_MAN', 7900, null, 100, 50);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (123, 'Shanta', 'Vollman', 'SVOLLMAN', '650.123.4234', to_date('10-10-2005', 'dd-mm-yyyy'), 'ST_MAN', 6500, null, 100, 50);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (124, 'Kevin', 'Mourgos', 'KMOURGOS', '650.123.5234', to_date('16-11-2007', 'dd-mm-yyyy'), 'ST_MAN', 5800, null, 100, 50);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (125, 'Julia', 'Nayer', 'JNAYER', '650.124.1214', to_date('16-07-2005', 'dd-mm-yyyy'), 'ST_CLERK', 3200, null, 120, 50);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (126, 'Irene', 'Mikkilineni', 'IMIKKILI', '650.124.1224', to_date('28-09-2006', 'dd-mm-yyyy'), 'ST_CLERK', 2700, null, 120, 50);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (127, 'James', 'Landry', 'JLANDRY', '650.124.1334', to_date('14-01-2007', 'dd-mm-yyyy'), 'ST_CLERK', 2400, null, 120, 50);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (128, 'Steven', 'Markle', 'SMARKLE', '650.124.1434', to_date('08-03-2008', 'dd-mm-yyyy'), 'ST_CLERK', 2200, null, 120, 50);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (129, 'Laura', 'Bissot', 'LBISSOT', '650.124.5234', to_date('20-08-2005', 'dd-mm-yyyy'), 'ST_CLERK', 3300, null, 121, 50);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (130, 'Mozhe', 'Atkinson', 'MATKINSO', '650.124.6234', to_date('30-10-2005', 'dd-mm-yyyy'), 'ST_CLERK', 2800, null, 121, 50);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (131, 'James', 'Marlow', 'JAMRLOW', '650.124.7234', to_date('16-02-2005', 'dd-mm-yyyy'), 'ST_CLERK', 2500, null, 121, 50);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (132, 'TJ', 'Olson', 'TJOLSON', '650.124.8234', to_date('10-04-2007', 'dd-mm-yyyy'), 'ST_CLERK', 2100, null, 121, 50);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (133, 'Jason', 'Mallin', 'JMALLIN', '650.127.1934', to_date('14-06-2004', 'dd-mm-yyyy'), 'ST_CLERK', 3300, null, 122, 50);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (134, 'Michael', 'Rogers', 'MROGERS', '650.127.1834', to_date('26-08-2006', 'dd-mm-yyyy'), 'ST_CLERK', 2900, null, 122, 50);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (135, 'Ki', 'Gee', 'KGEE', '650.127.1734', to_date('12-12-2007', 'dd-mm-yyyy'), 'ST_CLERK', 2400, null, 122, 50);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (136, 'Hazel', 'Philtanker', 'HPHILTAN', '650.127.1634', to_date('06-02-2008', 'dd-mm-yyyy'), 'ST_CLERK', 2200, null, 122, 50);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (137, 'Renske', 'Ladwig', 'RLADWIG', '650.121.1234', to_date('14-07-2003', 'dd-mm-yyyy'), 'ST_CLERK', 3600, null, 123, 50);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (138, 'Stephen', 'Stiles', 'SSTILES', '650.121.2034', to_date('26-10-2005', 'dd-mm-yyyy'), 'ST_CLERK', 3200, null, 123, 50);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (139, 'John', 'Seo', 'JSEO', '650.121.2019', to_date('12-02-2006', 'dd-mm-yyyy'), 'ST_CLERK', 2700, null, 123, 50);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (140, 'Joshua', 'Patel', 'JPATEL', '650.121.1834', to_date('06-04-2006', 'dd-mm-yyyy'), 'ST_CLERK', 2500, null, 123, 50);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (141, 'Trenna', 'Rajs', 'TRAJS', '650.121.8009', to_date('17-10-2003', 'dd-mm-yyyy'), 'ST_CLERK', 3500, null, 124, 50);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (142, 'Curtis', 'Davies', 'CDAVIES', '650.121.2994', to_date('29-01-2005', 'dd-mm-yyyy'), 'ST_CLERK', 3100, null, 124, 50);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (143, 'Randall', 'Matos', 'RMATOS', '650.121.2874', to_date('15-03-2006', 'dd-mm-yyyy'), 'ST_CLERK', 2600, null, 124, 50);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (144, 'Peter', 'Vargas', 'PVARGAS', '650.121.2004', to_date('09-07-2006', 'dd-mm-yyyy'), 'ST_CLERK', 2500, null, 124, 50);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (145, 'John', 'Russell', 'JRUSSEL', '011.44.1344.429268', to_date('01-10-2004', 'dd-mm-yyyy'), 'SA_MAN', 14000, .4, 100, 80);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (146, 'Karen', 'Partners', 'KPARTNER', '011.44.1344.467268', to_date('05-01-2005', 'dd-mm-yyyy'), 'SA_MAN', 13500, .3, 100, 80);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (147, 'Alberto', 'Errazuriz', 'AERRAZUR', '011.44.1344.429278', to_date('10-03-2005', 'dd-mm-yyyy'), 'SA_MAN', 12000, .3, 100, 80);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (148, 'Gerald', 'Cambrault', 'GCAMBRAU', '011.44.1344.619268', to_date('15-10-2007', 'dd-mm-yyyy'), 'SA_MAN', 11000, .3, 100, 80);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (149, 'Eleni', 'Zlotkey', 'EZLOTKEY', '011.44.1344.429018', to_date('29-01-2008', 'dd-mm-yyyy'), 'SA_MAN', 10500, .2, 100, 80);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (150, 'Peter', 'Tucker', 'PTUCKER', '011.44.1344.129268', to_date('30-01-2005', 'dd-mm-yyyy'), 'SA_REP', 10000, .3, 145, 80);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (151, 'David', 'Bernstein', 'DBERNSTE', '011.44.1344.345268', to_date('24-03-2005', 'dd-mm-yyyy'), 'SA_REP', 9500, .25, 145, 80);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (152, 'Peter', 'Hall', 'PHALL', '011.44.1344.478968', to_date('20-08-2005', 'dd-mm-yyyy'), 'SA_REP', 9000, .25, 145, 80);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (153, 'Christopher', 'Olsen', 'COLSEN', '011.44.1344.498718', to_date('30-03-2006', 'dd-mm-yyyy'), 'SA_REP', 8000, .2, 145, 80);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (154, 'Nanette', 'Cambrault', 'NCAMBRAU', '011.44.1344.987668', to_date('09-12-2006', 'dd-mm-yyyy'), 'SA_REP', 7500, .2, 145, 80);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (155, 'Oliver', 'Tuvault', 'OTUVAULT', '011.44.1344.486508', to_date('23-11-2007', 'dd-mm-yyyy'), 'SA_REP', 7000, .15, 145, 80);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (156, 'Janette', 'King', 'JKING', '011.44.1345.429268', to_date('30-01-2004', 'dd-mm-yyyy'), 'SA_REP', 10000, .35, 146, 80);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (157, 'Patrick', 'Sully', 'PSULLY', '011.44.1345.929268', to_date('04-03-2004', 'dd-mm-yyyy'), 'SA_REP', 9500, .35, 146, 80);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (158, 'Allan', 'McEwen', 'AMCEWEN', '011.44.1345.829268', to_date('01-08-2004', 'dd-mm-yyyy'), 'SA_REP', 9000, .35, 146, 80);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (159, 'Lindsey', 'Smith', 'LSMITH', '011.44.1345.729268', to_date('10-03-2005', 'dd-mm-yyyy'), 'SA_REP', 8000, .3, 146, 80);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (160, 'Louise', 'Doran', 'LDORAN', '011.44.1345.629268', to_date('15-12-2005', 'dd-mm-yyyy'), 'SA_REP', 7500, .3, 146, 80);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (161, 'Sarath', 'Sewall', 'SSEWALL', '011.44.1345.529268', to_date('03-11-2006', 'dd-mm-yyyy'), 'SA_REP', 7000, .25, 146, 80);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (162, 'Clara', 'Vishney', 'CVISHNEY', '011.44.1346.129268', to_date('11-11-2005', 'dd-mm-yyyy'), 'SA_REP', 10500, .25, 147, 80);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (163, 'Danielle', 'Greene', 'DGREENE', '011.44.1346.229268', to_date('19-03-2007', 'dd-mm-yyyy'), 'SA_REP', 9500, .15, 147, 80);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (164, 'Mattea', 'Marvins', 'MMARVINS', '011.44.1346.329268', to_date('24-01-2008', 'dd-mm-yyyy'), 'SA_REP', 7200, .1, 147, 80);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (165, 'David', 'Lee', 'DLEE', '011.44.1346.529268', to_date('23-02-2008', 'dd-mm-yyyy'), 'SA_REP', 6800, .1, 147, 80);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (166, 'Sundar', 'Ande', 'SANDE', '011.44.1346.629268', to_date('24-03-2008', 'dd-mm-yyyy'), 'SA_REP', 6400, .1, 147, 80);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (167, 'Amit', 'Banda', 'ABANDA', '011.44.1346.729268', to_date('21-04-2008', 'dd-mm-yyyy'), 'SA_REP', 6200, .1, 147, 80);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (168, 'Lisa', 'Ozer', 'LOZER', '011.44.1343.929268', to_date('11-03-2005', 'dd-mm-yyyy'), 'SA_REP', 11500, .25, 148, 80);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (169, 'Harrison', 'Bloom', 'HBLOOM', '011.44.1343.829268', to_date('23-03-2006', 'dd-mm-yyyy'), 'SA_REP', 10000, .2, 148, 80);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (170, 'Tayler', 'Fox', 'TFOX', '011.44.1343.729268', to_date('24-01-2006', 'dd-mm-yyyy'), 'SA_REP', 9600, .2, 148, 80);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (171, 'William', 'Smith', 'WSMITH', '011.44.1343.629268', to_date('23-02-2007', 'dd-mm-yyyy'), 'SA_REP', 7400, .15, 148, 80);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (172, 'Elizabeth', 'Bates', 'EBATES', '011.44.1343.529268', to_date('24-03-2007', 'dd-mm-yyyy'), 'SA_REP', 7300, .15, 148, 80);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (173, 'Sundita', 'Kumar', 'SKUMAR', '011.44.1343.329268', to_date('21-04-2008', 'dd-mm-yyyy'), 'SA_REP', 6100, .1, 148, 80);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (174, 'Ellen', 'Abel', 'EABEL', '011.44.1644.429267', to_date('11-05-2004', 'dd-mm-yyyy'), 'SA_REP', 11000, .3, 149, 80);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (175, 'Alyssa', 'Hutton', 'AHUTTON', '011.44.1644.429266', to_date('19-03-2005', 'dd-mm-yyyy'), 'SA_REP', 8800, .25, 149, 80);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (176, 'Jonathon', 'Taylor', 'JTAYLOR', '011.44.1644.429265', to_date('24-03-2006', 'dd-mm-yyyy'), 'SA_REP', 8600, .2, 149, 80);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (177, 'Jack', 'Livingston', 'JLIVINGS', '011.44.1644.429264', to_date('23-04-2006', 'dd-mm-yyyy'), 'SA_REP', 8400, .2, 149, 80);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (178, 'Kimberely', 'Grant', 'KGRANT', '011.44.1644.429263', to_date('24-05-2007', 'dd-mm-yyyy'), 'SA_REP', 7000, .15, 149, null);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (179, 'Charles', 'Johnson', 'CJOHNSON', '011.44.1644.429262', to_date('04-01-2008', 'dd-mm-yyyy'), 'SA_REP', 6200, .1, 149, 80);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (180, 'Winston', 'Taylor', 'WTAYLOR', '650.507.9876', to_date('24-01-2006', 'dd-mm-yyyy'), 'SH_CLERK', 3200, null, 120, 50);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (181, 'Jean', 'Fleaur', 'JFLEAUR', '650.507.9877', to_date('23-02-2006', 'dd-mm-yyyy'), 'SH_CLERK', 3100, null, 120, 50);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (182, 'Martha', 'Sullivan', 'MSULLIVA', '650.507.9878', to_date('21-06-2007', 'dd-mm-yyyy'), 'SH_CLERK', 2500, null, 120, 50);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (183, 'Girard', 'Geoni', 'GGEONI', '650.507.9879', to_date('03-02-2008', 'dd-mm-yyyy'), 'SH_CLERK', 2800, null, 120, 50);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (184, 'Nandita', 'Sarchand', 'NSARCHAN', '650.509.1876', to_date('27-01-2004', 'dd-mm-yyyy'), 'SH_CLERK', 4200, null, 121, 50);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (185, 'Alexis', 'Bull', 'ABULL', '650.509.2876', to_date('20-02-2005', 'dd-mm-yyyy'), 'SH_CLERK', 4100, null, 121, 50);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (186, 'Julia', 'Dellinger', 'JDELLING', '650.509.3876', to_date('24-06-2006', 'dd-mm-yyyy'), 'SH_CLERK', 3400, null, 121, 50);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (187, 'Anthony', 'Cabrio', 'ACABRIO', '650.509.4876', to_date('07-02-2007', 'dd-mm-yyyy'), 'SH_CLERK', 3000, null, 121, 50);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (188, 'Kelly', 'Chung', 'KCHUNG', '650.505.1876', to_date('14-06-2005', 'dd-mm-yyyy'), 'SH_CLERK', 3800, null, 122, 50);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (189, 'Jennifer', 'Dilly', 'JDILLY', '650.505.2876', to_date('13-08-2005', 'dd-mm-yyyy'), 'SH_CLERK', 3600, null, 122, 50);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (190, 'Timothy', 'Gates', 'TGATES', '650.505.3876', to_date('11-07-2006', 'dd-mm-yyyy'), 'SH_CLERK', 2900, null, 122, 50);
commit;
--prompt 100 records committed...
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (191, 'Randall', 'Perkins', 'RPERKINS', '650.505.4876', to_date('19-12-2007', 'dd-mm-yyyy'), 'SH_CLERK', 2500, null, 122, 50);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (192, 'Sarah', 'Bell', 'SBELL', '650.501.1876', to_date('04-02-2004', 'dd-mm-yyyy'), 'SH_CLERK', 4000, null, 123, 50);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (193, 'Britney', 'Everett', 'BEVERETT', '650.501.2876', to_date('03-03-2005', 'dd-mm-yyyy'), 'SH_CLERK', 3900, null, 123, 50);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (194, 'Samuel', 'McCain', 'SMCCAIN', '650.501.3876', to_date('01-07-2006', 'dd-mm-yyyy'), 'SH_CLERK', 3200, null, 123, 50);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (195, 'Vance', 'Jones', 'VJONES', '650.501.4876', to_date('17-03-2007', 'dd-mm-yyyy'), 'SH_CLERK', 2800, null, 123, 50);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (196, 'Alana', 'Walsh', 'AWALSH', '650.507.9811', to_date('24-04-2006', 'dd-mm-yyyy'), 'SH_CLERK', 3100, null, 124, 50);
insert into EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
values (197, 'Kevin', 'Feeney', 'KFEENEY', '650.507.9822', to_date('23-05-2006', 'dd-mm-yyyy'), 'SH_CLERK', 3000, null, 124, 50);
commit;
--prompt 107 records loaded
--prompt Loading LOCATIONS...
insert into LOCATIONS (location_id, street_address, postal_code, city, state_province, country_id)
values (1000, '1297 Via Cola di Rie', '00989', 'Roma', null, 'IT');
insert into LOCATIONS (location_id, street_address, postal_code, city, state_province, country_id)
values (1100, '93091 Calle della Testa', '10934', 'Venice', null, 'IT');
insert into LOCATIONS (location_id, street_address, postal_code, city, state_province, country_id)
values (1200, '2017 Shinjuku-ku', '1689', 'Tokyo', 'Tokyo Prefecture', 'JP');
insert into LOCATIONS (location_id, street_address, postal_code, city, state_province, country_id)
values (1300, '9450 Kamiya-cho', '6823', 'Hiroshima', null, 'JP');
insert into LOCATIONS (location_id, street_address, postal_code, city, state_province, country_id)
values (1400, '2014 Jabberwocky Rd', '26192', 'Southlake', 'Texas', 'US');
insert into LOCATIONS (location_id, street_address, postal_code, city, state_province, country_id)
values (1500, '2011 Interiors Blvd', '99236', 'South San Francisco', 'California', 'US');
insert into LOCATIONS (location_id, street_address, postal_code, city, state_province, country_id)
values (1600, '2007 Zagora St', '50090', 'South Brunswick', 'New Jersey', 'US');
insert into LOCATIONS (location_id, street_address, postal_code, city, state_province, country_id)
values (1700, '2004 Charade Rd', '98199', 'Seattle', 'Washington', 'US');
insert into LOCATIONS (location_id, street_address, postal_code, city, state_province, country_id)
values (1800, '147 Spadina Ave', 'M5V 2L7', 'Toronto', 'Ontario', 'CA');
insert into LOCATIONS (location_id, street_address, postal_code, city, state_province, country_id)
values (1900, '6092 Boxwood St', 'YSW 9T2', 'Whitehorse', 'Yukon', 'CA');
insert into LOCATIONS (location_id, street_address, postal_code, city, state_province, country_id)
values (2000, '40-5-12 Laogianggen', '190518', 'Beijing', null, 'CN');
insert into LOCATIONS (location_id, street_address, postal_code, city, state_province, country_id)
values (2100, '1298 Vileparle (E)', '490231', 'Bombay', 'Maharashtra', 'IN');
insert into LOCATIONS (location_id, street_address, postal_code, city, state_province, country_id)
values (2200, '12-98 Victoria Street', '2901', 'Sydney', 'New South Wales', 'AU');
insert into LOCATIONS (location_id, street_address, postal_code, city, state_province, country_id)
values (2300, '198 Clementi North', '540198', 'Singapore', null, 'SG');
insert into LOCATIONS (location_id, street_address, postal_code, city, state_province, country_id)
values (2400, '8204 Arthur St', null, 'London', null, 'UK');
insert into LOCATIONS (location_id, street_address, postal_code, city, state_province, country_id)
values (2500, 'Magdalen Centre, The Oxford Science Park', 'OX9 9ZB', 'Oxford', 'Oxford', 'UK');
insert into LOCATIONS (location_id, street_address, postal_code, city, state_province, country_id)
values (2600, '9702 Chester Road', '09629850293', 'Stretford', 'Manchester', 'UK');
insert into LOCATIONS (location_id, street_address, postal_code, city, state_province, country_id)
values (2700, 'Schwanthalerstr. 7031', '80925', 'Munich', 'Bavaria', 'DE');
insert into LOCATIONS (location_id, street_address, postal_code, city, state_province, country_id)
values (2800, 'Rua Frei Caneca 1360 ', '01307-002', 'Sao Paulo', 'Sao Paulo', 'BR');
insert into LOCATIONS (location_id, street_address, postal_code, city, state_province, country_id)
values (2900, '20 Rue des Corps-Saints', '1730', 'Geneva', 'Geneve', 'CH');
insert into LOCATIONS (location_id, street_address, postal_code, city, state_province, country_id)
values (3000, 'Murtenstrasse 921', '3095', 'Bern', 'BE', 'CH');
insert into LOCATIONS (location_id, street_address, postal_code, city, state_province, country_id)
values (3100, 'Pieter Breughelstraat 837', '3029SK', 'Utrecht', 'Utrecht', 'NL');
insert into LOCATIONS (location_id, street_address, postal_code, city, state_province, country_id)
values (3200, 'Mariano Escobedo 9991', '11932', 'Mexico City', 'Distrito Federal,', 'MX');
commit;
--prompt 23 records loaded
--prompt Loading JOB_HISTORY...
insert into JOB_HISTORY (employee_id, start_date, end_date, job_id, department_id)
values (102, to_date('13-01-2001', 'dd-mm-yyyy'), to_date('24-07-2006', 'dd-mm-yyyy'), 'IT_PROG', 60);
insert into JOB_HISTORY (employee_id, start_date, end_date, job_id, department_id)
values (101, to_date('21-09-1997', 'dd-mm-yyyy'), to_date('27-10-2001', 'dd-mm-yyyy'), 'AC_ACCOUNT', 110);
insert into JOB_HISTORY (employee_id, start_date, end_date, job_id, department_id)
values (101, to_date('28-10-2001', 'dd-mm-yyyy'), to_date('15-03-2005', 'dd-mm-yyyy'), 'AC_MGR', 110);
insert into JOB_HISTORY (employee_id, start_date, end_date, job_id, department_id)
values (201, to_date('17-02-2004', 'dd-mm-yyyy'), to_date('19-12-2007', 'dd-mm-yyyy'), 'MK_REP', 20);
insert into JOB_HISTORY (employee_id, start_date, end_date, job_id, department_id)
values (114, to_date('24-03-2006', 'dd-mm-yyyy'), to_date('31-12-2007', 'dd-mm-yyyy'), 'ST_CLERK', 50);
insert into JOB_HISTORY (employee_id, start_date, end_date, job_id, department_id)
values (122, to_date('01-01-2007', 'dd-mm-yyyy'), to_date('31-12-2007', 'dd-mm-yyyy'), 'ST_CLERK', 50);
insert into JOB_HISTORY (employee_id, start_date, end_date, job_id, department_id)
values (200, to_date('17-09-1995', 'dd-mm-yyyy'), to_date('17-06-2001', 'dd-mm-yyyy'), 'AD_ASST', 90);
insert into JOB_HISTORY (employee_id, start_date, end_date, job_id, department_id)
values (176, to_date('24-03-2006', 'dd-mm-yyyy'), to_date('31-12-2006', 'dd-mm-yyyy'), 'SA_REP', 80);
insert into JOB_HISTORY (employee_id, start_date, end_date, job_id, department_id)
values (176, to_date('01-01-2007', 'dd-mm-yyyy'), to_date('31-12-2007', 'dd-mm-yyyy'), 'SA_MAN', 80);
insert into JOB_HISTORY (employee_id, start_date, end_date, job_id, department_id)
values (200, to_date('01-07-2002', 'dd-mm-yyyy'), to_date('31-12-2006', 'dd-mm-yyyy'), 'AC_ACCOUNT', 90);
commit;
--prompt 10 records loaded



--prompt Enabling foreign key constraints for COUNTRIES...
alter table COUNTRIES enable constraint COUNTR_REG_FK;
--prompt Enabling foreign key constraints for DEPARTMENTS...
alter table DEPARTMENTS enable constraint DEPT_LOC_FK;
alter table DEPARTMENTS enable constraint DEPT_MGR_FK;
--prompt Enabling foreign key constraints for EMPLOYEES...
alter table EMPLOYEES enable constraint EMP_DEPT_FK;
alter table EMPLOYEES enable constraint EMP_JOB_FK;
alter table EMPLOYEES enable constraint EMP_MANAGER_FK;
--prompt Enabling foreign key constraints for LOCATIONS...
alter table LOCATIONS enable constraint LOC_C_ID_FK;
--prompt Enabling foreign key constraints for JOB_HISTORY...
alter table JOB_HISTORY enable constraint JHIST_DEPT_FK;
alter table JOB_HISTORY enable constraint JHIST_EMP_FK;
alter table JOB_HISTORY enable constraint JHIST_JOB_FK;
--prompt Enabling triggers for REGIONS...
alter table REGIONS enable all triggers;
--prompt Enabling triggers for COUNTRIES...
alter table COUNTRIES enable all triggers;
--prompt Enabling triggers for JOBS...
alter table JOBS enable all triggers;
--prompt Enabling triggers for DEPARTMENTS...
alter table DEPARTMENTS enable all triggers;
--prompt Enabling triggers for EMPLOYEES...
alter table EMPLOYEES enable all triggers;
--prompt Enabling triggers for LOCATIONS...
alter table LOCATIONS enable all triggers;
--prompt Enabling triggers for JOB_HISTORY...
alter table JOB_HISTORY enable all triggers;
--prompt Enabling triggers for WORLD_CITIES...
alter table WORLD_CITIES enable all triggers;

--prompt Done

insert into departments (DEPARTMENT_ID, DEPARTMENT_NAME, MANAGER_ID, LOCATION_ID, SALARIES_SUM)
values (11, 'Digital Inovation', null, 2800, null);

insert into jobs (job_id,
                  job_title,
                  min_salary,
                  max_salary) values ('DIG_LEADER', 'Digital Innovation Leader', 10000, 20000)  ;
                   
commit;
