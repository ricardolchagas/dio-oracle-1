create table REGIONS
(
  region_id   NUMBER,
  region_name VARCHAR2(25)
)
;

create table COUNTRIES
(
  country_id   CHAR(2),
  country_name VARCHAR2(40),
  region_id    NUMBER,
  constraint COUNTRY_C_ID_PK primary key (COUNTRY_ID)
)
organization index;
comment on table COUNTRIES
  is 'country table. Contains 25 rows. References with locations table.';
comment on column COUNTRIES.country_id
  is 'Primary key of countries table.';
comment on column COUNTRIES.country_name
  is 'Country name';
comment on column COUNTRIES.region_id
  is 'Region ID for the country. Foreign key to region_id column in the departments table.';

create table JOBS
(
  job_id     VARCHAR2(10) not null,
  job_title  VARCHAR2(35),
  min_salary NUMBER(6),
  max_salary NUMBER(6)
)
;

comment on table JOBS
  is 'jobs table with job titles and salary ranges. Contains 19 rows.
References with employees and job_history table.';
comment on column JOBS.job_id
  is 'Primary key of jobs table.';
comment on column JOBS.job_title
  is 'A not null column that shows job title, e.g. AD_VP, FI_ACCOUNTANT';
comment on column JOBS.min_salary
  is 'Minimum salary for a job title.';
comment on column JOBS.max_salary
  is 'Maximum salary for a job title';

create table DEPARTMENTS
(
  department_id   NUMBER(4) not null,
  department_name VARCHAR2(30),
  manager_id      NUMBER(6),
  location_id     NUMBER(4)
)
;
comment on table DEPARTMENTS
  is 'Departments table that shows details of departments where employees
work. Contains 27 rows; references with locations, employees, and job_history tables.';
comment on column DEPARTMENTS.department_id
  is 'Primary key column of departments table.';
comment on column DEPARTMENTS.department_name
  is 'A not null column that shows name of a department. Administration,
Marketing, Purchasing, Human Resources, Shipping, IT, Executive, Public
Relations, Sales, Finance, and Accounting. ';
comment on column DEPARTMENTS.manager_id
  is 'Manager_id of a department. Foreign key to employee_id column of employees table. The manager_id column of the employee table references this column.';
comment on column DEPARTMENTS.location_id
  is 'Location id where a department is located. Foreign key to location_id column of locations table.';
create index DEPT_LOCATION_IX on DEPARTMENTS (LOCATION_ID);

create table EMPLOYEES
(
  employee_id    NUMBER(6) not null,
  first_name     VARCHAR2(20),
  last_name      VARCHAR2(25),
  email          VARCHAR2(25),
  phone_number   VARCHAR2(20),
  hire_date      DATE,
  job_id         VARCHAR2(10),
  salary         NUMBER(8,2),
  commission_pct NUMBER(2,2),
  manager_id     NUMBER(6),
  department_id  NUMBER(4)
)
;
comment on table EMPLOYEES
  is 'employees table. Contains 107 rows. References with departments,
jobs, job_history tables. Contains a self reference.';
comment on column EMPLOYEES.employee_id
  is 'Primary key of employees table.';
comment on column EMPLOYEES.first_name
  is 'First name of the employee. A not null column.';
comment on column EMPLOYEES.last_name
  is 'Last name of the employee. A not null column.';
comment on column EMPLOYEES.email
  is 'Email id of the employee';
comment on column EMPLOYEES.phone_number
  is 'Phone number of the employee; includes country code and area code';
comment on column EMPLOYEES.hire_date
  is 'Date when the employee started on this job. A not null column.';
comment on column EMPLOYEES.job_id
  is 'Current job of the employee; foreign key to job_id column of the
jobs table. A not null column.';
comment on column EMPLOYEES.salary
  is 'Monthly salary of the employee. Must be greater
than zero (enforced by constraint emp_salary_min)';
comment on column EMPLOYEES.commission_pct
  is 'Commission percentage of the employee; Only employees in sales
department elgible for commission percentage';
comment on column EMPLOYEES.manager_id
  is 'Manager id of the employee; has same domain as manager_id in
departments table. Foreign key to employee_id column of employees table.
(useful for reflexive joins and CONNECT BY query)';
comment on column EMPLOYEES.department_id
  is 'Department id where employee works; foreign key to department_id
column of the departments table';

create index EMP_DEPARTMENT_IX on EMPLOYEES (DEPARTMENT_ID);
create index EMP_JOB_IX on EMPLOYEES (JOB_ID);
create index EMP_MANAGER_IX on EMPLOYEES (MANAGER_ID);
create index EMP_NAME_IX on EMPLOYEES (LAST_NAME, FIRST_NAME);

create table LOCATIONS
(
  location_id    NUMBER(4) not null,
  street_address VARCHAR2(40),
  postal_code    VARCHAR2(12),
  city           VARCHAR2(30),
  state_province VARCHAR2(25),
  country_id     CHAR(2)
)
;
comment on table LOCATIONS
  is 'Locations table that contains specific address of a specific office,
warehouse, and/or production site of a company. Does not store addresses /
locations of customers. Contains 23 rows; references with the
departments and countries tables. ';
comment on column LOCATIONS.location_id
  is 'Primary key of locations table';
comment on column LOCATIONS.street_address
  is 'Street address of an office, warehouse, or production site of a company.
Contains building number and street name';
comment on column LOCATIONS.postal_code
  is 'Postal code of the location of an office, warehouse, or production site
of a company. ';
comment on column LOCATIONS.city
  is 'A not null column that shows city where an office, warehouse, or
production site of a company is located. ';
comment on column LOCATIONS.state_province
  is 'State or Province where an office, warehouse, or production site of a
company is located.';
comment on column LOCATIONS.country_id
  is 'Country where an office, warehouse, or production site of a company is
located. Foreign key to country_id column of the countries table.';
create index LOC_CITY_IX on LOCATIONS (CITY);
create index LOC_COUNTRY_IX on LOCATIONS (COUNTRY_ID);
create index LOC_STATE_PROVINCE_IX on LOCATIONS (STATE_PROVINCE);

create table JOB_HISTORY
(
  employee_id   NUMBER(6),
  start_date    DATE,
  end_date      DATE,
  job_id        VARCHAR2(10),
  department_id NUMBER(4)
)
;
comment on table JOB_HISTORY
  is 'Table that stores job history of the employees. If an employee
changes departments within the job or changes jobs within the department,
new rows get inserted into this table with old job information of the
employee. Contains a complex primary key: employee_id+start_date.
Contains 25 rows. References with jobs, employees, and departments tables.';
comment on column JOB_HISTORY.employee_id
  is 'A not null column in the complex primary key employee_id+start_date.
Foreign key to employee_id column of the employee table';
comment on column JOB_HISTORY.start_date
  is 'A not null column in the complex primary key employee_id+start_date.
Must be less than the end_date of the job_history table. (enforced by
constraint jhist_date_interval)';
comment on column JOB_HISTORY.end_date
  is 'Last day of the employee in this job role. A not null column. Must be
greater than the start_date of the job_history table.
(enforced by constraint jhist_date_interval)';
comment on column JOB_HISTORY.job_id
  is 'Job role in which the employee worked in the past; foreign key to
job_id column in the jobs table. A not null column.';
comment on column JOB_HISTORY.department_id
  is 'Department id in which the employee worked in the past; foreign key to deparment_id column in the departments table';
create index JHIST_DEPARTMENT_IX on JOB_HISTORY (DEPARTMENT_ID);
create index JHIST_EMPLOYEE_IX on JOB_HISTORY (EMPLOYEE_ID);
create index JHIST_JOB_IX on JOB_HISTORY (JOB_ID);

create table WORLD_CITIES
(
  city       VARCHAR2(100),
  city_ascii VARCHAR2(100),
  lat        NUMBER,
  lng        NUMBER,
  country    VARCHAR2(100),
  iso2       VARCHAR2(100),
  iso3       VARCHAR2(100),
  admin_name VARCHAR2(100),
  capital    VARCHAR2(100),
  population INTEGER,
  id         INTEGER
)
;

alter table REGIONS
  add constraint REG_ID_PK primary key (REGION_ID);
alter table REGIONS
  add constraint REGION_ID_NN
  check ("REGION_ID" IS NOT NULL);

alter table COUNTRIES
  add constraint COUNTR_REG_FK foreign key (REGION_ID)
  references REGIONS (REGION_ID);
alter table COUNTRIES
  add constraint COUNTRY_ID_NN
  check ("COUNTRY_ID" IS NOT NULL);

alter table JOBS
  add constraint JOB_ID_PK primary key (JOB_ID);
alter table JOBS
  add constraint JOB_TITLE_NN
  check ("JOB_TITLE" IS NOT NULL);

alter table LOCATIONS
  add constraint LOC_ID_PK primary key (LOCATION_ID);
alter table LOCATIONS
  add constraint LOC_C_ID_FK foreign key (COUNTRY_ID)
  references COUNTRIES (COUNTRY_ID);
alter table LOCATIONS
  add constraint LOC_CITY_NN
  check ("CITY" IS NOT NULL);

alter table DEPARTMENTS
  add constraint DEPT_ID_PK primary key (DEPARTMENT_ID);
alter table DEPARTMENTS
  add constraint DEPT_LOC_FK foreign key (LOCATION_ID)
  references LOCATIONS (LOCATION_ID);
alter table EMPLOYEES
  add constraint EMP_EMP_ID_PK primary key (EMPLOYEE_ID);

alter table DEPARTMENTS
  add constraint DEPT_MGR_FK foreign key (MANAGER_ID)
  references EMPLOYEES (EMPLOYEE_ID);
alter table DEPARTMENTS
  add constraint DEPT_NAME_NN
  check ("DEPARTMENT_NAME" IS NOT NULL);


alter table EMPLOYEES
  add constraint EMP_EMAIL_UK unique (EMAIL);
alter table EMPLOYEES
  add constraint EMP_DEPT_FK foreign key (DEPARTMENT_ID)
  references DEPARTMENTS (DEPARTMENT_ID);
alter table EMPLOYEES
  add constraint EMP_JOB_FK foreign key (JOB_ID)
  references JOBS (JOB_ID);
alter table EMPLOYEES
  add constraint EMP_MANAGER_FK foreign key (MANAGER_ID)
  references EMPLOYEES (EMPLOYEE_ID);
alter table EMPLOYEES
  add constraint EMP_EMAIL_NN
  check ("EMAIL" IS NOT NULL);
alter table EMPLOYEES
  add constraint EMP_HIRE_DATE_NN
  check ("HIRE_DATE" IS NOT NULL);
alter table EMPLOYEES
  add constraint EMP_JOB_NN
  check ("JOB_ID" IS NOT NULL);
alter table EMPLOYEES
  add constraint EMP_LAST_NAME_NN
  check ("LAST_NAME" IS NOT NULL);
alter table EMPLOYEES
  add constraint EMP_SALARY_MIN
  check (salary > 0);



alter table JOB_HISTORY
  add constraint JHIST_EMP_ID_ST_DATE_PK primary key (EMPLOYEE_ID, START_DATE);
alter table JOB_HISTORY
  add constraint JHIST_DEPT_FK foreign key (DEPARTMENT_ID)
  references DEPARTMENTS (DEPARTMENT_ID);
alter table JOB_HISTORY
  add constraint JHIST_EMP_FK foreign key (EMPLOYEE_ID)
  references EMPLOYEES (EMPLOYEE_ID);
alter table JOB_HISTORY
  add constraint JHIST_JOB_FK foreign key (JOB_ID)
  references JOBS (JOB_ID);
alter table JOB_HISTORY
  add constraint JHIST_DATE_INTERVAL
  check (end_date > start_date);
alter table JOB_HISTORY
  add constraint JHIST_EMPLOYEE_NN
  check ("EMPLOYEE_ID" IS NOT NULL);
alter table JOB_HISTORY
  add constraint JHIST_END_DATE_NN
  check ("END_DATE" IS NOT NULL);
alter table JOB_HISTORY
  add constraint JHIST_JOB_NN
  check ("JOB_ID" IS NOT NULL);
alter table JOB_HISTORY
  add constraint JHIST_START_DATE_NN
  check ("START_DATE" IS NOT NULL);



create sequence DEPARTMENTS_SEQ
minvalue 1
maxvalue 9990
start with 280
increment by 10
nocache;

create sequence EMPLOYEES_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 207
increment by 1
nocache;

create sequence LOCATIONS_SEQ
minvalue 1
maxvalue 9900
start with 3300
increment by 100
nocache;


alter table employees add cpf varchar2(14);
alter table departments add SALARIES_SUM NUMBER(10, 2);
