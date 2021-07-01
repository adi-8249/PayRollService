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