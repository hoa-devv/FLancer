use AdventureWorks2019
--su dung du lieu adventureworks
go
select HireDate,Gender from HumanResources.employee
--khai bao bien
go
declare @deptid int
--khai bao bien cuc bo ten la depid kieu int
select @deptid=1
--gan gia tri cho bien bang 1
select name, groupname from HumanResources.Department
where DepartmentID > @deptid
go

select @@LANGUAGE --hien thi thong tin bien 
select @@VERSION  -- hien thi thong tin bien
select * from HumanResources.Shift
go
