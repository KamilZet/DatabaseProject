use adventureworks2012
go

USE AdventureWorks2012
GO

SELECT
	rs1.idcomb
	,rs1.idpos
	,rs1.idrank
	,rs1.facecount
	,rs2.idpos
	,rs2.idrank
	,rs2.facecount

FROM Combinatorics.vwRankScenarios rs1
INNER JOIN Combinatorics.vwRankScenarios rs2
	ON rs1.idcomb = rs2.idcomb
	AND rs1.idpos < rs2.idpos
	and rs1.idpos != rs2.idpos
WHERE rs1.idcomb = 3