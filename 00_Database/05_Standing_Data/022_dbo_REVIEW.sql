USE [KFashionShoe]
GO
SET IDENTITY_INSERT [dbo].[REVIEW] ON 

INSERT [dbo].[REVIEW] ([REVIEW_ID], [PRODUCT_ID], [CUSTOMER_ID], [REVIEW_CONTENT], [REVIEW_DATE], [REVIEW_PARENT], [REVIEW_RATING], [STATUS]) VALUES (1, 1, 2, N'When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrov', CAST(0x0000A97400000000 AS DateTime), 0, 3, 0)
SET IDENTITY_INSERT [dbo].[REVIEW] OFF
