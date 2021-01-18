BEGIN TRANSACTION DeleteCandidate
	WITH MARK N'Deleting a Job Candidate';
GO
DELETE FROM HumanResources. JObCandidate
	WHERE JobCandidateID = 11;
GO
COMMIT TRANSACTION DeleteCAndidate;