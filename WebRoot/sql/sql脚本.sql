---用户表----
create table employee(
emp_id number(11) primary key not null,
emp_code varchar2(12) not null,
emp_name varchar2(12) not null,
emp_pwd varchar2(16) not null,
emp_sex char(2) not null,
emp_joindate timestamp not null,
emp_birth timestamp null,
emp_address varchar2(100) null,
emp_email varchar2(50) null,
emp_phone varchar2(13) null,
emp_description long null,
dept_id number not null
);


alter table employee add constraints qu_employee unique (emp_code,emp_name);

alter table employee add constraint pk_employee foreign key(dept_id)
references dept(dept_id);

create sequence employee_id
start with 1
increment by 1;

create or replace trigger t_employee_id
before insert on employee
for each row
  begin
    :new.emp_id  := employee_id.nextval;
  end t_employee_id;
  
  
  
  -----权限表
  create table power(
  power_id number(11) primary key not null,
  power_name varchar2(20) not null,
  power_address varchar2(200) not null
  );
  
  create sequence power_id
  start with 1
  increment by 1;
  
  create or replace trigger t_power_id
  before insert on power
  for each row
    begin
      :new.power_id  := power_id.nextval;
    end t_power_id;
    
----角色表
create table role(
role_id number(11) primary key not null,
role_name varchar2(20) not null
);
create sequence role_id
start with 1
increment by 1;   

create or replace trigger t_power_id
before insert on power
for each row
  begin
    :new.role_id  := role_id.nextval;
  end t_power_id;

----权限角色表
create table powerrole(
POWER_id number(11) not null,
ROLE_id number(11) not null
);

alter table powerrole add constraint pk_powerrole primary key(POWER_id,ROLE_id);

alter table powerrole add constraint fk_power foreign key (POWER_id)
references power(power_id);

alter table powerrole add constraint fk_role foreign key (ROLE_id)
references role(role_id);


--角色员工表

create table employeerole(
ROLE_ID number(11) not null,
EMP_ID number(11) not null
);

alter table employeerole  add constraint pk_employeerole primary key(ROLE_ID,EMP_ID);

alter table employeerole add constraint pk_role_emp foreign key(role_id)
references role(role_id);

alter table employeerole add constraint pk_emp_role foreign key(emp_id)
references employee(emp_id);






