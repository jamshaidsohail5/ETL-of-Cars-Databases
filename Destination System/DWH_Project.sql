USE [DWH_Project]
GO
/****** Object:  Table [dbo].[Car_Feactures]    Script Date: 22-Nov-17 11:41:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Car_Feactures](
	[car_Feature_ID] [int] NULL,
	[car_Feature_Description] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Car_Manufacturer]    Script Date: 22-Nov-17 11:41:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Car_Manufacturer](
	[manufacturer_ShortName] [varchar](50) NULL,
	[manufacturer_FullName] [varchar](50) NULL,
	[manufacturer_OtherDetails] [varchar](50) NULL,
	[manufacture_code] [int] NULL,
	[surogate_key_manufacturer] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Car_Model]    Script Date: 22-Nov-17 11:41:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Car_Model](
	[model_Code_sale] [int] NULL,
	[manufacturer_code] [int] NULL,
	[model_Name] [varchar](50) NULL,
	[model_code_service] [int] NULL,
	[other_details] [varchar](50) NULL,
	[Model_Sarogate_key] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Car_Sold]    Script Date: 22-Nov-17 11:41:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Car_Sold](
	[agreed_Price] [int] NULL,
	[date_Sold] [datetime] NULL,
	[other_Details] [varchar](50) NULL,
	[car_Sold_ID] [int] NULL,
	[surogate_key_customer] [int] NULL,
	[surogate_key_car] [int] NULL,
	[Day] [int] NULL,
	[Month] [int] NULL,
	[Year] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cars]    Script Date: 22-Nov-17 11:41:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cars](
	[car_for_Sale_ID] [int] NULL,
	[asking_Price] [int] NULL,
	[current_Mileage] [int] NULL,
	[date_Acquired] [datetime] NULL,
	[registration_Year] [int] NULL,
	[other_Car_Details] [varchar](50) NULL,
	[vehicle_Category_Code] [int] NULL,
	[Model_Sarogate_key] [int] NULL,
	[surogate_key_manufacturer] [int] NULL,
	[car_id] [int] NULL,
	[car_year_of_manufacture] [int] NULL,
	[model] [int] NULL,
	[licence_number] [int] NULL,
	[customer_id] [int] NULL,
	[engine_size] [int] NULL,
	[surogate_key_car] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[customer]    Script Date: 22-Nov-17 11:41:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[customer](
	[customer_ID] [int] NULL,
	[email_Address] [varchar](50) NULL,
	[other_Customer_Details] [varchar](50) NULL,
	[cell_Mobile_Phone] [varchar](50) NULL,
	[address_ID] [int] NULL,
	[address_Line_1] [varchar](50) NULL,
	[address_Line_2] [varchar](50) NULL,
	[address_Line_3] [varchar](50) NULL,
	[address_Line_4] [varchar](50) NULL,
	[town_city] [varchar](50) NULL,
	[state_Country_Province] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[post_Zip_Code] [int] NULL,
	[other_Address_Details] [varchar](50) NULL,
	[contact_id] [int] NULL,
	[gender] [varchar](50) NULL,
	[Full_Name] [nvarchar](150) NULL,
	[surogate_key_customer] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[customer_Preferences]    Script Date: 22-Nov-17 11:41:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[customer_Preferences](
	[customer_Preference_ID] [int] NULL,
	[customer_Preference_Details] [varchar](50) NULL,
	[car_Feature_ID] [int] NULL,
	[surogate_key_customer] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Defects]    Script Date: 22-Nov-17 11:41:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Defects](
	[defect_id] [int] NULL,
	[defect_description] [varchar](50) NULL,
	[date_defect_recorded] [datetime] NULL,
	[other_details] [varchar](50) NULL,
	[surogate_key_car] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[feactures_on_car_for_sale]    Script Date: 22-Nov-17 11:41:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[feactures_on_car_for_sale](
	[surogate_key_car] [int] NULL,
	[car_Feature_ID] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Machanicssss]    Script Date: 22-Nov-17 11:41:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Machanicssss](
	[mechanic_id] [int] NULL,
	[mechanic_name] [varchar](50) NULL,
	[mechanic_details] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[manufeturer]    Script Date: 22-Nov-17 11:41:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[manufeturer](
	[manufacture_code] [int] NULL,
	[manufacture_name] [varchar](50) NULL,
	[manufacture_details] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mechanics_on_serviec]    Script Date: 22-Nov-17 11:41:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mechanics_on_serviec](
	[svc_booking_id] [int] NULL,
	[mechanic_id] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[part]    Script Date: 22-Nov-17 11:41:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[part](
	[part_id_service] [int] NULL,
	[part_name] [varchar](50) NULL,
	[part_description] [varchar](50) NULL,
	[number_in_stock] [int] NULL,
	[other_details] [varchar](50) NULL,
	[condition] [varchar](50) NULL,
	[parent_part_id] [int] NULL,
	[part_level_code] [int] NULL,
	[part_manufacturer_code] [int] NULL,
	[part_type_code] [int] NULL,
	[supplier_id] [int] NULL,
	[weight] [int] NULL,
	[mileage_donor_vehicle] [int] NULL,
	[surogate_key_car] [int] NULL,
	[part_id_parts] [int] NULL,
	[surogate_key_part] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[part_order_list]    Script Date: 22-Nov-17 11:41:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[part_order_list](
	[booking_id] [int] NULL,
	[part_id] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[part_type_level]    Script Date: 22-Nov-17 11:41:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[part_type_level](
	[part_level_code] [int] NULL,
	[part_level_description] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ref_part_maufacturer]    Script Date: 22-Nov-17 11:41:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ref_part_maufacturer](
	[part_manufacturer_code] [int] NULL,
	[part_manufacturer_name] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ref_part_type]    Script Date: 22-Nov-17 11:41:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ref_part_type](
	[part_type_code] [int] NULL,
	[part_type_description] [varchar](50) NULL,
	[vehicle_Category_Code] [int] NULL,
	[vehicle_Category_Description] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Service_booking]    Script Date: 22-Nov-17 11:41:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Service_booking](
	[date_of_booking] [datetime] NULL,
	[booking_details] [varchar](50) NULL,
	[booking_id] [int] NULL,
	[surogate_key_car] [int] NULL,
	[surogate_key_customer] [int] NULL,
	[Day] [int] NULL,
	[Month] [int] NULL,
	[Year] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[suppliers]    Script Date: 22-Nov-17 11:41:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[suppliers](
	[supplier_id] [int] NULL,
	[supplier_details] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Vehical_Catagory]    Script Date: 22-Nov-17 11:41:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Vehical_Catagory](
	[vehicle_Category_Code] [int] NULL,
	[vehicle_Category_Description] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
