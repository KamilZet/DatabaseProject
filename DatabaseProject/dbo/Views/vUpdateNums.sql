create view dbo.vUpdateNums
as
SELECT
	*
FROM Nums
WHERE n % 2 = 0