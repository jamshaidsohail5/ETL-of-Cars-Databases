USE [Car_Sale_Data_Marts]
GO
/****** Object:  Table [dbo].[Addresses]    Script Date: 22-Nov-17 11:40:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Addresses](
	[cell_Mobile_Phone] [varchar](50) NULL,
	[address_ID] [int] NOT NULL,
	[address_Line_1] [varchar](50) NULL,
	[address_Line_2] [varchar](50) NULL,
	[address_Line_3] [varchar](50) NULL,
	[address_Line_4] [varchar](50) NULL,
	[other_Address_Details] [varchar](50) NULL,
	[Zip_key] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[address_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Car_Manufacturers]    Script Date: 22-Nov-17 11:40:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Car_Manufacturers](
	[manufacturer_ShortName] [varchar](50) NOT NULL,
	[manufacturer_FullName] [varchar](50) NULL,
	[manufacturer_OtherDetails] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[manufacturer_ShortName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Car_Models]    Script Date: 22-Nov-17 11:40:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Car_Models](
	[model_Code] [int] NOT NULL,
	[manufacturer_code] [int] NULL,
	[model_Name] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[model_Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Car_Sales_Data_Marts]    Script Date: 22-Nov-17 11:40:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Car_Sales_Data_Marts](
	[car_Sold_ID] [int] NULL,
	[car_for_Sale_ID] [int] NULL,
	[model_Code] [int] NULL,
	[vehicle_Category_Code] [int] NULL,
	[car_Feature_ID] [int] NULL,
	[customer_Preference_ID] [int] NULL,
	[customer_ID] [int] NULL,
	[address_ID] [int] NULL,
	[Day_key] [int] NULL,
	[agreed_Price] [int] NULL,
	[Zip_key] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cars_Features]    Script Date: 22-Nov-17 11:40:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cars_Features](
	[car_Feature_ID] [int] NOT NULL,
	[car_Feature_Description] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[car_Feature_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cars_for_Sale]    Script Date: 22-Nov-17 11:40:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cars_for_Sale](
	[car_for_Sale_ID] [int] NOT NULL,
	[asking_Price] [int] NULL,
	[current_Mileage] [int] NULL,
	[date_Acquired] [datetime] NULL,
	[registration_Year] [int] NULL,
	[other_Car_Details] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[car_for_Sale_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cars_Sold]    Script Date: 22-Nov-17 11:40:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cars_Sold](
	[agreed_Price] [int] NULL,
	[date_Sold] [datetime] NULL,
	[other_Details] [varchar](50) NULL,
	[car_Sold_ID] [int] NOT NULL,
	[Day_key] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[car_Sold_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Country]    Script Date: 22-Nov-17 11:40:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Country](
	[Country] [varchar](50) NULL,
	[Country_key] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Country_key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Customer_Preferences]    Script Date: 22-Nov-17 11:40:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer_Preferences](
	[customer_Preference_ID] [int] NOT NULL,
	[customer_Preference_Details] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[customer_Preference_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 22-Nov-17 11:40:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customers](
	[customer_ID] [int] NOT NULL,
	[email_Address] [varchar](50) NULL,
	[other_Customer_Details] [varchar](50) NULL,
	[cell_Mobile_Phone] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[customer_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Date]    Script Date: 22-Nov-17 11:40:22 PM ******/
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
/****** Object:  Table [dbo].[Month]    Script Date: 22-Nov-17 11:40:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Month](
	[Month] [int] NULL,
	[Year_Key] [int] NULL,
	[Month_key] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Month_key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Most_Demanding_Cars]    Script Date: 22-Nov-17 11:40:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Most_Demanding_Cars](
	[Model Name] [varchar](50) NULL,
	[Sold Count] [numeric](20, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Most_Prefered_Feactures]    Script Date: 22-Nov-17 11:40:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Most_Prefered_Feactures](
	[car_Feature_ID] [int] NULL,
	[car_Feature_Description] [varchar](50) NULL,
	[Demand] [numeric](20, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Province]    Script Date: 22-Nov-17 11:40:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Province](
	[state_Country_Province] [varchar](50) NULL,
	[Country_key] [int] NULL,
	[Country_Privence_key] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Country_Privence_key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Town]    Script Date: 22-Nov-17 11:40:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Town](
	[town_city] [varchar](50) NULL,
	[Country_Privence_key] [int] NULL,
	[Town_key] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Town_key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Vehicle_Categories]    Script Date: 22-Nov-17 11:40:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Vehicle_Categories](
	[vehicle_Category_Code] [int] NOT NULL,
	[vehicle_Category_Description] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[vehicle_Category_Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Year]    Script Date: 22-Nov-17 11:40:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Year](
	[Year] [int] NULL,
	[Year_Key] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Year_Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Zip]    Script Date: 22-Nov-17 11:40:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Zip](
	[post_Zip_Code] [int] NULL,
	[Town_key] [int] NULL,
	[Zip_key] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Zip_key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Car_Sales_Data_Marts]  WITH CHECK ADD FOREIGN KEY([address_ID])
REFERENCES [dbo].[Addresses] ([address_ID])
GO
ALTER TABLE [dbo].[Car_Sales_Data_Marts]  WITH CHECK ADD FOREIGN KEY([car_for_Sale_ID])
REFERENCES [dbo].[Cars_for_Sale] ([car_for_Sale_ID])
GO
ALTER TABLE [dbo].[Car_Sales_Data_Marts]  WITH CHECK ADD FOREIGN KEY([car_Feature_ID])
REFERENCES [dbo].[Cars_Features] ([car_Feature_ID])
GO
ALTER TABLE [dbo].[Car_Sales_Data_Marts]  WITH CHECK ADD FOREIGN KEY([car_Sold_ID])
REFERENCES [dbo].[Cars_Sold] ([car_Sold_ID])
GO
ALTER TABLE [dbo].[Car_Sales_Data_Marts]  WITH CHECK ADD FOREIGN KEY([customer_Preference_ID])
REFERENCES [dbo].[Customer_Preferences] ([customer_Preference_ID])
GO
ALTER TABLE [dbo].[Car_Sales_Data_Marts]  WITH CHECK ADD FOREIGN KEY([customer_ID])
REFERENCES [dbo].[Customers] ([customer_ID])
GO
ALTER TABLE [dbo].[Car_Sales_Data_Marts]  WITH CHECK ADD FOREIGN KEY([Day_key])
REFERENCES [dbo].[Date] ([Day_key])
GO
ALTER TABLE [dbo].[Car_Sales_Data_Marts]  WITH CHECK ADD FOREIGN KEY([model_Code])
REFERENCES [dbo].[Car_Models] ([model_Code])
GO
ALTER TABLE [dbo].[Car_Sales_Data_Marts]  WITH CHECK ADD FOREIGN KEY([Zip_key])
REFERENCES [dbo].[Zip] ([Zip_key])
GO
ALTER TABLE [dbo].[Date]  WITH CHECK ADD FOREIGN KEY([Month_key])
REFERENCES [dbo].[Month] ([Month_key])
GO
ALTER TABLE [dbo].[Month]  WITH CHECK ADD FOREIGN KEY([Year_Key])
REFERENCES [dbo].[Year] ([Year_Key])
GO
ALTER TABLE [dbo].[Province]  WITH CHECK ADD FOREIGN KEY([Country_key])
REFERENCES [dbo].[Country] ([Country_key])
GO
ALTER TABLE [dbo].[Town]  WITH CHECK ADD FOREIGN KEY([Country_Privence_key])
REFERENCES [dbo].[Province] ([Country_Privence_key])
GO
ALTER TABLE [dbo].[Zip]  WITH CHECK ADD FOREIGN KEY([Town_key])
REFERENCES [dbo].[Town] ([Town_key])
GO
