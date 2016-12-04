USE AdventureWorks2012
GO

WITH c (productid, defaultposition)
AS
(SELECT
		productid
		,DEFAULTPOSITION
	FROM productdeployplan UNION SELECT
		NULL
		,NULL)

SELECT
	a.productid
	,b.productid
FROM c a
CROSS APPLY (SELECT
		b.productid
	FROM c b
	WHERE b.defaultposition > a.defaultposition) b
GO

WITH combpos (posnum)
AS
(SELECT
		*
	FROM (VALUES (1), (2), (3), (4), (5), (6), (7), (8), (9), (10), (NULL)) c (productid))

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
order by 1,2,3,4,5,6,7,8,9,10