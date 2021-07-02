--Welcome to Pay_roll_service
--UC1-Creating database and use
create database payroll_service;
Use payroll_service;

--UC2-Creating Employee payrollservice Table
create table EmployeePayRoll(
EmployeeID int Identity(1,1) primary key,
EmployeeName varchar(32),
Salary float,
StartDate date
);
--UC3-Inserting data into payroll service table
insert into EmployeePayRoll(EmployeeName,Salary,StartDate)
values('Anjaneya',50000.00,'2021-05-25'),
       ('gopal',30000.00,'2021-03-02'),
	   ('Raja',40000.00,'2021-08-01'),
	   ('Biju',35000.00,'2020-05-02'),
	   ('Sridhar',20000.00,'2020-09-07');
--UC4-Retriving Data
select * from EmployeePayRoll;
--UC5-retriving Particular data
Select Salary from EmployeePayRoll Where EmployeeName='Biju'
Select Salary from EmployeePayRoll Where StartDate BETWEEN CAST('2018-01-01' as date) and GetDate();
--UC6-Updating gender of the employee name
Alter Table EmployeePayroll
Add gender varchar(20);