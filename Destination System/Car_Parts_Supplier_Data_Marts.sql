USE [Car_Parts_Supplier_Data_Marts]
GO
/****** Object:  Table [dbo].[Car_Parts_Supplier_Data_Mart]    Script Date: 22-Nov-17 11:39:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Car_Parts_Supplier_Data_Mart](
	[car_id] [int] NULL,
	[part_id] [int] NULL,
	[part_manufacturer_code] [int] NULL,
	[part_level_code] [int] NULL,
	[supplier_id] [int] NULL,
	[part_type_code] [int] NULL,
	[surogate_key_manufacturer] [int] NULL,
	[manufacture_code] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cars]    Script Date: 22-Nov-17 11:39:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cars](
	[other_Car_Details] [varchar](50) NULL,
	[car_id] [int] NULL,
	[car_year_of_manufacture] [int] NULL,
	[model] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Parts]    Script Date: 22-Nov-17 11:39:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Parts](
	[part_name] [varchar](50) NULL,
	[other_details] [varchar](50) NULL,
	[condition] [varchar](50) NULL,
	[weight] [int] NULL,
	[mileage_donor_vehicle] [int] NULL,
	[part_id] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ref_Car_Manufacturers]    Script Date: 22-Nov-17 11:39:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ref_Car_Manufacturers](
	[manufacturer_FullName] [varchar](50) NULL,
	[manufacture_code] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ref_Part_Levels]    Script Date: 22-Nov-17 11:39:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ref_Part_Levels](
	[part_level_code] [int] NULL,
	[part_level_description] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ref_Part_Manufacturers]    Script Date: 22-Nov-17 11:39:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ref_Part_Manufacturers](
	[part_manufacturer_code] [int] NULL,
	[part_manufacturer_name] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ref_Part_Types]    Script Date: 22-Nov-17 11:39:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ref_Part_Types](
	[part_type_code] [int] NULL,
	[part_type_description] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 22-Nov-17 11:39:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Suppliers](
	[supplier_id] [int] NULL,
	[supplier_details] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ValueAble_Supplier]    Script Date: 22-Nov-17 11:39:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ValueAble_Supplier](
	[supplier_id] [int] NULL,
	[NoofpartsSupplied] [numeric](20, 0) NULL
) ON [PRIMARY]

GO
