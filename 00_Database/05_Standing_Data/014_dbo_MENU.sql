USE [KFashionShoe]
GO
SET IDENTITY_INSERT [dbo].[MENU] ON 

INSERT [dbo].[MENU] ([MENU_ID], [NAME], [MENU_URL], [ISSHOW], [ORD], [CREATE_DATE], [LAST_MODIFICATION_DATE]) VALUES (1, N'Trang chủ', N'/Home/Index', N'Y', 1, CAST(0x0000A94200F69551 AS DateTime), CAST(0x0000A94200F69551 AS DateTime))
INSERT [dbo].[MENU] ([MENU_ID], [NAME], [MENU_URL], [ISSHOW], [ORD], [CREATE_DATE], [LAST_MODIFICATION_DATE]) VALUES (2, N'Sản phẩm', N'/Home/Product', N'Y', 2, CAST(0x0000A94201044602 AS DateTime), CAST(0x0000A94201044602 AS DateTime))
INSERT [dbo].[MENU] ([MENU_ID], [NAME], [MENU_URL], [ISSHOW], [ORD], [CREATE_DATE], [LAST_MODIFICATION_DATE]) VALUES (3, N'About', N'/Home/About', N'N', 3, CAST(0x0000A94201048C13 AS DateTime), CAST(0x0000A94201048C13 AS DateTime))
INSERT [dbo].[MENU] ([MENU_ID], [NAME], [MENU_URL], [ISSHOW], [ORD], [CREATE_DATE], [LAST_MODIFICATION_DATE]) VALUES (4, N'Liên hệ', N'/Home/Contact', N'Y', 4, CAST(0x0000A9420104A435 AS DateTime), CAST(0x0000A9420104A435 AS DateTime))
INSERT [dbo].[MENU] ([MENU_ID], [NAME], [MENU_URL], [ISSHOW], [ORD], [CREATE_DATE], [LAST_MODIFICATION_DATE]) VALUES (5, N'Giỏ hàng ', N'/Cart/Index', N'Y', 5, CAST(0x0000A9420104D100 AS DateTime), CAST(0x0000A9420104D100 AS DateTime))
SET IDENTITY_INSERT [dbo].[MENU] OFF
