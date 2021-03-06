/****** Object:  Table [dbo].[REVIEW]    Script Date: 9/13/2018 4:53:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[REVIEW]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[REVIEW](
	[REVIEW_ID] [int] IDENTITY(1,1) NOT NULL,
	[PRODUCT_ID] [int] NULL,
	[CUSTOMER_ID] [int] NULL,
	[REVIEW_CONTENT] [nvarchar](max) NULL,
	[REVIEW_DATE] [datetime] NULL,
	[REVIEW_PARENT] [int] NULL,
	[REVIEW_RATING] [int] NULL,
	[STATUS] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
