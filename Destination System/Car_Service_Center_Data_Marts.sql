USE [Car_Service_Center_Data_Marts]
GO
/****** Object:  Table [dbo].[Best_Mechanic]    Script Date: 22-Nov-17 11:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Best_Mechanic](
	[mechanic_id] [int] NULL,
	[mechanic_details] [varchar](50) NULL,
	[mechanic_name] [varchar](50) NULL,
	[Best Mechanic] [numeric](20, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Car_Service_Center_Data_Marts]    Script Date: 22-Nov-17 11:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Car_Service_Center_Data_Marts](
	[part_id] [int] NULL,
	[part_manufacturer_code] [int] NULL,
	[mileage_donor_vehicle] [int] NULL,
	[defect_id] [int] NULL,
	[booking_id] [int] NULL,
	[licence_number] [int] NULL,
	[mechanic_id] [int] NULL,
	[customer_ID] [int] NULL,
	[Day_key] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cars]    Script Date: 22-Nov-17 11:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cars](
	[current_Mileage] [int] NULL,
	[other_Car_Details] [varchar](50) NULL,
	[licence_number] [int] NOT NULL,
	[customer_id] [int] NULL,
	[engine_size] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[licence_number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 22-Nov-17 11:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Contacts](
	[email_Address] [varchar](50) NULL,
	[cell_Mobile_Phone] [varchar](50) NULL,
	[address_Line_1] [varchar](50) NULL,
	[address_Line_2] [varchar](50) NULL,
	[address_Line_3] [varchar](50) NULL,
	[address_Line_4] [varchar](50) NULL,
	[town_city] [varchar](50) NULL,
	[state_Country_Province] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[other_Address_Details] [varchar](50) NULL,
	[contact_id] [int] NOT NULL,
	[gender] [varchar](50) NULL,
	[Full_Name] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[contact_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Date]    Script Date: 22-Nov-17 11:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Date](
	[Day] [int] NULL,
	[Month_key] [int] NULL,
	[Day_key] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Day_key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Defects]    Script Date: 22-Nov-17 11:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Defects](
	[defect_id] [int] NOT NULL,
	[defect_description] [varchar](50) NULL,
	[date_defect_recorded] [datetime] NULL,
	[other_details] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[defect_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Manufactures]    Script Date: 22-Nov-17 11:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Manufactures](
	[manufacturer_name] [varchar](50) NULL,
	[manufacturer_OtherDetails] [varchar](50) NULL,
	[manufacture_code] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[manufacture_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Mechanics]    Script Date: 22-Nov-17 11:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mechanics](
	[mechanic_id] [int] NOT NULL,
	[mechanic_name] [varchar](50) NULL,
	[mechanic_details] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[mechanic_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Models]    Script Date: 22-Nov-17 11:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Models](
	[model_Name] [varchar](50) NULL,
	[model_code] [int] NULL,
	[other_details] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Month]    Script Date: 22-Nov-17 11:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Month](
	[Month] [int] NULL,
	[Year_Key] [int] NULL,
	[Month_key] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Most_Demanding_Car_Part]    Script Date: 22-Nov-17 11:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Most_Demanding_Car_Part](
	[model] [int] NULL,
	[Demand] [numeric](20, 0) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Most_Demanding_Part]    Script Date: 22-Nov-17 11:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Most_Demanding_Part](
	[part_id] [int] NULL,
	[part_name] [varchar](50) NULL,
	[part_description] [varchar](50) NULL,
	[Demanding part] [numeric](20, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Most_Service_Booking_Manufacturer_Name]    Script Date: 22-Nov-17 11:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Most_Service_Booking_Manufacturer_Name](
	[manufacturer_FullName] [varchar](50) NULL,
	[manufacturer_ShortName] [varchar](50) NULL,
	[manufacturer_OtherDetails] [varchar](50) NULL,
	[Service Count] [numeric](20, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Parts]    Script Date: 22-Nov-17 11:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Parts](
	[part_id] [int] NOT NULL,
	[part_name] [varchar](50) NULL,
	[part_description] [varchar](50) NULL,
	[number_in_stock] [int] NULL,
	[other_details] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[part_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Service_Bookings]    Script Date: 22-Nov-17 11:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Service_Bookings](
	[date_of_booking] [datetime] NULL,
	[booking_details] [varchar](50) NULL,
	[booking_id] [int] NOT NULL,
	[Day_key] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[booking_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Year]    Script Date: 22-Nov-17 11:40:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Year](
	[Year] [int] NULL,
	[Year_Key] [int] NULL
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Car_Service_Center_Data_Marts]  WITH CHECK ADD FOREIGN KEY([booking_id])
REFERENCES [dbo].[Service_Bookings] ([booking_id])
GO
ALTER TABLE [dbo].[Car_Service_Center_Data_Marts]  WITH CHECK ADD FOREIGN KEY([customer_ID])
REFERENCES [dbo].[Contacts] ([contact_id])
GO
ALTER TABLE [dbo].[Car_Service_Center_Data_Marts]  WITH CHECK ADD FOREIGN KEY([Day_key])
REFERENCES [dbo].[Date] ([Day_key])
GO
ALTER TABLE [dbo].[Car_Service_Center_Data_Marts]  WITH CHECK ADD FOREIGN KEY([defect_id])
REFERENCES [dbo].[Defects] ([defect_id])
GO
ALTER TABLE [dbo].[Car_Service_Center_Data_Marts]  WITH CHECK ADD FOREIGN KEY([licence_number])
REFERENCES [dbo].[Cars] ([licence_number])
GO
ALTER TABLE [dbo].[Car_Service_Center_Data_Marts]  WITH CHECK ADD FOREIGN KEY([mechanic_id])
REFERENCES [dbo].[Mechanics] ([mechanic_id])
GO
ALTER TABLE [dbo].[Car_Service_Center_Data_Marts]  WITH CHECK ADD FOREIGN KEY([part_manufacturer_code])
REFERENCES [dbo].[Manufactures] ([manufacture_code])
GO
