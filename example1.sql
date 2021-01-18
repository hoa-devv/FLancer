USE AdventureWorks2019
go 

SELECT EndDate, ModifiedDate,BusinessEntityID   From HumanResources.EmployeeDepartmentHistory
Go 
DECLARE @deptID INT
--Khai báo biến  cục bộ tên là deptID kiểu int
SELECT @deptID=1
--Gán giá trị cho biến bằng 1
SELECT Name, GroupName FROM HumanResources.Department
WHERE DepartmentID < @deptID
GO
SELECT @@LANGUAGE -- Hiển thị thông tin của biến toàn 
SELECT @@VERSION  -- Hiên thi thong tin cua bien toan

Go
--Lay tong tat ca cac gia tri cac ban ghi truong StadardCost 
SELECT SUM (StandardCost)'code Summ' FROM Production.ProductCostHistory

--Tinh gia tri trung binh cua truong StadardCost thuoc bang
SELECT AVG(StandardCost)'code AVG' FROM Production.ProductCostHistory

--Lay gia tri lon nhat cua truong StandardCost trong bang Pro
SELECT MAX (standardCost) FROM Production.ProductCostHistory

--Dem tong so ban ghi trong bang Production
SELECT COUNT(*) FROM Production.ProductPhoto

