CREATE TABLE [Sales].[MyOrders] (
    [orderid]        INT           IDENTITY (1, 1) NOT NULL,
    [custid]         INT           NULL,
    [empid]          INT           NOT NULL,
    [orderdate]      DATETIME      NOT NULL,
    [requireddate]   DATETIME      NOT NULL,
    [shippeddate]    DATETIME      NULL,
    [shipperid]      INT           NOT NULL,
    [freight]        MONEY         NOT NULL,
    [shipname]       NVARCHAR (40) NOT NULL,
    [shipaddress]    NVARCHAR (60) NOT NULL,
    [shipcity]       NVARCHAR (15) NOT NULL,
    [shipregion]     NVARCHAR (15) NULL,
    [shippostalcode] NVARCHAR (10) NULL,
    [shipcountry]    NVARCHAR (15) NOT NULL,
    CONSTRAINT [PK_MyOrders] PRIMARY KEY CLUSTERED ([orderid] ASC)
);

