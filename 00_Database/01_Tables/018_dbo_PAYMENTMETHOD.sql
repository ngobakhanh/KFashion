/****** Object:  Table [dbo].[PAYMENTMETHOD]    Script Date: 9/13/2018 4:53:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PAYMENTMETHOD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PAYMENTMETHOD](
	[PAYMENT_ID] [int] IDENTITY(1,1) NOT NULL,
	[NAME] [nvarchar](100) NOT NULL,
	[CREATE_DATE] [datetime] NULL,
	[LAST_MODIFICATION_DATE] [datetime] NULL,
	[STATUS] [int] NULL,
 CONSTRAINT [PK_PAYMENT_METHOD_ID] PRIMARY KEY CLUSTERED 
(
	[PAYMENT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__PAYMENTME__CREAT__02084FDA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PAYMENTMETHOD] ADD  DEFAULT (getdate()) FOR [CREATE_DATE]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__PAYMENTME__LAST___02FC7413]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PAYMENTMETHOD] ADD  DEFAULT (getdate()) FOR [LAST_MODIFICATION_DATE]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__PAYMENTME__STATU__03F0984C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PAYMENTMETHOD] ADD  DEFAULT ((0)) FOR [STATUS]
END

GO
