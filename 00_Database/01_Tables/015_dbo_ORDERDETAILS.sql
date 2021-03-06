/****** Object:  Table [dbo].[ORDERDETAILS]    Script Date: 9/13/2018 4:53:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ORDERDETAILS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ORDERDETAILS](
	[ORDERDETAILS_ID] [int] IDENTITY(1,1) NOT NULL,
	[ORDERS_ID] [int] NULL,
	[PRODUCT_ID] [int] NULL,
	[QUANTITY] [int] NULL,
	[PRICE] [float] NULL,
	[DISCOUNT] [float] NULL,
	[SHIP_FEE] [float] NULL,
	[AMOUNT] [float] NULL,
 CONSTRAINT [PK_ORDERDETAILS_ID] PRIMARY KEY CLUSTERED 
(
	[ORDERDETAILS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ORDERS_ID]') AND parent_object_id = OBJECT_ID(N'[dbo].[ORDERDETAILS]'))
ALTER TABLE [dbo].[ORDERDETAILS]  WITH CHECK ADD  CONSTRAINT [FK_ORDERS_ID] FOREIGN KEY([ORDERS_ID])
REFERENCES [dbo].[ORDERS] ([ORDERS_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ORDERS_ID]') AND parent_object_id = OBJECT_ID(N'[dbo].[ORDERDETAILS]'))
ALTER TABLE [dbo].[ORDERDETAILS] CHECK CONSTRAINT [FK_ORDERS_ID]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PRODUCT_ID]') AND parent_object_id = OBJECT_ID(N'[dbo].[ORDERDETAILS]'))
ALTER TABLE [dbo].[ORDERDETAILS]  WITH CHECK ADD  CONSTRAINT [FK_PRODUCT_ID] FOREIGN KEY([PRODUCT_ID])
REFERENCES [dbo].[PRODUCTS] ([PRODUCT_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PRODUCT_ID]') AND parent_object_id = OBJECT_ID(N'[dbo].[ORDERDETAILS]'))
ALTER TABLE [dbo].[ORDERDETAILS] CHECK CONSTRAINT [FK_PRODUCT_ID]
GO
