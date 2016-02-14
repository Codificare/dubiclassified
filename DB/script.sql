/****** Object:  StoredProcedure [dbo].[User_GetSubCategories]    Script Date: 2/15/2016 3:29:27 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_GetSubCategories]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[User_GetSubCategories]
GO
/****** Object:  StoredProcedure [dbo].[User_GetSingleAdDetails]    Script Date: 2/15/2016 3:29:27 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_GetSingleAdDetails]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[User_GetSingleAdDetails]
GO
/****** Object:  StoredProcedure [dbo].[User_GetMainPageData]    Script Date: 2/15/2016 3:29:27 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_GetMainPageData]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[User_GetMainPageData]
GO
/****** Object:  StoredProcedure [dbo].[User_GetLocations]    Script Date: 2/15/2016 3:29:27 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_GetLocations]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[User_GetLocations]
GO
/****** Object:  StoredProcedure [dbo].[User_GetConditions]    Script Date: 2/15/2016 3:29:27 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_GetConditions]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[User_GetConditions]
GO
/****** Object:  StoredProcedure [dbo].[User_GetCategories]    Script Date: 2/15/2016 3:29:27 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_GetCategories]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[User_GetCategories]
GO
/****** Object:  StoredProcedure [dbo].[User_GetAdsList]    Script Date: 2/15/2016 3:29:27 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_GetAdsList]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[User_GetAdsList]
GO
/****** Object:  StoredProcedure [dbo].[Admin_VerifyUser]    Script Date: 2/15/2016 3:29:27 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Admin_VerifyUser]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Admin_VerifyUser]
GO
/****** Object:  StoredProcedure [dbo].[Admin_GetSubCategories]    Script Date: 2/15/2016 3:29:27 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Admin_GetSubCategories]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Admin_GetSubCategories]
GO
/****** Object:  StoredProcedure [dbo].[Admin_GetLocations]    Script Date: 2/15/2016 3:29:27 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Admin_GetLocations]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Admin_GetLocations]
GO
/****** Object:  StoredProcedure [dbo].[Admin_GetCategories]    Script Date: 2/15/2016 3:29:27 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Admin_GetCategories]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Admin_GetCategories]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ads_ads]') AND parent_object_id = OBJECT_ID(N'[dbo].[ads]'))
ALTER TABLE [dbo].[ads] DROP CONSTRAINT [FK_ads_ads]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_users_ads_limit]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF_users_ads_limit]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_users_active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF_users_active]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_users_blocked]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF_users_blocked]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_users_deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF_users_deleted]
END

GO
/****** Object:  Table [dbo].[web_config]    Script Date: 2/15/2016 3:29:27 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[web_config]') AND type in (N'U'))
DROP TABLE [dbo].[web_config]
GO
/****** Object:  Table [dbo].[users]    Script Date: 2/15/2016 3:29:27 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[users]') AND type in (N'U'))
DROP TABLE [dbo].[users]
GO
/****** Object:  Table [dbo].[locations]    Script Date: 2/15/2016 3:29:27 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[locations]') AND type in (N'U'))
DROP TABLE [dbo].[locations]
GO
/****** Object:  Table [dbo].[condition]    Script Date: 2/15/2016 3:29:27 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[condition]') AND type in (N'U'))
DROP TABLE [dbo].[condition]
GO
/****** Object:  Table [dbo].[categories]    Script Date: 2/15/2016 3:29:27 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[categories]') AND type in (N'U'))
DROP TABLE [dbo].[categories]
GO
/****** Object:  Table [dbo].[ads_img]    Script Date: 2/15/2016 3:29:27 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ads_img]') AND type in (N'U'))
DROP TABLE [dbo].[ads_img]
GO
/****** Object:  Table [dbo].[ads]    Script Date: 2/15/2016 3:29:27 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ads]') AND type in (N'U'))
DROP TABLE [dbo].[ads]
GO
/****** Object:  Table [dbo].[admins]    Script Date: 2/15/2016 3:29:27 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[admins]') AND type in (N'U'))
DROP TABLE [dbo].[admins]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_GetRelativeDuration]    Script Date: 2/15/2016 3:29:27 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fn_GetRelativeDuration]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[fn_GetRelativeDuration]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_GetRelativeDuration]    Script Date: 2/15/2016 3:29:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fn_GetRelativeDuration]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [dbo].[fn_GetRelativeDuration] 
(
	@date datetime
)
RETURNS VARCHAR(30)
AS
BEGIN

DECLARE @d1 datetime= getdate();
DECLARE @d2 datetime= @date;
DECLARE @diff FLOAT= DATEDIFF(DAY, @d2, @d1);

DECLARE @duration VARCHAR(30);

IF(@d2 < @d1)
BEGIN
SELECT @duration = 
CAST((CASE  
WHEN @diff = 0 
THEN ''Today'' 
ELSE
	(CASE  
	WHEN (@diff = 1)
	THEN ''Yesterday''
	ELSE
		(CASE  
		WHEN (@diff > 1 AND @diff < 7)
		THEN CONVERT(VARCHAR, @diff)+ '' Day(s) Ago''
		ELSE
			(CASE  
			WHEN (@diff >= 7 AND @diff < 30)
			THEN CONVERT(VARCHAR,CAST(@diff/7 AS NUMERIC(3))) + '' Week(s) Ago''
			ELSE
				(CASE  
					WHEN (@diff >= 30 AND @diff < 365)
					THEN  CONVERT(VARCHAR,CAST(@diff/30 AS NUMERIC(3))) +'' Month(s) Ago''
					ELSE
						(CASE  
						WHEN (@diff >= 365)
						THEN  CONVERT(VARCHAR,CAST(@diff/365.25 AS NUMERIC(3))) +'' Year(s) Ago'' 
						ELSE
						''''	
						END)	
				END)
			END)	
		END)
	END) 
END) AS VARCHAR)

END
ELSE
BEGIN
	SET @duration = ''N/A''
END

	-- Return the result of the function
	RETURN @duration

END
' 
END

GO
/****** Object:  Table [dbo].[admins]    Script Date: 2/15/2016 3:29:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[admins]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[admins](
	[admin_id] [int] IDENTITY(100,1) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[password_change_date] [datetime] NULL,
	[first_name] [varchar](50) NULL,
	[last_name] [varchar](50) NULL,
	[email] [varchar](100) NOT NULL,
	[created_date] [datetime] NULL,
	[deleted] [bit] NULL,
 CONSTRAINT [PK__admins__43AA414158CD8B04] PRIMARY KEY CLUSTERED 
(
	[admin_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ads]    Script Date: 2/15/2016 3:29:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ads]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ads](
	[ad_id] [int] IDENTITY(1000,1) NOT NULL,
	[title] [varchar](50) NOT NULL,
	[description] [varchar](1000) NOT NULL,
	[price] [int] NOT NULL,
	[price_fixed] [bit] NULL,
	[category_id] [int] NOT NULL,
	[subcat_id] [int] NOT NULL,
	[location_id] [int] NOT NULL,
	[condition_id] [int] NULL,
	[posted_by] [varchar](20) NULL,
	[posted_date] [datetime] NULL,
	[expire_date] [datetime] NULL,
	[contact_no] [int] NULL,
	[views] [smallint] NULL,
	[deleted] [bit] NULL,
	[blocked] [bit] NULL,
 CONSTRAINT [PK_ads] PRIMARY KEY CLUSTERED 
(
	[ad_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ads_img]    Script Date: 2/15/2016 3:29:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ads_img]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ads_img](
	[ad_img_id] [int] NOT NULL,
	[ad_id] [int] NOT NULL,
	[url] [varchar](max) NULL,
	[deleted] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[categories]    Script Date: 2/15/2016 3:29:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[categories]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[categories](
	[category_id] [int] IDENTITY(100,1) NOT NULL,
	[category_name] [varchar](20) NOT NULL,
	[category_photo] [varchar](100) NULL,
	[created_by] [varchar](20) NULL,
	[created_date] [datetime] NULL,
	[modified_by] [varchar](20) NULL,
	[modified_date] [datetime] NULL,
	[deleted] [bit] NULL CONSTRAINT [DF_categories_deleted]  DEFAULT ((0)),
	[parent_id] [int] NULL,
 CONSTRAINT [PK_categories] PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[condition]    Script Date: 2/15/2016 3:29:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[condition]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[condition](
	[condition_id] [int] IDENTITY(10,1) NOT NULL,
	[title] [varchar](20) NOT NULL,
 CONSTRAINT [PK_condition] PRIMARY KEY CLUSTERED 
(
	[condition_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[locations]    Script Date: 2/15/2016 3:29:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[locations]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[locations](
	[location_id] [int] IDENTITY(1000,1) NOT NULL,
	[location_name] [varchar](20) NOT NULL,
	[location_photo] [varchar](100) NULL,
	[created_by] [varchar](20) NULL,
	[created_date] [datetime] NULL,
	[modified_by] [varchar](20) NULL,
	[modified_date] [datetime] NULL,
	[deleted] [bit] NULL CONSTRAINT [DF_locations_deleted]  DEFAULT ((0)),
 CONSTRAINT [PK_locations] PRIMARY KEY CLUSTERED 
(
	[location_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[users]    Script Date: 2/15/2016 3:29:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[users]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[users](
	[user_id] [int] NOT NULL,
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[password_change_date] [datetime] NULL,
	[first_name] [varchar](50) NOT NULL,
	[last_name] [varchar](50) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[contact_no] [varchar](20) NULL,
	[last_active_date] [datetime] NULL,
	[created_date] [datetime] NULL,
	[deleted] [bit] NULL,
	[blocked] [bit] NULL,
	[active] [bit] NULL,
	[activation_code] [varchar](500) NULL,
	[ads_limit] [int] NULL,
	[comments] [varchar](500) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[web_config]    Script Date: 2/15/2016 3:29:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[web_config]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[web_config](
	[config_id] [int] IDENTITY(10,1) NOT NULL,
	[config_name] [varchar](50) NOT NULL,
	[config_val] [varchar](200) NOT NULL,
 CONSTRAINT [PK_site_config] PRIMARY KEY CLUSTERED 
(
	[config_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_users_deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF_users_deleted]  DEFAULT ((0)) FOR [deleted]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_users_blocked]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF_users_blocked]  DEFAULT ((0)) FOR [blocked]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_users_active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF_users_active]  DEFAULT ((1)) FOR [active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_users_ads_limit]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF_users_ads_limit]  DEFAULT ((10)) FOR [ads_limit]
END

GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ads_ads]') AND parent_object_id = OBJECT_ID(N'[dbo].[ads]'))
ALTER TABLE [dbo].[ads]  WITH CHECK ADD  CONSTRAINT [FK_ads_ads] FOREIGN KEY([ad_id])
REFERENCES [dbo].[ads] ([ad_id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ads_ads]') AND parent_object_id = OBJECT_ID(N'[dbo].[ads]'))
ALTER TABLE [dbo].[ads] CHECK CONSTRAINT [FK_ads_ads]
GO
/****** Object:  StoredProcedure [dbo].[Admin_GetCategories]    Script Date: 2/15/2016 3:29:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Admin_GetCategories]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Admin_GetCategories] AS' 
END
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[Admin_GetCategories]

AS
BEGIN

SELECT
	ROW_NUMBER() OVER (ORDER BY category_id) AS SR,
	category_id AS CATEGORY_ID,
	category_name AS CATEGORY_NAME,
	category_photo AS PHOTO,
	created_by AS CREATED_BY,
	CONVERT(VARCHAR, created_date, 101) AS CREATED_DATE,
	modified_by AS MODIFIED_BY,
	CONVERT(VARCHAR, modified_date, 101) AS MODIFIED_DATE
FROM categories
WHERE ISNULL(parent_id, '') = ''
AND ISNULL(deleted, 0) = 0

END


GO
/****** Object:  StoredProcedure [dbo].[Admin_GetLocations]    Script Date: 2/15/2016 3:29:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Admin_GetLocations]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Admin_GetLocations] AS' 
END
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[Admin_GetLocations] 

AS
BEGIN
SELECT
	ROW_NUMBER() OVER (ORDER BY location_name) AS SR,
	location_id AS ID,
	location_name AS NAME,
	location_photo AS PHOTO_URL,
	created_by AS CREATED_BY,
	CONVERT(VARCHAR, created_date, 101) AS CREATED_DATE,
	modified_by AS MODIFIED_BY,
	CONVERT(VARCHAR, modified_date, 101) AS MODIFIED_DATE
FROM locations
WHERE ISNULL(deleted, 0) = 0
END

GO
/****** Object:  StoredProcedure [dbo].[Admin_GetSubCategories]    Script Date: 2/15/2016 3:29:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Admin_GetSubCategories]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Admin_GetSubCategories] AS' 
END
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[Admin_GetSubCategories] 
AS
BEGIN

SELECT
	ROW_NUMBER() OVER (ORDER BY c1.category_id) AS SR,
	c2.category_id AS CATEGORY_ID,
	c1.category_id AS SUB_CATEGORY_ID,
	c2.category_name AS CATEGORY_NAME,
	c1.category_name AS SUB_CATEGORY_NAME,
	c1.category_photo AS PHOTO,
	c1.created_by AS CREATED_BY,
	CONVERT(VARCHAR, c1.created_date, 101) AS CREATED_DATE,
	c1.modified_by AS MODIFIED_BY,
	CONVERT(VARCHAR, c1.modified_date, 101) AS MODIFIED_DATE
FROM categories c1
JOIN categories c2
	ON c2.category_id = c1.parent_id
	AND ISNULL(c2.deleted, 0) = 0
WHERE ISNULL(c1.parent_id, '') <> ''
AND ISNULL(c1.deleted, 0) = 0

END

GO
/****** Object:  StoredProcedure [dbo].[Admin_VerifyUser]    Script Date: 2/15/2016 3:29:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Admin_VerifyUser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Admin_VerifyUser] AS' 
END
GO
ALTER PROCEDURE [dbo].[Admin_VerifyUser]
	@USERNAME VARCHAR(50),
	@PASSWORD VARCHAR(50),
	@RETURN_CODE INT OUTPUT
AS
BEGIN
	DECLARE @IS_EXIST INT = 0;
	SELECT @IS_EXIST = COUNT(*) FROM dbo.admins where username=@USERNAME AND password=@PASSWORD and ISNULL(deleted,0)=0
	IF @IS_EXIST > 0
	BEGIN
		SET @RETURN_CODE = 100
	END
	ELSE
	BEGIN
		SET @RETURN_CODE = 404
	END
END

GO
/****** Object:  StoredProcedure [dbo].[User_GetAdsList]    Script Date: 2/15/2016 3:29:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_GetAdsList]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[User_GetAdsList] AS' 
END
GO
-- =============================================  
-- Author:  <Author,,Name>  
-- Create date: <Create Date,,>  
-- Description: <Description,,>  
-- =============================================  
ALTER PROCEDURE [dbo].[User_GetAdsList]  
  
AS  
BEGIN
SELECT
	ad.ad_id AS ID,
	ad.title AS TITLE,
	ad.price AS PRICE,
	con.title AS CONDITION,
	(SELECT
			categories.category_name
		FROM categories
		WHERE categories.category_id = ad.category_id)
	+ ' > ' + (SELECT
			categories.category_name
		FROM categories
		WHERE categories.category_id = ad.subcat_id)
	AS CATEGORY,
	loc.location_name AS LOCATION,
	REPLACE(CONVERT(VARCHAR(30), ad.posted_date, 106), ' ', '-') + ' [' + dbo.fn_GetRelativeDuration(ad.posted_date) + ']' AS POSTED_DATE,
	ad.[views] AS VISITOR
FROM ads ad
JOIN locations loc
	ON loc.location_id = ad.location_id
RIGHT JOIN condition con
	ON con.condition_id = ad.condition_id
JOIN categories cat
	ON cat.parent_id = ad.category_id
	AND cat.category_id = ad.subcat_id
	AND ISNULL(cat.deleted, '0') = '0'
WHERE ISNULL(ad.deleted, '0') = '0'
AND ISNULL(ad.blocked, '0') = '0'
ORDER BY ad.posted_date DESC
END
GO
/****** Object:  StoredProcedure [dbo].[User_GetCategories]    Script Date: 2/15/2016 3:29:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_GetCategories]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[User_GetCategories] AS' 
END
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[User_GetCategories] 

AS
BEGIN
SELECT
	category_id AS [ID],
	category_name AS [NAME]
FROM categories
WHERE ISNULL(deleted, 0) = 0
AND ISNULL(parent_id, 0) = 0
END

GO
/****** Object:  StoredProcedure [dbo].[User_GetConditions]    Script Date: 2/15/2016 3:29:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_GetConditions]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[User_GetConditions] AS' 
END
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[User_GetConditions] 

AS
BEGIN
SELECT
	condition_id AS [ID],
	title AS [NAME]
FROM condition
END

GO
/****** Object:  StoredProcedure [dbo].[User_GetLocations]    Script Date: 2/15/2016 3:29:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_GetLocations]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[User_GetLocations] AS' 
END
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[User_GetLocations] 
	
AS
BEGIN
SELECT
	location_id AS ID,
	location_name AS [NAME]
FROM locations
WHERE ISNULL(deleted, 0) = 0
END

GO
/****** Object:  StoredProcedure [dbo].[User_GetMainPageData]    Script Date: 2/15/2016 3:29:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_GetMainPageData]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[User_GetMainPageData] AS' 
END
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[User_GetMainPageData] 
	
AS
BEGIN

--For Categories
SELECT
	c.category_id AS CATEGORY_ID,
	c.category_name AS CATEGORY_NAME,
	(SELECT
			COUNT(*)
		FROM ads a
		JOIN categories c
			ON a.category_id = c.category_id
		WHERE ISNULL(a.deleted, 0) = 0
		AND ISNULL(a.blocked, 0) = 0)
	AS [C_COUNT]
FROM categories c
WHERE ISNULL(c.parent_id, '') = ''
AND ISNULL(c.deleted, 0) = 0
ORDER BY 2

--For Subcategories
SELECT
	sc.parent_id AS CATEGORY_ID,
	sc.category_id AS SUB_CATEGORY_ID,
	sc.category_name AS SUB_CATEGORY_NAME,
	(SELECT
			COUNT(*)
		FROM ads a
		JOIN categories sc
			ON a.subcat_id = sc.category_id
		WHERE ISNULL(a.deleted, 0) = 0
		AND ISNULL(a.blocked, 0) = 0)
	AS [SC_COUNT]
FROM categories sc
WHERE ISNULL(sc.parent_id, '') <> ''
AND ISNULL(sc.deleted, 0) = 0
ORDER BY 3

END


GO
/****** Object:  StoredProcedure [dbo].[User_GetSingleAdDetails]    Script Date: 2/15/2016 3:29:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_GetSingleAdDetails]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[User_GetSingleAdDetails] AS' 
END
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[User_GetSingleAdDetails] 

AS
BEGIN
SELECT
	ad.ad_id AS [ID],
	ad.title AS [TITLE],
	ad.description AS [DESC],
	'AED ' + CONVERT(VARCHAR, ad.price) AS [PRICE],
	con.title AS [CONDITION],
	ad.contact_no AS [CONTACT],
	loc.location_name
	+ ' > ' + (SELECT
			categories.category_name
		FROM categories
		WHERE categories.category_id = ad.category_id)
	+ ' > ' + (SELECT
			categories.category_name
		FROM categories
		WHERE categories.category_id = ad.subcat_id)
	AS [LOC],
	REPLACE(CONVERT(VARCHAR(30), ad.posted_date, 106), ' ', '-') + ' [' + dbo.fn_GetRelativeDuration(ad.posted_date) + ']' AS POSTED_DATE,
	ad.posted_by AS [POSTED_BY],
	ad.[views] AS [VISITOR]
FROM ads ad
JOIN locations loc
	ON loc.location_id = ad.location_id
RIGHT JOIN condition con
	ON con.condition_id = ad.condition_id
JOIN categories cat
	ON cat.parent_id = ad.category_id
	AND cat.category_id = ad.subcat_id
	AND ISNULL(cat.deleted, '0') = '0'
WHERE ISNULL(ad.deleted, '0') = '0'
AND ISNULL(ad.blocked, '0') = '0'
END

GO
/****** Object:  StoredProcedure [dbo].[User_GetSubCategories]    Script Date: 2/15/2016 3:29:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_GetSubCategories]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[User_GetSubCategories] AS' 
END
GO
ALTER PROCEDURE [dbo].[User_GetSubCategories]
  @CATEGORY_ID VARCHAR(20)  
AS    
BEGIN  
SELECT  
 category_id AS [ID],  
 category_name AS [NAME]  
FROM categories  
WHERE ISNULL(deleted, 0) = 0  
--AND ISNULL(parent_id, 0) <> 0  
AND parent_id = @CATEGORY_ID
END
GO
