
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

select sum(standardcost) 'code sum'from Production.ProductCostHistory
--lay tong tat ca cac gia tri cac bang ghi truong standardcost thuoc bang 
select avg(standardcost) 'code avg'from Production.ProductCostHistory
--lay trung binh cac gia tri cac bang ghi truong standardcost thuoc bang 
select max(standardcost)' max'from Production.ProductCostHistory
--lay cac gia tri lon nhat bang ghi truong standardcost thuoc bang 
select count(*)'count'from Production.ProductCostHistory
--lay tat ca cac gia tri cac bang ghi truong standardcost thuoc bang 

SELECT GETDATE ()
--Lay ra ngay he thong : 
SELECT DATEPART (hh, GETDATE())
--Lay ra gio he thong 

SELECT CONVERT (Varchar (50), GETDATE(), 103)
--Dinh dang ngay dung ham CONVERT
--Tham khao them o day :