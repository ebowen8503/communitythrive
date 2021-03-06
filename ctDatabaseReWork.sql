USE [communityThriveDB]
GO
/****** Object:  Table [dbo].[ctCategory]    Script Date: 12/2/16 2:37:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ctCategory](
	[categoryID] [int] IDENTITY(1,1) NOT NULL,
	[dateAdded] [datetime] NULL,
	[parentID] [int] NULL,
	[isUserDefined] [bit] NULL,
	[isDeleted] [bit] NULL,
	[desription] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[categoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ctCompany]    Script Date: 12/2/16 2:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ctCompany](
	[companyID] [int] IDENTITY(1,1) NOT NULL,
	[companyName] [nvarchar](150) NOT NULL,
	[companyDescription] [nvarchar](250) NULL,
	[companyLocation] [nvarchar](150) NOT NULL,
	[companyDemographic] [nvarchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[companyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ctDonation]    Script Date: 12/2/16 2:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ctDonation](
	[donationID] [int] IDENTITY(1,1) NOT NULL,
	[userID] [int] NOT NULL,
	[dateSubmitted] [datetime] NOT NULL,
	[describe] [nvarchar](max) NOT NULL,
	[notes] [nvarchar](max) NOT NULL,
	[eventID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[donationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ctEvent]    Script Date: 12/2/16 2:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ctEvent](
	[eventsID] [int] NOT NULL,
	[eventTypeID] [int] NOT NULL,
	[eventDescription] [varchar](max) NULL,
	[eventDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[eventsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ctEventType]    Script Date: 12/2/16 2:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ctEventType](
	[eventTypeID] [int] NOT NULL,
	[eventTypeDescription] [nvarchar](max) NULL,
	[designation] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[eventTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ctFamily]    Script Date: 12/2/16 2:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ctFamily](
	[familyID] [int] NOT NULL,
	[recipientID] [int] NOT NULL,
	[gender] [int] NULL,
	[age] [int] NULL,
	[isSpouse] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[familyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ctHouseholdInformation]    Script Date: 12/2/16 2:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ctHouseholdInformation](
	[householdInformationID] [int] NOT NULL,
	[familyID] [int] NOT NULL,
	[householdIncome] [int] NULL,
	[isEmployed] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[householdInformationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ctInventory]    Script Date: 12/2/16 2:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ctInventory](
	[inventoryID] [int] NOT NULL,
	[donationID] [int] NULL,
	[quantity] [int] NULL,
	[description] [varchar](255) NULL,
	[categoryID] [int] NULL,
 CONSTRAINT [PK_ctInventory] PRIMARY KEY CLUSTERED 
(
	[inventoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ctItem]    Script Date: 12/2/16 2:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ctItem](
	[itemID] [int] NOT NULL,
	[itemName] [varchar](255) NULL,
	[itemPrice] [int] NULL,
	[itemDescription] [varchar](255) NULL,
	[itemUPC] [int] NULL,
	[iventoryID] [int] NULL,
	[categoryID] [int] NULL,
 CONSTRAINT [PK_ctItem] PRIMARY KEY CLUSTERED 
(
	[itemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ctPrivilidges]    Script Date: 12/2/16 2:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ctPrivilidges](
	[privilidgesID] [int] NOT NULL,
	[privilidgesDescription] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[privilidgesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ctReceipt]    Script Date: 12/2/16 2:37:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ctReceipt](
	[ctReceiptID] [int] IDENTITY(1,1) NOT NULL,
	[userID] [int] NOT NULL,
	[itemList] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ctReceiptID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ctRecipient]    Script Date: 12/2/16 2:37:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ctRecipient](
	[recipientID] [int] NOT NULL,
	[firstName] [nvarchar](50) NULL,
	[lastName] [nvarchar](50) NULL,
	[gender] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[recipientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ctRecipientAddress]    Script Date: 12/2/16 2:37:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ctRecipientAddress](
	[ctRecipientAddressID] [int] NOT NULL,
	[recipientID] [int] NOT NULL,
	[streetName] [nvarchar](100) NULL,
	[cityName] [nvarchar](50) NULL,
	[stateName] [nvarchar](50) NULL,
	[zipcode] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ctRecipientAddressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ctRecipientDonationTracking]    Script Date: 12/2/16 2:37:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ctRecipientDonationTracking](
	[donationTrackingID] [int] NOT NULL,
	[recipientID] [int] NOT NULL,
	[donationDate] [datetime] NULL,
	[eventsID] [int] NOT NULL,
	[stockID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[donationTrackingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ctRolePrivilidges]    Script Date: 12/2/16 2:37:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ctRolePrivilidges](
	[roleFK] [int] NULL,
	[privilidgeFK] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ctRoles]    Script Date: 12/2/16 2:37:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ctRoles](
	[rolesID] [int] NOT NULL,
	[roleDescription] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[rolesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ctStock]    Script Date: 12/2/16 2:37:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ctStock](
	[stockID] [int] IDENTITY(1,1) NOT NULL,
	[itemID] [int] NULL,
	[quantity] [int] NULL,
	[locationCode] [varchar](50) NULL,
	[categoryID] [int] NULL,
	[inventoryID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[stockID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ctUser]    Script Date: 12/2/16 2:37:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ctUser](
	[userID] [int] IDENTITY(1,1) NOT NULL,
	[roleID] [int] NOT NULL,
	[companyID] [int] NULL,
	[emailAddress] [nvarchar](150) NOT NULL,
	[userPassword] [nvarchar](150) NOT NULL,
	[firstName] [nvarchar](100) NOT NULL,
	[lastName] [nvarchar](100) NOT NULL,
	[phoneNumber] [nvarchar](100) NULL,
	[userAddress] [nvarchar](200) NULL,
	[userTypeID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ctUserRole]    Script Date: 12/2/16 2:37:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ctUserRole](
	[ctUserRoleID] [int] IDENTITY(1,1) NOT NULL,
	[roleID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ctUserRoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ctUserType]    Script Date: 12/2/16 2:37:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ctUserType](
	[userTypeID] [int] IDENTITY(1,1) NOT NULL,
	[userTypeDescription] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[userTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[ctCategory] ADD  DEFAULT ((0)) FOR [parentID]
GO
ALTER TABLE [dbo].[ctCategory] ADD  DEFAULT ((1)) FOR [isUserDefined]
GO
ALTER TABLE [dbo].[ctCategory] ADD  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [dbo].[ctDonation] ADD  DEFAULT (getdate()) FOR [dateSubmitted]
GO
ALTER TABLE [dbo].[ctEvent] ADD  DEFAULT (getdate()) FOR [eventDateTime]
GO
ALTER TABLE [dbo].[ctFamily] ADD  DEFAULT ((0)) FOR [isSpouse]
GO
ALTER TABLE [dbo].[ctHouseholdInformation] ADD  DEFAULT ((0)) FOR [isEmployed]
GO
ALTER TABLE [dbo].[ctRecipientDonationTracking] ADD  DEFAULT (getdate()) FOR [donationDate]
GO
ALTER TABLE [dbo].[ctUser] ADD  DEFAULT (NULL) FOR [phoneNumber]
GO
ALTER TABLE [dbo].[ctUser] ADD  DEFAULT (NULL) FOR [userAddress]
GO
ALTER TABLE [dbo].[ctDonation]  WITH CHECK ADD FOREIGN KEY([userID])
REFERENCES [dbo].[ctUser] ([userID])
GO
ALTER TABLE [dbo].[ctDonation]  WITH CHECK ADD  CONSTRAINT [FK_ctDonation_ctEvent] FOREIGN KEY([eventID])
REFERENCES [dbo].[ctEvent] ([eventsID])
GO
ALTER TABLE [dbo].[ctDonation] CHECK CONSTRAINT [FK_ctDonation_ctEvent]
GO
ALTER TABLE [dbo].[ctEvent]  WITH CHECK ADD  CONSTRAINT [FK_ctEvent_eventTypeID] FOREIGN KEY([eventTypeID])
REFERENCES [dbo].[ctEventType] ([eventTypeID])
GO
ALTER TABLE [dbo].[ctEvent] CHECK CONSTRAINT [FK_ctEvent_eventTypeID]
GO
ALTER TABLE [dbo].[ctFamily]  WITH CHECK ADD  CONSTRAINT [FK_ctFamily_recipientID] FOREIGN KEY([recipientID])
REFERENCES [dbo].[ctRecipient] ([recipientID])
GO
ALTER TABLE [dbo].[ctFamily] CHECK CONSTRAINT [FK_ctFamily_recipientID]
GO
ALTER TABLE [dbo].[ctHouseholdInformation]  WITH CHECK ADD  CONSTRAINT [FK_ctHouseholdInformation_familyID] FOREIGN KEY([familyID])
REFERENCES [dbo].[ctFamily] ([familyID])
GO
ALTER TABLE [dbo].[ctHouseholdInformation] CHECK CONSTRAINT [FK_ctHouseholdInformation_familyID]
GO
ALTER TABLE [dbo].[ctInventory]  WITH CHECK ADD  CONSTRAINT [FK_ctInventory_ctCategory] FOREIGN KEY([categoryID])
REFERENCES [dbo].[ctCategory] ([categoryID])
GO
ALTER TABLE [dbo].[ctInventory] CHECK CONSTRAINT [FK_ctInventory_ctCategory]
GO
ALTER TABLE [dbo].[ctItem]  WITH CHECK ADD  CONSTRAINT [FK_ctItem_ctCategory] FOREIGN KEY([categoryID])
REFERENCES [dbo].[ctCategory] ([categoryID])
GO
ALTER TABLE [dbo].[ctItem] CHECK CONSTRAINT [FK_ctItem_ctCategory]
GO
ALTER TABLE [dbo].[ctItem]  WITH CHECK ADD  CONSTRAINT [FK_ctItem_ctInventory] FOREIGN KEY([iventoryID])
REFERENCES [dbo].[ctInventory] ([inventoryID])
GO
ALTER TABLE [dbo].[ctItem] CHECK CONSTRAINT [FK_ctItem_ctInventory]
GO
ALTER TABLE [dbo].[ctReceipt]  WITH CHECK ADD FOREIGN KEY([itemList])
REFERENCES [dbo].[ctDonation] ([donationID])
GO
ALTER TABLE [dbo].[ctReceipt]  WITH CHECK ADD FOREIGN KEY([userID])
REFERENCES [dbo].[ctUser] ([userID])
GO
ALTER TABLE [dbo].[ctRecipientAddress]  WITH CHECK ADD  CONSTRAINT [FK_ctRecipientAddress_recipientID] FOREIGN KEY([recipientID])
REFERENCES [dbo].[ctRecipient] ([recipientID])
GO
ALTER TABLE [dbo].[ctRecipientAddress] CHECK CONSTRAINT [FK_ctRecipientAddress_recipientID]
GO
ALTER TABLE [dbo].[ctRecipientDonationTracking]  WITH CHECK ADD  CONSTRAINT [FK_ctRecipientDonationTracking_eventsID] FOREIGN KEY([eventsID])
REFERENCES [dbo].[ctEvent] ([eventsID])
GO
ALTER TABLE [dbo].[ctRecipientDonationTracking] CHECK CONSTRAINT [FK_ctRecipientDonationTracking_eventsID]
GO
ALTER TABLE [dbo].[ctRecipientDonationTracking]  WITH CHECK ADD  CONSTRAINT [FK_ctRecipientDonationTracking_recipientID] FOREIGN KEY([recipientID])
REFERENCES [dbo].[ctRecipient] ([recipientID])
GO
ALTER TABLE [dbo].[ctRecipientDonationTracking] CHECK CONSTRAINT [FK_ctRecipientDonationTracking_recipientID]
GO
ALTER TABLE [dbo].[ctRecipientDonationTracking]  WITH CHECK ADD  CONSTRAINT [FK_ctRecipientDonationTracking_stockID] FOREIGN KEY([stockID])
REFERENCES [dbo].[ctStock] ([stockID])
GO
ALTER TABLE [dbo].[ctRecipientDonationTracking] CHECK CONSTRAINT [FK_ctRecipientDonationTracking_stockID]
GO
ALTER TABLE [dbo].[ctRolePrivilidges]  WITH CHECK ADD FOREIGN KEY([privilidgeFK])
REFERENCES [dbo].[ctPrivilidges] ([privilidgesID])
GO
ALTER TABLE [dbo].[ctRolePrivilidges]  WITH CHECK ADD FOREIGN KEY([roleFK])
REFERENCES [dbo].[ctRoles] ([rolesID])
GO
ALTER TABLE [dbo].[ctStock]  WITH CHECK ADD  CONSTRAINT [FK_ctStock_ctCategory] FOREIGN KEY([categoryID])
REFERENCES [dbo].[ctCategory] ([categoryID])
GO
ALTER TABLE [dbo].[ctStock] CHECK CONSTRAINT [FK_ctStock_ctCategory]
GO
ALTER TABLE [dbo].[ctStock]  WITH CHECK ADD  CONSTRAINT [FK_ctStock_ctInventory] FOREIGN KEY([inventoryID])
REFERENCES [dbo].[ctInventory] ([inventoryID])
GO
ALTER TABLE [dbo].[ctStock] CHECK CONSTRAINT [FK_ctStock_ctInventory]
GO
ALTER TABLE [dbo].[ctStock]  WITH CHECK ADD  CONSTRAINT [FK_ctStock_ctItem] FOREIGN KEY([itemID])
REFERENCES [dbo].[ctItem] ([itemID])
GO
ALTER TABLE [dbo].[ctStock] CHECK CONSTRAINT [FK_ctStock_ctItem]
GO
ALTER TABLE [dbo].[ctUser]  WITH CHECK ADD FOREIGN KEY([companyID])
REFERENCES [dbo].[ctCompany] ([companyID])
GO
ALTER TABLE [dbo].[ctUser]  WITH CHECK ADD FOREIGN KEY([roleID])
REFERENCES [dbo].[ctRoles] ([rolesID])
GO
ALTER TABLE [dbo].[ctUser]  WITH CHECK ADD  CONSTRAINT [FK_ctUser_ctUserType] FOREIGN KEY([userTypeID])
REFERENCES [dbo].[ctUserType] ([userTypeID])
GO
ALTER TABLE [dbo].[ctUser] CHECK CONSTRAINT [FK_ctUser_ctUserType]
GO
ALTER TABLE [dbo].[ctUserRole]  WITH CHECK ADD FOREIGN KEY([roleID])
REFERENCES [dbo].[ctRoles] ([rolesID])
GO
