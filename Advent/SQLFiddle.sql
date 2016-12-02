USE AdventureWorks2012
GO


SELECT
	a.productid
	,b.productid
FROM productdeployplan a
CROSS APPLY (SELECT
		b.productid
	FROM productdeployplan b
	WHERE b.defaultposition > a.defaultposition) b