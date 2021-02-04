CREATE DATABASE Final
GO
USE Final
GO
CREATE TABLE Categories
(
CateID char(6) Primary Key,
CateName nvarchar(100) not null,
Descriptionn nvarchar(200),
)
GO
INSERT INTO Categories (CateID,CateName,Descriptionn) VALUES
			('B123','RAM','May tinh'),
			('B456','CPU','May tinh'),
			('B789','HDD','May tinh')
GO



CREATE TABLE Parts
(
PartID int Primary key identity,
PartName nvarchar (100) not null,
CateID char(6),
Descriptionn nvarchar(1000),
Price money,
Quantity int ,
Warranty int ,
Photo nvarchar(200),
Constraint fk foreign key (CateID) REFERENCES Categories(CateID)
)
GO
INSERT INTO Parts (PartName,CateID,Descriptionn,Price,Quantity,Warranty,Photo)
			VALUES ('AAA',123,'ngon',111,0,1,'photo/nophoto.png'),
					('BBB',456,'ngon',222,0,1,'photo/nophoto.png'),
					('CCC',789,'ngon',60,0,1,'photo/nophoto.png')
GO


--cau4--
SELECT * FROM Parts
WhERE price >100
GO
--cau5--
SELECT c.CateName,p.PartName
FROM Categories c
JOIN Parts p ON p.CateID=c.CateID
WHERE c.CateName='CPU'
GO

--cau6--
CREATE VIEW v_Parts AS
SELECT PartID, P.PartName,E.CateName,P.Price, P.Quantity
FROM Parts P,   JOIN Categories E ON E.CateID = P.CateID
GO

--cau7--


