/****** Object:  StoredProcedure [dbo].[PRODUCT_GETALL]    Script Date: 9/13/2018 5:10:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PRODUCT_GETALL]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
-- Exec PRODUCT_GETALL
CREATE PROCEDURE [dbo].[PRODUCT_GETALL] @PRODUCT_INDEX INT
	-- Add the parameters for the stored procedure here
AS
    BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
        SET NOCOUNT ON;
        SELECT
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
        WHERE   STATUS = 0
        ORDER BY VIEW_COUNT DESC
                OFFSET @PRODUCT_INDEX ROWS
		FETCH NEXT 6 ROWS ONLY
    END
' 
END
GO
