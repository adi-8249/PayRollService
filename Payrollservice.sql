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

UPDATE EmployeePayroll set Gender ='Male' where EmployeeName='Anjaneya'
UPDATE EmployeePayroll set Gender ='Male' where EmployeeName='gopal'
UPDATE EmployeePayroll set Gender ='Male' where EmployeeName='Raja'
UPDATE EmployeePayroll set Gender ='Male' where EmployeeName='Biju'
UPDATE EmployeePayroll set Gender ='female' where EmployeeName='Sridhar';

--UC7-DataBase functions
Select SUM(Salary) from EmployeePayroll
Select AVG(Salary) from EmployeePayroll
Select MIN(Salary) from EmployeePayroll
Select MAX(Salary) from EmployeePayroll
Select Count(EmployeeID) from EmployeePayroll
Select SUM(Salary) from EmployeePayroll where Gender = 'Female' GROUP BY Gender;

--UC8-Extending the table with adding phonenumber,address and department
Alter Table EmployeePayroll Add
PhoneNumber varchar(10),
Department varchar(30),
address varchar(30),
CONSTRAINT DF_Address DEFAULT 'Indian' FOR Address

--UC9-Extending table with basicpay,Deduction,TaxablePay,NetPay,IncomeTax
Alter table EmployeePayRoll Add
BasicPay float,
Deduction float,
taxablePay float,
IncomeTax float,
NetPay float;

--UC10-Ability to make terissa part of sales and markting department
Insert into EmployeePayroll(EmployeeName,Salary,StartDate)
VALUES ('Terissa', 50000.00 , '2021-03-10'),
	   ('Terissa', 70000.00 , '2021-04-10')
UPDATE EmployeePayroll set Gender ='Female' where EmployeeName='Terissa'
UPDATE EmployeePayroll set PhoneNumber ='8949775971', Department='Sales & Marketing', Address='Mumbai',BasicPay=25000, Deduction=3000,TaxablePay=1000,IncomeTax=200,NetPay=17000 where EmployeeName='Anjaneya'
UPDATE EmployeePayroll set PhoneNumber ='8949775972', Department='HR', Address='Bhubaneswar',BasicPay=15000, Deduction=4000,TaxablePay=1000,IncomeTax=400,NetPay=19000 where EmployeeName='gopal'
UPDATE EmployeePayroll set PhoneNumber ='8949775973', Department='Support', Address='Gurgaon',BasicPay=18000, Deduction=5000,TaxablePay=1000,IncomeTax=400,NetPay=21000 where EmployeeName='Raja'
UPDATE EmployeePayroll set PhoneNumber ='8949775974', Department='Manager', Address='Kolkata',BasicPay=32000, Deduction=7000,TaxablePay=2000,IncomeTax=200,NetPay=18000 where EmployeeName='Biju'
UPDATE EmployeePayroll set PhoneNumber ='8949775975', Department='HR', Address='Amritsar',BasicPay=30000, Deduction=5000,TaxablePay=1000,IncomeTax=200,NetPay=19000 where EmployeeName='Sridhar'
UPDATE EmployeePayroll set PhoneNumber ='8949775977', Department='Sales & Marketing', Address='Mumbai',BasicPay=35000, Deduction=2000,TaxablePay=1000,IncomeTax=200,NetPay=13000 where EmployeeName='Terissa'
UPDATE EmployeePayroll set PhoneNumber ='8949775978', Department='Sales & Marketing', Address='Mumbai',BasicPay=35000, Deduction=2000,TaxablePay=1000,IncomeTax=200,NetPay=13000 where EmployeeName='Terissa'
 
