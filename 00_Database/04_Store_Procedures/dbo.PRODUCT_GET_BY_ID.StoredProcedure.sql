/****** Object:  StoredProcedure [dbo].[PRODUCT_GET_BY_ID]    Script Date: 9/13/2018 5:10:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PRODUCT_GET_BY_ID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
-- EXEC PRODUCT_GET_BY_ID @PRODUCT_ID = 1
CREATE PROCEDURE [dbo].[PRODUCT_GET_BY_ID] @PRODUCT_ID INT
AS
    BEGIN
        DECLARE @CATEGORY_ID INT;
	-- SET NOCOUNT ON added to prevent extra result sets from
        SET NOCOUNT ON;
	-- Khai bao bien
        SELECT  @CATEGORY_ID = CATEGORY_ID
        FROM    dbo.PRODUCTS
        WHERE   PRODUCT_ID = @PRODUCT_ID
	-- Lay thong tin san pham
        SELECT  PRODUCT_ID ,
                NAME ,
                DESCRIPTION ,
                PRICE AS OLD_PRICE ,
                ( PRICE - PRICE * DISCOUNT / 100 ) AS PRICE ,
                DISCOUNT ,
                ( ( SELECT  VALUE
                    FROM    PARAMETER
                    WHERE   PARAMETER_ID = ''FOLDER_IMAGE''
                  ) + IMAGE ) AS IMAGE ,
                CATEGORY_ID ,
                OUTOFSTOCK ,
                VIEW_COUNT ,
                CREATE_DATE
        FROM    dbo.PRODUCTS
        WHERE   PRODUCT_ID = @PRODUCT_ID
                AND STATUS = 0
		-- Lay size theo product
        SELECT  SIZE_ID ,
                SIZE
        FROM    dbo.PRODUCTSIZE
        WHERE   PRODUCT_ID = @PRODUCT_ID
                AND STATUS = 0
		-- Lay image theo product
        SELECT  ID ,
                ( SELECT    VALUE
                  FROM      PARAMETER
                  WHERE     PARAMETER_ID = ''FOLDER_IMAGE''
                ) + IMAGE AS IMAGE
        FROM    dbo.PRODUCTIMAGE
        WHERE   PRODUCT_ID = @PRODUCT_ID
                AND STATUS = 0
		-- Lay san pham lien quan
        SELECT TOP 4
                PRODUCT_ID ,
                NAME ,
                DESCRIPTION ,
                PRICE AS OLD_PRICE ,
                ( PRICE - PRICE * DISCOUNT / 100 ) AS PRICE ,
                DISCOUNT ,
                ( ( SELECT  VALUE
                    FROM    PARAMETER
                    WHERE   PARAMETER_ID = ''FOLDER_IMAGE''
                  ) + IMAGE ) AS IMAGE ,
                CATEGORY_ID ,
                OUTOFSTOCK ,
                VIEW_COUNT ,
                CREATE_DATE
        FROM    dbo.PRODUCTS
        WHERE   CATEGORY_ID = @CATEGORY_ID
                AND PRODUCT_ID <> @PRODUCT_ID
                AND STATUS = 0
        ORDER BY VIEW_COUNT DESC
		-- Review san pham
        SELECT  CUS.LAST_NAME + '' '' + CUS.FIRST_NAME CUSTOMER_NAME,
		REVIEW_ID,
		 REVIEW_CONTENT ,
                REVIEW_DATE ,
                REVIEW_PARENT ,
                REVIEW_RATING 
        FROM    dbo.REVIEW RV
                JOIN dbo.CUSTOMER CUS ON CUS.CUSTOMER_ID = RV.CUSTOMER_ID
        WHERE   PRODUCT_ID = @PRODUCT_ID
                AND RV.STATUS = 0
			   
    END
' 
END
GO
