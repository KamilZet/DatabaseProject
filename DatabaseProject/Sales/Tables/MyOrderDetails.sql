CREATE TABLE [Sales].[MyOrderDetails] (
    [orderid]   INT            NOT NULL,
    [productid] INT            NOT NULL,
    [unitprice] MONEY          NOT NULL,
    [qty]       SMALLINT       NOT NULL,
    [discount]  NUMERIC (4, 3) NOT NULL,
    CONSTRAINT [PK_MyOrderDetails] PRIMARY KEY CLUSTERED ([orderid] ASC, [productid] ASC)
);

