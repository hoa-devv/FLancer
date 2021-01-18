USE AdventureWorks2012;
GO
DECLARE @TranName VARCHAR (30);
SELECT @TranName = 'FirstTransaction' ;
BEGIN TRANSACTION @TranName;
DELETE FROM HumanResources.JobCandidate
		WHERE JobCandidateID = 13;