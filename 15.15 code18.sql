USE tempdb;
GO
CREATE TABLE dbo.TestRethrow
(		ID INT PRIMARY KEY
);
BEGIN TRY
INSERT dbo.TestRethrow(ID) VALUES (1);
INSERT dbo.TestRethrow (ID) VALUES (1);
END TRY
BEGIN CATCH

PRINT' In catch block .';
THROW;
END CATCH;