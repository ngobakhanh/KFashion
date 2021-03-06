/****** Object:  Table [dbo].[PARAMETER]    Script Date: 9/13/2018 4:53:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PARAMETER]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PARAMETER](
	[PARAMETER_ID] [varchar](50) NULL,
	[VALUE] [nvarchar](255) NULL,
	[PARAMETER_NAME] [nvarchar](50) NULL,
	[DESCRIPTION] [nvarchar](255) NULL,
	[STATUS] [int] NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
