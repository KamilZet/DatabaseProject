USE AdventureWorks2012
GO

declare @projFields varchar(1000) = ''

;
WITH c
AS
(SELECT
		1 AS n UNION ALL SELECT
		n + 1
	FROM c
	WHERE n < 10)

SELECT
	@projFields = @projFields + CONVERT(VARCHAR(100), n) + ','
FROM c

SELECT
	@projFields

--todo
--jak do rekursywnego generatora liczb doczucić na końcu NULL ???
;
WITH c_ (posnum)
AS
(SELECT
		1 AS posnum
	UNION ALL SELECT
		posnum + 1
	FROM c_
	WHERE posnum < 10),
c (posnum)
AS
(SELECT
		posnum
	FROM c_ UNION SELECT
		NULL)

SELECT
	c1.posnum
	,c2.posnum
	,c3.posnum
	,c4.posnum
	,c5.posnum
	,c6.posnum
	,c7.posnum
	,c8.posnum
	,c9.posnum
	,c10.posnum
FROM	c c1
		,c c2
		,c c3
		,c c4
		,c c5
		,c c6
		,c c7
		,c c8
		,c c9
		,c c10
WHERE (c2.posnum > c1.posnum
OR c2.posnum IS NULL)
AND (c3.posnum > c2.posnum
OR c3.posnum IS NULL)
AND (c4.posnum > c3.posnum
OR c4.posnum IS NULL)
AND (c5.posnum > c4.posnum
OR c5.posnum IS NULL)
AND (c6.posnum > c5.posnum
OR c6.posnum IS NULL)
AND (c7.posnum > c6.posnum
OR c7.posnum IS NULL)
AND (c8.posnum > c7.posnum
OR c8.posnum IS NULL)
AND (c9.posnum > c8.posnum
OR c9.posnum IS NULL)
AND (c10.posnum > c9.posnum
OR c10.posnum IS NULL)
AND c1.posnum IS NOT NULL
ORDER BY 1, 2, 3, 4, 5, 6, 7, 8, 9, 10