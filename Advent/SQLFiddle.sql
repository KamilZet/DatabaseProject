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

WITH c (productid)
AS
(SELECT
		*
	FROM (VALUES (1), (2), (3), (4), (5), (6), (7), (8), (9), (10), (NULL)) c (productid))

SELECT
	pdp1.productid
	,pdp2.productid
	,pdp3.productid
	,pdp4.productid
	,pdp5.productid
	,pdp6.productid
	,pdp7.productid
	,pdp8.productid
	,pdp9.productid
	,pdp10.productid
FROM	c pdp1
		,c pdp2
		,c pdp3
		,c pdp4
		,c pdp5
		,c pdp6
		,c pdp7
		,c pdp8
		,c pdp9
		,c pdp10
WHERE (pdp2.PRODUCTID > pdp1.productid
OR pdp2.productid IS NULL)
AND (pdp3.PRODUCTID > pdp2.productid
OR pdp3.productid IS NULL)
AND (pdp4.PRODUCTID > pdp3.productid
OR pdp4.productid IS NULL)
AND (pdp5.PRODUCTID > pdp4.productid
OR pdp5.productid IS NULL)

AND (pdp6.PRODUCTID > pdp5.productid
OR pdp6.productid IS NULL)
AND (pdp7.PRODUCTID > pdp6.productid
OR pdp7.productid IS NULL)
AND (pdp8.PRODUCTID > pdp7.productid
OR pdp8.productid IS NULL)
AND (pdp9.PRODUCTID > pdp8.productid
OR pdp9.productid IS NULL)
AND (pdp10.PRODUCTID > pdp9.productid
OR pdp10.productid IS NULL)
order by 1,2,3,4,5,6,7,8,9,10