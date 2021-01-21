IF EXISTS (SELECT * FROM sys.databases WHERE Name LIKE 'BookLibrary')
DROP DATABASE BookLibrary
GO 

CREATE DATABASE BookLibrary
GO

USE BookLibrary
GO


	CREATE TABLE  Book(
	BookCode int PRIMARY KEY,
	BookTitle varchar(100) NOT NULL,
	Author varchar(50) NOT NULL,
	Edition int,
	BookPrice money,
	Copies int,
	)
	GO

	INSERT INTO Book VALUES (11,'TOAN','HIEP',10, 20, 50);
	INSERT INTO Book VALUES (12,'VAN','LONG',11, 30, 60);
	INSERT INTO Book VALUES (13,'LS','HOANG',12, 40, 70);
	INSERT INTO Book VALUES (14,'VL','NGUEN',13, 50, 80);
	INSERT INTO Book VALUES (15,'HOA','PHUC',14, 60, 90);
	INSERT INTO Book VALUES (16,'SINH','CHUNG',15,70, 100);
	GO

	SELECT * FROM Book
	GO

	CREATE TABLE Member(
	MemberCode int PRIMARY KEY,
	Name varchar(50) NOT NULL,
	Address varchar(100) NOT NULL,
	PhoneNumber int,
	)
	GO

	INSERT INTO Member VALUES (1, 'Tien', 'Nhon', 0344047379);
	INSERT INTO Member VALUES (2, 'HOA', 'Trung Kinh', 0345047379);
	INSERT INTO Member VALUES (3, 'Duc', 'Trung Kinh', 0346047379);
	INSERT INTO Member VALUES (4, 'Thanh', 'De La THanh', 0347047379);
	GO

	SELECT * FROM Member
	GO

	CREATE TABLE IssueDetails(
	BookCode int PRIMARY KEY,
	MemberCode int,
	IssueDate datetime,
	ReturnData datetime,
	CONSTRAINT mk FOREIGN KEY (MemberCode) REFERENCES Member(MemberCode),
	CONSTRAINT fk FOREIGN KEY (BookCode) REFERENCES Book(BookCode),
	)
	GO

	INSERT INTO IssueDetails VALUES(11, 1, 11,32);
	INSERT INTO IssueDetails VALUES(12, 2, 12,54);
	INSERT INTO IssueDetails VALUES(13, 3, 13,68);
	INSERT INTO IssueDetails VALUES(14, 4, 14,89);

	GO 
	--Xóa bỏ rằng buộc ngoại khóa của bảng IssuDetails
	ALTER TABLE IssueDetails
	DROP CONSTRAINT mk,
		CONSTRAINT fk;
		--Xóa bỏ rằng buộc khóa của bảng Book
	ALTER TABLE Book
	DROP CONSTRAINT BookCode;
	--Xóa bỏ rằng buộc của bảng Member
	ALTER TABLE Member
	DROP CONSTRAINT MemberCode;
	--Thêm mới ràng buộc khóa chính cho Member
	ALTER TABLE Member
	ADD CONSTRAINT MemberCode PRIMARY KEY ;
	--Thêm mới rằng buộc khóa chính cho bảng Book
	ALTER TABLE Book
	DROP CONSTRAINT BookCode ;
	-- Tạo khóa chính gồm 2 cột BookCode, MemberCode cho bảng IssueDetails
	ALTER TABLE IssueDetails
	ADD CONSTRAINT mk FOREIGN KEY (MemberCode) REFERENCES Member(MemberCode),
		CONSTRAINT fk FOREIGN KEY (BookCode) REFERENCES Book(BookCode);
	--Bổ sung rằng buộc duy nhất cho PhoneNumber của bảng Member--
	 ALTER TABLE Member
	 ADD CONSTRAINT PhoneNumber UNIQUE