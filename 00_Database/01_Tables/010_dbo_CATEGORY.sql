/****** Object:  Table [dbo].[CATEGORY]    Script Date: 9/13/2018 4:53:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CATEGORY]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CATEGORY](
	[CATEGORY_ID] [int] IDENTITY(1,1) NOT NULL,
	[NAME] [nvarchar](255) NULL,
	[IMAGE] [varchar](max) NULL,
	[PRARENT_ID] [int] NULL,
	[CATEGORY_URL] [varchar](max) NULL,
	[ORD] [int] NULL,
	[DESCRIPTION] [nvarchar](255) NULL,
	[STATUS] [int] NULL,
	[CREATE_DATE] [datetime] NULL,
	[LAST_MODIFICATION_DATE] [datetime] NULL,
 CONSTRAINT [PK_CATEGORY_ID] PRIMARY KEY CLUSTERED 
(
	[CATEGORY_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__CATEGORY__CREATE__7E37BEF6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CATEGORY] ADD  CONSTRAINT [DF__CATEGORY__CREATE__7E37BEF6]  DEFAULT (getdate()) FOR [CREATE_DATE]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__CATEGORY__LAST_M__7F2BE32F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CATEGORY] ADD  CONSTRAINT [DF__CATEGORY__LAST_M__7F2BE32F]  DEFAULT (getdate()) FOR [LAST_MODIFICATION_DATE]
END

GO
