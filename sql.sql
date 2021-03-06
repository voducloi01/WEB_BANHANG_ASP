USE [CCS]
GO
/****** Object:  Table [dbo].[Bill]    Script Date: 6/8/2022 1:27:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill](
	[idBill] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](100) NULL,
	[Total] [bigint] NULL,
	[Status] [bit] NULL,
	[Date] [datetime] NULL,
 CONSTRAINT [PK_Bill] PRIMARY KEY CLUSTERED 
(
	[idBill] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BillDetails]    Script Date: 6/8/2022 1:27:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BillDetails](
	[idBill] [int] NOT NULL,
	[id] [int] NOT NULL,
	[amount] [int] NULL,
 CONSTRAINT [PK_BillDetails] PRIMARY KEY CLUSTERED 
(
	[idBill] ASC,
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 6/8/2022 1:27:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[id] [int] NOT NULL,
	[name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 6/8/2022 1:27:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[image] [nvarchar](max) NOT NULL,
	[descriptions] [nvarchar](max) NOT NULL,
	[categoryId] [int] NOT NULL,
	[price] [bigint] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShoppingCart]    Script Date: 6/8/2022 1:27:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoppingCart](
	[Email] [nvarchar](100) NOT NULL,
	[id] [int] NOT NULL,
	[Amount] [int] NULL,
 CONSTRAINT [PK_ShoppingCart] PRIMARY KEY CLUSTERED 
(
	[Email] ASC,
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 6/8/2022 1:27:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Email] [nvarchar](100) NOT NULL,
	[Password] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Address] [nvarchar](400) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Bill] ON 

INSERT [dbo].[Bill] ([idBill], [Email], [Total], [Status], [Date]) VALUES (7, N'theduc.hutech@gmail.com', 200000, 0, CAST(N'2022-04-12T20:18:41.753' AS DateTime))
INSERT [dbo].[Bill] ([idBill], [Email], [Total], [Status], [Date]) VALUES (8, N'theduc.hutech@gmail.com', 70000, 0, CAST(N'2022-04-12T21:17:39.760' AS DateTime))
INSERT [dbo].[Bill] ([idBill], [Email], [Total], [Status], [Date]) VALUES (9, N'theduc.hutech@gmail.com', 70000, 0, CAST(N'2022-04-12T21:19:22.963' AS DateTime))
INSERT [dbo].[Bill] ([idBill], [Email], [Total], [Status], [Date]) VALUES (10, N'theduc.hutech@gmail.com', 70000, 0, CAST(N'2022-04-12T21:20:18.467' AS DateTime))
INSERT [dbo].[Bill] ([idBill], [Email], [Total], [Status], [Date]) VALUES (11, N'theduc.hutech@gmail.com', 120000, 0, CAST(N'2022-04-12T21:24:40.830' AS DateTime))
INSERT [dbo].[Bill] ([idBill], [Email], [Total], [Status], [Date]) VALUES (12, N'phamtheduc2k@gmail.com', 80000, 0, CAST(N'2022-04-12T22:30:45.713' AS DateTime))
INSERT [dbo].[Bill] ([idBill], [Email], [Total], [Status], [Date]) VALUES (13, N'boy@gmail.com', 70000, 0, CAST(N'2022-06-05T22:38:36.140' AS DateTime))
INSERT [dbo].[Bill] ([idBill], [Email], [Total], [Status], [Date]) VALUES (14, N'boy@gmail.com', 200000, 0, CAST(N'2022-06-05T22:44:27.643' AS DateTime))
INSERT [dbo].[Bill] ([idBill], [Email], [Total], [Status], [Date]) VALUES (15, N'boy@gmail.com', 80000, 0, CAST(N'2022-06-05T22:50:05.180' AS DateTime))
INSERT [dbo].[Bill] ([idBill], [Email], [Total], [Status], [Date]) VALUES (16, N'hungphi1244@gmail.com', 80000, 0, CAST(N'2022-06-05T23:12:14.380' AS DateTime))
INSERT [dbo].[Bill] ([idBill], [Email], [Total], [Status], [Date]) VALUES (17, N'hungphi1244@gmail.com', 80000, 0, CAST(N'2022-06-06T12:55:05.047' AS DateTime))
INSERT [dbo].[Bill] ([idBill], [Email], [Total], [Status], [Date]) VALUES (18, N'thanhphong2k1pro@gmail.com', 240000, 0, CAST(N'2022-06-07T18:15:38.617' AS DateTime))
SET IDENTITY_INSERT [dbo].[Bill] OFF
GO
INSERT [dbo].[BillDetails] ([idBill], [id], [amount]) VALUES (7, 5, 1)
INSERT [dbo].[BillDetails] ([idBill], [id], [amount]) VALUES (7, 7, 1)
INSERT [dbo].[BillDetails] ([idBill], [id], [amount]) VALUES (8, 6, 1)
INSERT [dbo].[BillDetails] ([idBill], [id], [amount]) VALUES (9, 6, 1)
INSERT [dbo].[BillDetails] ([idBill], [id], [amount]) VALUES (10, 6, 1)
INSERT [dbo].[BillDetails] ([idBill], [id], [amount]) VALUES (11, 7, 1)
INSERT [dbo].[BillDetails] ([idBill], [id], [amount]) VALUES (12, 5, 1)
INSERT [dbo].[BillDetails] ([idBill], [id], [amount]) VALUES (13, 6, 1)
INSERT [dbo].[BillDetails] ([idBill], [id], [amount]) VALUES (14, 11, 1)
INSERT [dbo].[BillDetails] ([idBill], [id], [amount]) VALUES (15, 5, 1)
INSERT [dbo].[BillDetails] ([idBill], [id], [amount]) VALUES (16, 5, 1)
INSERT [dbo].[BillDetails] ([idBill], [id], [amount]) VALUES (17, 5, 1)
INSERT [dbo].[BillDetails] ([idBill], [id], [amount]) VALUES (18, 8, 1)
GO
INSERT [dbo].[Categories] ([id], [name]) VALUES (1, N'ASUS')
INSERT [dbo].[Categories] ([id], [name]) VALUES (2, N'MACBOOK')
INSERT [dbo].[Categories] ([id], [name]) VALUES (3, N'DELL')
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([id], [name], [image], [descriptions], [categoryId], [price]) VALUES (5, N'macbook m1 air 2021', N'/app/img/macbook3.jpg', N'', 2, 80000)
INSERT [dbo].[Product] ([id], [name], [image], [descriptions], [categoryId], [price]) VALUES (6, N'macbook m1 pro 2022', N'/app/img/macbook4.jpg', N'', 2, 70000)
INSERT [dbo].[Product] ([id], [name], [image], [descriptions], [categoryId], [price]) VALUES (7, N'macbook m1 pro2020', N'/app/img/macbook2.jpg', N'', 2, 120000)
INSERT [dbo].[Product] ([id], [name], [image], [descriptions], [categoryId], [price]) VALUES (8, N'asus ROG 2022', N'/app/img/asus1.jpg', N'', 1, 240000)
INSERT [dbo].[Product] ([id], [name], [image], [descriptions], [categoryId], [price]) VALUES (9, N'asus ROG 2019', N'/app/img/asus2.jpg', N'', 1, 70000)
INSERT [dbo].[Product] ([id], [name], [image], [descriptions], [categoryId], [price]) VALUES (10, N'asus TUF 2022', N'/app/img/asu3.jpg', N'', 1, 150000)
INSERT [dbo].[Product] ([id], [name], [image], [descriptions], [categoryId], [price]) VALUES (11, N'DELL 2020', N'/app/img/dell2.jpg', N'', 3, 200000)
INSERT [dbo].[Product] ([id], [name], [image], [descriptions], [categoryId], [price]) VALUES (15, N'DELL 2021', N'/app/img/Dell1.jpg', N'', 3, 11111)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
INSERT [dbo].[ShoppingCart] ([Email], [id], [Amount]) VALUES (N'boy@gmail.com', 5, 5)
INSERT [dbo].[ShoppingCart] ([Email], [id], [Amount]) VALUES (N'boy@gmail.com', 6, 2)
INSERT [dbo].[ShoppingCart] ([Email], [id], [Amount]) VALUES (N'boy@gmail.com', 7, 5)
INSERT [dbo].[ShoppingCart] ([Email], [id], [Amount]) VALUES (N'boy@gmail.com', 8, 1)
INSERT [dbo].[ShoppingCart] ([Email], [id], [Amount]) VALUES (N'boy@gmail.com', 9, 1)
INSERT [dbo].[ShoppingCart] ([Email], [id], [Amount]) VALUES (N'ducloi@gmail.com', 5, 1)
INSERT [dbo].[ShoppingCart] ([Email], [id], [Amount]) VALUES (N'ducloi@gmail.com', 6, 1)
INSERT [dbo].[ShoppingCart] ([Email], [id], [Amount]) VALUES (N'phamtheduc2k@gmail.com', 5, 11)
GO
INSERT [dbo].[User] ([Email], [Password], [Name], [Phone], [Address]) VALUES (N'boy@gmail.com', N'4532F61CBFE3C75C67176F2D52E8D59D', N'loi', N'02992233', N'28 võ văn ngân')
INSERT [dbo].[User] ([Email], [Password], [Name], [Phone], [Address]) VALUES (N'ducloi@gmail.com', N'4532F61CBFE3C75C67176F2D52E8D59D', N'loi', N'0329781232', N'12 dân chủ')
INSERT [dbo].[User] ([Email], [Password], [Name], [Phone], [Address]) VALUES (N'ducloi1244@gmail.com', N'634D84A2AD7441C3337C7115C8A12C39', N'vo duc loi', N'0329781232', N'12 dân chủ')
INSERT [dbo].[User] ([Email], [Password], [Name], [Phone], [Address]) VALUES (N'hungphi1244@gmail.com', N'4532F61CBFE3C75C67176F2D52E8D59D', N'phi', N'0992221111', N'21 dân chủ')
INSERT [dbo].[User] ([Email], [Password], [Name], [Phone], [Address]) VALUES (N'phamtheduc2k@gmail.com', N'202CB962AC59075B964B07152D234B70', N'ADMIN', N'0565773627', N'Hồ Chí Minh')
INSERT [dbo].[User] ([Email], [Password], [Name], [Phone], [Address]) VALUES (N'thanhphong2k1pro@gmail.com', N'4532F61CBFE3C75C67176F2D52E8D59D', N'trung', N'0336910586', N'21 nguyen thi dinh')
INSERT [dbo].[User] ([Email], [Password], [Name], [Phone], [Address]) VALUES (N'theduc.hutech@gmail.com', N'202CB962AC59075B964B07152D234B70', N'Thế Đức', N'0565779999', N'Hà Nội')
GO
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD  CONSTRAINT [FK_Bill_User] FOREIGN KEY([Email])
REFERENCES [dbo].[User] ([Email])
GO
ALTER TABLE [dbo].[Bill] CHECK CONSTRAINT [FK_Bill_User]
GO
ALTER TABLE [dbo].[BillDetails]  WITH CHECK ADD  CONSTRAINT [FK_BillDetails_Bill] FOREIGN KEY([idBill])
REFERENCES [dbo].[Bill] ([idBill])
GO
ALTER TABLE [dbo].[BillDetails] CHECK CONSTRAINT [FK_BillDetails_Bill]
GO
ALTER TABLE [dbo].[BillDetails]  WITH CHECK ADD  CONSTRAINT [FK_BillDetails_Product] FOREIGN KEY([id])
REFERENCES [dbo].[Product] ([id])
GO
ALTER TABLE [dbo].[BillDetails] CHECK CONSTRAINT [FK_BillDetails_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Categories] FOREIGN KEY([categoryId])
REFERENCES [dbo].[Categories] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Categories]
GO
ALTER TABLE [dbo].[ShoppingCart]  WITH CHECK ADD  CONSTRAINT [FK_ShoppingCart_Product] FOREIGN KEY([id])
REFERENCES [dbo].[Product] ([id])
GO
ALTER TABLE [dbo].[ShoppingCart] CHECK CONSTRAINT [FK_ShoppingCart_Product]
GO
ALTER TABLE [dbo].[ShoppingCart]  WITH CHECK ADD  CONSTRAINT [FK_ShoppingCart_User] FOREIGN KEY([Email])
REFERENCES [dbo].[User] ([Email])
GO
ALTER TABLE [dbo].[ShoppingCart] CHECK CONSTRAINT [FK_ShoppingCart_User]
GO
