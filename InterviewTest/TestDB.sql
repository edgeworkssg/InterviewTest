/****** Object:  Table [dbo].[Item]    Script Date: 2021-11-25 5:11:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item](
	[ItemNo] [varchar](50) NOT NULL,
	[ItemName] [nvarchar](160) NOT NULL,
	[CategoryName] [nvarchar](150) NOT NULL,
	[RetailPrice] [money] NOT NULL,
	[FactoryPrice] [money] NOT NULL,
	[UOM] [nvarchar](50) NULL,
 CONSTRAINT [PK_Item_1] PRIMARY KEY CLUSTERED 
(
	[ItemNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RecipeDetail]    Script Date: 2021-11-25 5:11:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecipeDetail](
	[RecipeDetailID] [varchar](64) NOT NULL,
	[RecipeHeaderID] [varchar](64) NOT NULL,
	[ItemNo] [varchar](50) NOT NULL,
	[Qty] [float] NOT NULL,
	[UOM] [nvarchar](50) NULL,
 CONSTRAINT [PK_RecipeDetail] PRIMARY KEY CLUSTERED 
(
	[RecipeDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RecipeHeader]    Script Date: 2021-11-25 5:11:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecipeHeader](
	[RecipeHeaderID] [varchar](64) NOT NULL,
	[RecipeName] [varchar](150) NOT NULL,
	[ItemNo] [varchar](50) NOT NULL,
 CONSTRAINT [PK_RecipeHeader] PRIMARY KEY CLUSTERED 
(
	[RecipeHeaderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UOMConversion]    Script Date: 2021-11-25 5:11:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UOMConversion](
	[UOMConversionID] [int] NOT NULL,
	[ItemNo] [varchar](50) NOT NULL,
	[FromUOM] [nvarchar](50) NOT NULL,
	[ToUOM] [nvarchar](50) NOT NULL,
	[ConversionRate] [float] NOT NULL,
 CONSTRAINT [PK_UOMConversionDet] PRIMARY KEY CLUSTERED 
(
	[UOMConversionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018010093', N'Meatball in Cherry Tomato Cauliflower Stew', N'Product', 6.2800, 0.0000, N'pkt/14por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183018010165', N'Chicken Liver Gravy', N'Product', 6.6500, 0.0000, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183028010149', N'Roasted Green Capsicum Chilli Puree', N'Product', 1.7800, 0.0000, N'kg')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010208', N'Green Tea Swiss Roll', N'Product', 1.4600, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1183048010213', N'White Peach Swiss Roll', N'Product', 8.8300, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1192081080001', N'Chicken Nanban Donburi *', N'Product', 12.9400, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1192081080003', N'Pork Katsu Donburi*', N'Product', 7.9800, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1192081080004', N'Cheese Baked Butter Chicken Curry Rice*', N'Product', 6.2700, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1192288080001', N'Hamburger with Burdock Shiitake Sauce', N'Product', 4.5700, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1192288080002', N'Slow Cooked Chicken Leg ', N'Product', 8.7800, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1192288080003', N'Barramundi Petite Vegetables Celery Pesto', N'Product', 4.8200, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1192288080004', N'Shoyu Root Vegetables Stew', N'Product', 12.5300, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1192288080005', N'Prawn Couscous  Salad (JW)', N'Product', 1.5100, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1192288080006', N'Mushroom Orecchiette Pasta Salad (JW)', N'Product', 1.1700, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1192288080007', N'Roasted Duo Apple and Kale Salad (JW)', N'Product', 1.2100, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1192288080009', N'Hijiki and Black Fungus Salad (JW)', N'Product', 3.3000, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1192288080010', N'Smoked Chicken, Roasted Celeriac, Pear Salad (JW)', N'Product', 2.5700, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1192288080011', N'Braised Pork Soft Bone Stew (JW)', N'Product', 3.1400, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1192288080012', N'Sakura Chicken Curry Miso and Dried Chilli (JW)', N'Product', 0.9600, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1192288080013', N'Barramundi Fish & Chips', N'Product', 3.0400, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1192808000005', N'Matcha Soft Serve with Kuromitsu (Promo)', N'Product', 0.6000, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1192808000007', N'(Student) Matcha Soft Serve with Kuromitsu ', N'Product', 0.6000, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1192808000074', N'3-DELI (Healthy Living Promo)', N'Product', 0.0000, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193001000029', N'Yellowtail Buri Fish Stew with Daikon ', N'Product', 6.7300, 0.0000, N'')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193011010021', N'Butter Chicken Curry', N'Product', 7.2200, 0.0000, N'por/180g')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193011010052', N'Sakura Chicken with Curry Miso and Dried Chilli', N'Product', 0.4900, 0.0000, N'por/5pcs')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193011010058', N'Sage Stuffed Chicken Roulade', N'Product', 2.0800, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193011020020', N'Black Bean Pork with Crunchy Bitter Gourd', N'Product', 1.0900, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193011020024', N'Bacon Meatloaf with Giblet Sauce', N'Product', 0.3100, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193011020025', N'Garlic Pork & Roots Vegetables in Togarashi Sauce', N'Product', 2.3100, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193011020026', N'Inari Pocket, Black Bean Sauce', N'Product', 12.7000, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193011030026', N'Yellowtail Buri Fish Daikon ', N'Product', 6.1000, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193011030029', N'Salmon, Hijiki and Fennel Papillote', N'Product', 7.2700, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193011030030', N'Barramundi with Roasted Green Chilli Capsicum Mayo', N'Product', 0.3200, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193011030031', N'Golden Sesame Crusted Salmon', N'Product', 1.8800, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193011040006', N'Braised Grain Fed Beef Oyster Blade', N'Product', 0.9000, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193011040007', N'Roasted Veal with Berries Compote', N'Product', 3.0300, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193011050053', N'Soy Meatball, Duo Cherry Tomato Stew', N'Product', 3.5200, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193011080004', N'Pork Katsu Donburi', N'Product', 3.0600, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193011080005', N'Cheese Baked Butter Chicken Curry Rice', N'Product', 1.3800, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193022010057', N'Roasted Chicken, Roasted Celeriac, Pear Salad', N'Product', 0.9800, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193022010058', N'Turkey Ham and Baby Potato Salad', N'Product', 1.1300, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193022010059', N'Roasted Chicken Cobb Salad', N'Product', 3.0200, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193022010060', N'Smoked Duck & Sweet Potato Arugula Salad', N'Product', 0.6100, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193022040008', N'Prawn Couscous Salad with Yuzu-sesame Dressing', N'Product', 0.5300, 0.0000, N'por/100g')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193022050052', N'Orecchiette Pasta and Mushroom Salad ', N'Product', 0.3800, 0.0000, N'por/70g')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193022050062', N'Hijiki Black Fungus Salad', N'Product', 0.6600, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193022050068', N'Rosemary Potato Salad ', N'Product', 0.8100, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193022050069', N'New Potato, Bacon and Mushroom Salad', N'Product', 0.7000, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193022050070', N'Hijiki Seaweed, Tofu Salad', N'Product', 0.7500, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193022070005', N'Lime Dill Octopus Summer Stone Fruit Salad', N'Product', 0.4300, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193044010034', N'Strawberry Fraisier', N'Product', 1.2000, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193044010040', N'Sweet Purple Potato Chestnut Roll', N'Product', 0.9700, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193044010043', N'Hazelnut Crunch', N'Product', 0.7700, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193044020001', N'Hokkaido Matcha Soft Serve with Kuromitsu', N'Product', 4.2000, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193044020004', N'Date Pudding with Butterscotch Sauce ', N'Product', 5.1400, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193044020015', N'Raspberry Konnyaku Jelly', N'Product', 1.2300, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193044020016', N'Chocolate Cherry Swiss Roll', N'Product', 1.1100, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193044020017', N'Apple Tart', N'Product', 1.6700, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193044020018', N'Berry Shroom', N'Product', 5.8500, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193044020019', N'Matcha Citrus Tree ', N'Product', 8.0100, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193044020020', N'Chocolate Black Currant Mochi Log', N'Product', 1.2900, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193044020023', N'Chocolate Orange Marmalade Logcake', N'Product', 35.5400, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193044020024', N'Strawberry Fraisier Logcake', N'Product', 30.6100, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193044020025', N'Sakura Strawberry Cheese Tart', N'Product', 0.0000, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193044020026', N'Rose Lychee Mouse ', N'Product', 2.9800, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193044020027', N'Strawberry Hibiscus Tea Cake', N'Product', 0.0000, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193044020028', N'Lemon Yuzu Tart', N'Product', 6.5800, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193044020031', N'Warm Banana Crumble ', N'Product', 1.0000, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193044020032', N'Mango Coconut Panna Cotta with Coconut Tuile ', N'Product', 5.4200, 0.0000, N'por')
GO
INSERT [dbo].[Item] ([ItemNo], [ItemName], [CategoryName], [RetailPrice], [FactoryPrice], [UOM]) VALUES (N'1193066060002', N'Mango Raspberry Yoghurt', N'Product', 2.5500, 0.0000, N'por')
GO
ALTER TABLE [dbo].[RecipeDetail]  WITH CHECK ADD  CONSTRAINT [FK_RecipeDetail_Item] FOREIGN KEY([ItemNo])
REFERENCES [dbo].[Item] ([ItemNo])
GO
ALTER TABLE [dbo].[RecipeDetail] CHECK CONSTRAINT [FK_RecipeDetail_Item]
GO
ALTER TABLE [dbo].[RecipeDetail]  WITH CHECK ADD  CONSTRAINT [FK_RecipeDetail_RecipeHeader] FOREIGN KEY([RecipeHeaderID])
REFERENCES [dbo].[RecipeHeader] ([RecipeHeaderID])
GO
ALTER TABLE [dbo].[RecipeDetail] CHECK CONSTRAINT [FK_RecipeDetail_RecipeHeader]
GO
ALTER TABLE [dbo].[RecipeHeader]  WITH CHECK ADD  CONSTRAINT [FK_RecipeHeader_Item] FOREIGN KEY([ItemNo])
REFERENCES [dbo].[Item] ([ItemNo])
GO
ALTER TABLE [dbo].[RecipeHeader] CHECK CONSTRAINT [FK_RecipeHeader_Item]
GO
ALTER TABLE [dbo].[UOMConversion]  WITH CHECK ADD  CONSTRAINT [FK_UOMConversion_Item] FOREIGN KEY([ItemNo])
REFERENCES [dbo].[Item] ([ItemNo])
GO
ALTER TABLE [dbo].[UOMConversion] CHECK CONSTRAINT [FK_UOMConversion_Item]
GO
