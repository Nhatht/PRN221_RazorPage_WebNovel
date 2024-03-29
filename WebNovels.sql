USE [master]
GO
/****** Object:  Database [WebNovel]    Script Date: 06/03/2024 6:16:21 CH ******/
CREATE DATABASE [WebNovel]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WebNovel', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\WebNovel.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'WebNovel_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\WebNovel_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [WebNovel] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WebNovel].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WebNovel] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WebNovel] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WebNovel] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WebNovel] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WebNovel] SET ARITHABORT OFF 
GO
ALTER DATABASE [WebNovel] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [WebNovel] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WebNovel] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WebNovel] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WebNovel] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WebNovel] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WebNovel] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WebNovel] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WebNovel] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WebNovel] SET  ENABLE_BROKER 
GO
ALTER DATABASE [WebNovel] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WebNovel] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WebNovel] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WebNovel] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WebNovel] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WebNovel] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WebNovel] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WebNovel] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WebNovel] SET  MULTI_USER 
GO
ALTER DATABASE [WebNovel] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WebNovel] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WebNovel] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WebNovel] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [WebNovel] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [WebNovel] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [WebNovel] SET QUERY_STORE = OFF
GO
USE [WebNovel]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 06/03/2024 6:16:21 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Email] [nvarchar](50) NULL,
	[Password] [varchar](50) NULL,
	[Gender] [nvarchar](30) NULL,
	[Role] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genre]    Script Date: 06/03/2024 6:16:21 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genre](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GenreName] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Novel]    Script Date: 06/03/2024 6:16:21 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Novel](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NovelName] [nvarchar](250) NULL,
	[Image] [nvarchar](250) NULL,
	[Content] [nvarchar](max) NULL,
	[AuthorId] [int] NULL,
	[GenreId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([Id], [Name], [Email], [Password], [Gender], [Role]) VALUES (1, N'John Doe', N'john.doe@email.com', N'123', N'Male', N'Author')
INSERT [dbo].[Account] ([Id], [Name], [Email], [Password], [Gender], [Role]) VALUES (2, N'Jane Doe', N'jane.doe@email.com', N'123', N'Female', N'Reader')
INSERT [dbo].[Account] ([Id], [Name], [Email], [Password], [Gender], [Role]) VALUES (3, N'Bob Smith', N'bob.smith@email.com', N'123', N'Male', N'Author')
INSERT [dbo].[Account] ([Id], [Name], [Email], [Password], [Gender], [Role]) VALUES (4, N'Alice Johnson', N'alice@email.com', N'123', N'Female', N'Reader')
INSERT [dbo].[Account] ([Id], [Name], [Email], [Password], [Gender], [Role]) VALUES (5, N'Charlie Brown', N'charlie@email.com', N'123', N'Male', N'Author')
INSERT [dbo].[Account] ([Id], [Name], [Email], [Password], [Gender], [Role]) VALUES (6, N'Eva White', N'eva@email.com', N'123', N'123', N'Reader')
INSERT [dbo].[Account] ([Id], [Name], [Email], [Password], [Gender], [Role]) VALUES (7, N'Michael Black', N'michael@email.com', N'123', N'Male', N'Author')
INSERT [dbo].[Account] ([Id], [Name], [Email], [Password], [Gender], [Role]) VALUES (8, N'Sophie Green', N'sophie@email.com', N'123', N'Female', N'Reader')
INSERT [dbo].[Account] ([Id], [Name], [Email], [Password], [Gender], [Role]) VALUES (9, N'David Gray', N'david@email.com', N'123', N'Male', N'Author')
INSERT [dbo].[Account] ([Id], [Name], [Email], [Password], [Gender], [Role]) VALUES (10, N'Olivia Reed', N'olivia@email.com', N'123', N'Female', N'Reader')
INSERT [dbo].[Account] ([Id], [Name], [Email], [Password], [Gender], [Role]) VALUES (11, N'Hồ Trịnh Nhật', N'nhatht.02@gmail.com', N'123', N'Male', N'Admin')
INSERT [dbo].[Account] ([Id], [Name], [Email], [Password], [Gender], [Role]) VALUES (12, N'Obama', N'Obama@gmail.com', N'123', N'Male', N'Reader')
INSERT [dbo].[Account] ([Id], [Name], [Email], [Password], [Gender], [Role]) VALUES (13, N'Newton', N'Newton@gamil.com', N'123', N'Male', N'Author')
INSERT [dbo].[Account] ([Id], [Name], [Email], [Password], [Gender], [Role]) VALUES (15, N'Le Tien Dat', N'litteomv@gmail.com', N'123', N'Male', N'Reader')
INSERT [dbo].[Account] ([Id], [Name], [Email], [Password], [Gender], [Role]) VALUES (17, N'User', N'user@gmail.com', N'123', N'Male', N'Reader')
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Genre] ON 

INSERT [dbo].[Genre] ([Id], [GenreName]) VALUES (1, N'Tiên Hiệp')
INSERT [dbo].[Genre] ([Id], [GenreName]) VALUES (2, N'Ngôn Tình')
INSERT [dbo].[Genre] ([Id], [GenreName]) VALUES (3, N'Đô Thị')
INSERT [dbo].[Genre] ([Id], [GenreName]) VALUES (4, N'Lịch Sử')
INSERT [dbo].[Genre] ([Id], [GenreName]) VALUES (5, N'Truyện Ma')
INSERT [dbo].[Genre] ([Id], [GenreName]) VALUES (6, N'Huyền Huyễn')
INSERT [dbo].[Genre] ([Id], [GenreName]) VALUES (7, N'Dị Dới')
INSERT [dbo].[Genre] ([Id], [GenreName]) VALUES (8, N'Truyện Ngắn')
INSERT [dbo].[Genre] ([Id], [GenreName]) VALUES (9, N'Tiểu Thuyết')
INSERT [dbo].[Genre] ([Id], [GenreName]) VALUES (10, N'Kiếm Hiệp')
INSERT [dbo].[Genre] ([Id], [GenreName]) VALUES (11, N'Truyện teen')
INSERT [dbo].[Genre] ([Id], [GenreName]) VALUES (12, N'Quân Sự')
INSERT [dbo].[Genre] ([Id], [GenreName]) VALUES (13, N'Xuyên Không')
INSERT [dbo].[Genre] ([Id], [GenreName]) VALUES (14, N'Trinh Thám')
INSERT [dbo].[Genre] ([Id], [GenreName]) VALUES (15, N'Truyện Cười')
SET IDENTITY_INSERT [dbo].[Genre] OFF
GO
SET IDENTITY_INSERT [dbo].[Novel] ON 

INSERT [dbo].[Novel] ([Id], [NovelName], [Image], [Content], [AuthorId], [GenreId]) VALUES (1, N'LINH VỰC 2', N'http://res.cloudinary.com/dzljxqtv9/image/upload/v1709721565/g2kq2kfi0mss0n8qlint.png', N'<p>S&aacute;ng sớm khi trời vừa mới tờ mờ s&aacute;ng, thiếu ni&ecirc;n Tần Liệt đờ đẫn rời giường, sau khi rửa mặt chải đầu qua loa, hắn lập tức đi về ph&iacute;a Lăng Gia.<br />
<br />
Tần Liệt mặc &aacute;o tang vải th&ocirc;, d&aacute;ng người gầy yếu, bộ d&aacute;ng cũng coi như l&agrave; c&oacute; ch&uacute;t thanh t&uacute;, nhưng &aacute;nh mắt th&igrave; mờ mờ ảo ảo kh&ocirc;ng c&oacute; ch&uacute;t thần th&aacute;i n&agrave;o tạo cho người ngo&agrave;i c&oacute; cảm gi&aacute;c hắn kh&ocirc;ng hề c&oacute; linh hồn.<br />
<br />
Ở ven đường c&oacute; kh&ocirc;ng &iacute;t v&otilde; giả thanh ni&ecirc;n ở trấn Lăng Gia đ&atilde; rời giường từ sớm. Rất nhiều người thấy Tần Liệt th&igrave; đều mỉm cười với &yacute; tốt.<br />
<br />
&quot;Tần Liệt dậy sớm thế!&quot;<br />
<br />
Lăng Phong thấy Tần Liệt đi v&agrave;o th&igrave; nhếch miệng cười, đưa tay vẫy một c&aacute;i.<br />
<br />
Đ&aacute;ng tiếc, Tần Liệt như kh&ocirc;ng nghe thấy tiếng người ngo&agrave;i, vẻ mặt vẫn đờ đẫn, bước ch&acirc;n vẫn kh&ocirc;ng dừng lại, l&aacute;ch người qua Lăng Phong rồi lại đi tiếp về ph&iacute;a trước.<br />
<br />
&quot;Phong đại ca, huynh thừa hơi n&oacute;i với kẻ ngu l&agrave;m g&igrave;? Đ&atilde; biết hắn sẽ kh&ocirc;ng bao giờ đ&aacute;p lời, vậy m&agrave; h&ocirc;m n&agrave;o huynh cũng ch&agrave;o hỏi l&uacute;c s&aacute;ng với hắn l&agrave;m g&igrave;?&quot; Lăng Dĩnh mặc trang phục s&aacute;ng v&agrave;ng, d&aacute;ng người đẫy đ&agrave;, mười t&aacute;m đ&ocirc;i mươi, lớn l&ecirc;n c&oacute; ch&uacute;t xinh đẹp, bộ ngực cao cao nh&ocirc; l&ecirc;n l&agrave;m người kh&aacute;c kh&ocirc;ng khỏi ho&agrave;i niệm. N&agrave;ng khinh miệt nh&igrave;n về ph&iacute;a Tần Liệt, hờ hững bu&ocirc;ng ra hai c&acirc;u.<br />
<br />
Mấy t&ecirc;n nam nữ Lăng gia ở b&ecirc;n cạnh nghe được lời của Lăng Dĩnh th&igrave; vẫn mang vẻ mặt lạnh l&ugrave;ng, l&ograve;ng sinh ch&aacute;n gh&eacute;t.<br />
<br />
Lăng Dĩnh hừ một tiếng, coi như kh&ocirc;ng nh&igrave;n thấy mọi người xung quanh, ưỡn bộ ngực l&ecirc;n, cười với vẻ khinh thường.<br />
<br />
Phần lớn người trong đ&aacute;m nam nữ kia đều chỉ c&oacute; cảnh giới luyện thể cấp bốn năm n&ecirc;n căn bản kh&ocirc;ng được một người luyện thể cấp s&aacute;u như Lăng Dĩnh để v&agrave;o mắt.<br />
<br />
Trong mắt n&agrave;ng chỉ c&oacute; Lăng Phong đạt luyện thể cấp bảy m&agrave; th&ocirc;i.<br />
<br />
Lăng Phong hơi nh&iacute;u m&agrave;y: &quot;Tiểu Dĩnh, ngươi tới trấn Lăng Gia chưa được bao l&acirc;u, kh&ocirc;ng chịu &acirc;n huệ của &ocirc;ng nội Tần Liệt cho n&ecirc;n c&aacute;i nh&igrave;n c&oacute; ch&uacute;t hơi kh&aacute;c. Ta kh&ocirc;ng tr&aacute;ch ngươi. Nhưng những binh sĩ Lăng gia ch&uacute;ng ta, l&uacute;c &ocirc;ng nội Tần Sơn c&ograve;n khỏe mạnh, đ&atilde; được gi&uacute;p kh&ocirc;ng &iacute;t rồi. Cho d&ugrave; hai năm trước &ocirc;ng nội Tần Sơn mất th&igrave; ơn gi&uacute;p đỡ của &ocirc;ng ấy vẫn khắc s&acirc;u trong t&acirc;m khảm ch&uacute;ng ta. Hi vọng ngươi c&oacute; thể nể mặt ch&uacute;ng ta m&agrave; t&ocirc;n trọng Tần Liệt.&quot;<br />
<br />
Lăng Dĩnh hơi ng&acirc;y ra: &quot;&Ocirc;ng nội của hắn rất lợi hại sao?&quot;<br />
<br />
&quot;&Ocirc;ng nội Tần Sơn l&agrave; luyện kh&iacute; sư!&quot; Lăng Phong qu&aacute;t nhẹ.<br />
<br />
Lăng Dinh cảm thấy hơi k&iacute;nh nể. &quot;C&oacute; Ph&agrave;m cấp, Huyền cấp, Địa cấp, Thi&ecirc;n cấp, Thần cấp. Mỗi cấp lại ph&acirc;n ra l&agrave;m bảy loại. &Ocirc;ng ta l&agrave; luyện kh&iacute; sư loại n&agrave;o? &Ocirc;ng ấy luyện linh kh&iacute; cho Lăng gia sao?&quot;<br />
<br />
&quot;Kh&ocirc;ng đ&acirc;u.&quot; Lăng Phong lắc đầu. &quot;&Ocirc;ng nội Tần Sơn chỉ biết chữa linh kh&iacute; Ph&agrave;m cấp loại năm trở xuống th&ocirc;i.&quot;<br />
<br />
&quot;&Acirc;y da, dọa người ta &agrave;. Ta c&ograve;n tưởng lợi hại thế n&agrave;o, h&oacute;a ra cũng chẳng c&oacute; g&igrave; lắm.&quot; Lăng Dĩnh vỗ vỗ bộ ngực đẫy đ&agrave;, cười với vẻ hơi khoa trương.<br />
<br />
&quot;Đối với ch&uacute;ng ta th&igrave; đ&oacute; đ&atilde; l&agrave; cực kỳ lợi hại rồi.&quot; Lăng Phong mang vẻ mặt kh&ocirc;ng đổi, n&oacute;i: &quot;Năm năm trước, &ocirc;ng nội Tần Sơn dẫn Tần Liệt về trấn Lăng Gia ch&uacute;ng ta, t&igrave;m gia chủ ch&uacute;ng ta để trao đổi. D&ugrave;ng khả năng chữa linh kh&iacute; Ph&agrave;m cấp để đổi lại quyền khai th&aacute;c mỏ quặng phong ph&uacute; ở Dược Sơn v&agrave; rồi c&ugrave;ng Tần Liệt ở lại trấn Lăng Gia.&quot;<br />
<br />
&quot;Trong ba năm tiếp theo, sau khi &ocirc;ng nội Tần Sơn dẫn Tần Liệt v&agrave;o trấn Lăng Gia c&ugrave;ng mỏ quặng Dược Sơn, bất kể linh kh&iacute; Ph&agrave;m cấp dưới loại năm, d&ugrave; hỏng thế n&agrave;o đều được &ocirc;ng nội Tần Sơn phụ tr&aacute;ch chữa. Chỉ cần kh&ocirc;ng qu&aacute; Ph&agrave;m cấp loại năm th&igrave; d&ugrave; linh kh&iacute; c&oacute; n&aacute;t tới mức n&agrave;o cũng đều được kh&ocirc;i phục về nguy&ecirc;n dạng, uy lực kh&ocirc;ng hề suy giảm.&quot;<br />
<br />
&quot;B&ugrave;ng!&quot;<br />
<br />
Một h&agrave;ng lửa ch&aacute;y l&ecirc;n từ cổ tay Lăng Phong. C&aacute;i v&ograve;ng đang đeo tr&ecirc;n tay hắn bỗng nhi&ecirc;n đỏ rực l&ecirc;n.<br />
<br />
Bỗng chốc, v&ograve;ng tr&ograve;n đỏ đậm kia biến th&agrave;nh một c&acirc;y ch&ugrave;y b&ugrave;ng ch&aacute;y d&agrave;i nửa c&aacute;nh tay. Cả vật thể m&agrave;u đỏ sậm, v&ocirc; số &aacute;nh lửa như những h&igrave;nh xăm quấn lấy c&aacute;i ch&ugrave;y, tỏa ra từng luồng nhiệt n&oacute;ng ch&aacute;y.<br />
<br />
&quot;Hỏa V&acirc;n Ch&ugrave;y của ta l&agrave; linh kh&iacute; Ph&agrave;m cấp loại hai, l&agrave; mạng sống của ta. Ba năm trước, trong d&atilde;y n&uacute;i cực lạnh, ta bị linh th&uacute; Băng Ph&aacute;ch M&atilde;ng nhả kh&iacute; lạnh v&agrave;o tận trong cơ thể. Hỏa V&acirc;n Ch&ugrave;y đ&atilde; gi&uacute;p ta chống lại kh&iacute; lạnh gi&uacute;p ta may mắn sống s&oacute;t. Nhưng Hỏa V&acirc;n Ch&ugrave;y lại tổn hại nghi&ecirc;m trọng. Nếu kh&ocirc;ng phải &ocirc;ng ngội Tần Sơn gi&uacute;p ta chữa trị th&igrave; e l&agrave; Hỏa V&acirc;n Ch&ugrave;y đ&atilde; kh&ocirc;ng c&ograve;n nữa rồi.&quot;<br />
<br />
&quot;Những người hỏng linh kh&iacute; như ta ở Lăng gia c&oacute; rất nhiều. May l&agrave; c&oacute; &ocirc;ng nội Tần Sơn n&ecirc;n tất cả những linh kh&iacute; n&agrave;y đều được chữa trị. Bằng kh&ocirc;ng tổn thất sẽ cực kỳ lớn.&quot; Lăng Phong nh&igrave;n về ph&iacute;a Tần Liệt ở xa xa, cảm th&aacute;n n&oacute;i.<br />
<br />
&quot;Nhung &ocirc;ng ấy đ&atilde; chết bệnh c&aacute;ch đ&acirc;y hai năm rồi.&quot; Lăng Dĩnh kinh ngạc n&oacute;i.<br />
<br />
&quot;Người Lăng gia c&oacute; ơn ắt phải b&aacute;o! Thật ra Tần Liệt cũng cực kỳ đ&aacute;ng thương. L&uacute;c mười tuổi theo &ocirc;ng nội hắn đi tới trấn Lăng Gia, hắn cũng vẫn bộ d&aacute;ng thế n&agrave;y. L&uacute;c &ocirc;ng nội Tần Sơn c&ograve;n sống th&igrave; c&ograve;n c&oacute; nhiều người quan t&acirc;m tới hắn. Nhưng sau khi &ocirc;ng nội mất đi, hai năm qua...&Agrave;i.&quot; Lăng Phong ngừng lại, kh&ocirc;ng khỏi thổn thức thở d&agrave;i.<br />
<br />
&quot;Nhị tiểu thư chẳng phải c&ograve;n đ&aacute;ng thương hơn sao? Nghe n&oacute;i...gia chủ từng đồng &yacute; với Tần Sơn, tới th&aacute;ng sau khi Nhị tiểu thư tr&ograve;n mười lăm tuổi l&agrave; sẽ cho n&agrave;ng đ&iacute;nh h&ocirc;n với Tần Liệt c&ograve;n g&igrave;? Ngươi sống ở trấn Lăng Gia n&ecirc;n chắc cũng phải biết việc đ&oacute; chứ?&quot; Lăng Dĩnh hạ giọng, đi tới b&ecirc;n cạnh Lăng Phong, n&oacute;i nhỏ: &quot;L&agrave;m sao gia chủ c&oacute; thể đồng &yacute; cho Tần Liệt đ&iacute;nh h&ocirc;n với Nhị tiểu thư đ&acirc;y? L&agrave;m thế c&oacute; kh&aacute;c n&agrave;o đưa Nhị tiểu thư v&agrave;o trong hố lửa?&quot;<br />
<br />
&quot;Ta cũng kh&ocirc;ng r&otilde; lắm.&quot; Lăng Phong cũng kh&ocirc;ng biết nhiều về việc n&agrave;y.<br />
<br />
Dưới con mắt của hắn, cho d&ugrave; gia chủ từng ước định với Tần Sơn nhưng Tần Sơn đ&atilde; chết n&ecirc;n ước định kia c&oacute; lẽ cũng kh&ocirc;ng c&ograve;n mấy gi&aacute; trị.<br />
<br />
...<br />
<br />
Lăng gia.<br />
<br />
Ba c&aacute;i b&agrave;n gỗ vu&ocirc;ng gh&eacute;p th&agrave;nh một c&aacute;i b&agrave;n ăn d&agrave;i. Tr&ecirc;n b&agrave;n b&agrave;y đầy b&aacute;nh bao, ch&aacute;o ăn s&aacute;ng. Gia chủ Lăng gia, Lăng Thừa Nghiệp ngồi ngay ngắn ở ghế chủ vị. Hai b&ecirc;n l&agrave; em d&acirc;u Đỗ Kiều Lan c&ugrave;ng tam đệ Lăng Thừa Ch&iacute;. B&ecirc;n cạnh Đỗ Thừa Lan l&agrave; hai đứa con Đỗ Hằng v&agrave; Đỗ Phi. B&ecirc;n cạnh Lăng Thừa Ch&iacute; l&agrave; hai thiếu nữ, cũng l&agrave; con g&aacute;i hắn, c&oacute; t&ecirc;n l&agrave; Lăng Ngữ Thơ v&agrave; Lăng Huy&ecirc;n Huy&ecirc;n.<br />
<br />
Ba huynh đệ Lăng gia, đại ca l&agrave; Lăng Thừa Nghiệp, thứ hai l&agrave; Lăng Thừa Huy, thứ ba l&agrave; Lăng Thừa Ch&iacute;. Mười năm trước, Lăng Thừa Huy trong l&uacute;c đột ph&aacute; cảnh giới Khai Nguy&ecirc;n đ&atilde; bị tẩu hỏa nhập hoa, bạo thể m&agrave; chết. Vợ l&agrave; Đỗ Kiều Lan dẫn hai đứa con l&agrave; Đỗ Hằng, Đỗ Phi ở lại Lăng gia, mượn d&ugrave;ng t&agrave;i nguy&ecirc;n của Lăng gia để tiếp tục tu luyện.<br />
<br />
Trong trời đất linh vực n&agrave;y c&oacute; hải dương m&ecirc;nh m&ocirc;ng v&ocirc; tận. Tr&ecirc;n hải dương c&oacute; rất nhiều đại lục. Tr&ecirc;n đại lục c&oacute; đủ loại chủng tộc sinh hoạt. Ở đ&acirc;u bọn họ cũng đều d&ugrave;ng linh kh&iacute; để r&egrave;n luyện bản th&acirc;n, vĩnh viễn truy t&igrave;m huyền diệu cuối c&ugrave;ng trong trời đất.<br />
<br />
Ở trong n&agrave;y, kẻ mạnh như ngọn n&uacute;i cao, nguy nga sừng sững. C&oacute; linh kh&iacute; đ&aacute;ng sợ tới mức hủy thi&ecirc;n diệt địa. C&oacute; thế lực v&otilde; giả đủ loại đẳng cấp bao tr&ugrave;m như mạng nhện tới từng hang c&ugrave;ng ng&otilde; hẻm!<br />
<br />
Ở trong n&agrave;y, chẳng những v&otilde; giả v&agrave; linh kh&iacute; chia cấp bậc ra m&agrave; tới gia tộc, t&ocirc;ng ph&aacute;i, thương hội tạo n&ecirc;n những mối quan hệ chằng ch&eacute;o phức tạp cũng c&oacute; ph&acirc;n chia cấp độ giai cấp chặt chẽ hẳn hoi.<br />
<br />
V&otilde; đạo tu luyện trong linh vực chia l&agrave;m mười cảnh giới: Luyện Thể, Khai Nguy&ecirc;n, Vạn Tượng, Th&ocirc;ng U, Như &Yacute;, Tho&aacute;t Ph&aacute;, Niết B&agrave;n, Bất Diệt, Hư Kh&ocirc;ng, Vực Thủy. Từng cảnh giới lại chia l&agrave;m từng cấp. Cấp lại chia l&agrave;m tiền kỳ, trung kỳ, hậu kỳ.<br />
<br />
Linh kh&iacute; thần kỳ c&ugrave;ng luyện kh&iacute; sư cũng được chia ra l&agrave;m c&aacute;c cấp bậc: Ph&agrave;m cấp, Huyền cấp, Địa cấp, Thi&ecirc;n cấp, Thần cấp. Mỗi một cấp lại chia ra l&agrave;m bảy loại.<br />
<br />
Kỳ lạ ch&iacute;nh l&agrave; tới gia tộc, t&ocirc;ng ph&aacute;i c&ugrave;ng c&aacute;c thế lực cũng chia ra: cấp Thanh Thạch, cấp Hắc Thiết, cấp X&iacute;ch Đồng, cấp Bạch Ng&acirc;n, cấp Ho&agrave;ng Kim. Th&ocirc;ng thường tất cả đều bị cấp Ho&agrave;ng Kim chi phối.<br />
<br />
Trong đ&oacute; thế lực cấp Thanh Thạch l&agrave; thấp nhất, l&agrave; thế lực cơ bản nhất của Linh Vực. Số lượng nhiều như c&aacute;t trong sa mạc, kh&ocirc;ng thể n&agrave;o thống k&ecirc; hết được. Tất cả thế lực đ&oacute; đều phải dựa lưng v&agrave;o c&aacute;c thế lực lớn hơn để tiếp tục tồn tại tu luyện, bị người kh&aacute;c tr&agrave; đạp l&ecirc;n t&ocirc;n nghi&ecirc;m đủ kiểu.<br />
<br />
C&ograve;n thế lực cấp Ho&agrave;ng Kim ch&iacute;nh l&agrave; tồn tại cấp cao nhất. Bọn họ chẳng những ngồi tr&ecirc;n đầu v&otilde; giả trong trời đất n&agrave;y, c&oacute; linh kh&iacute; thần kỳ nhất, nhiều mỏ quặng nh&acirc;t, c&oacute; b&iacute; cảnh cấm địa huyền diệu nhất m&agrave; c&ograve;n thống lĩnh to&agrave;n bộ thế lực cấp Bạch Ng&acirc;n, X&iacute;ch Đồng, Hắc Thiết, Thanh Thạch.<br />
<br />
Một hiệu lệnh chuyển xuống l&agrave; c&oacute; thể l&agrave;m trời đất biến đổi, l&agrave;m s&ocirc;ng n&uacute;i bị m&aacute;u nhuộm đỏ, l&agrave;m h&agrave;ng tỉ sinh linh h&oacute;a th&agrave;nh hư v&ocirc;!<br />
<br />
M&agrave; Lăng gia c&ograve;n chưa đạt tới cấp Thanh Thạch. Lăng gia c&ugrave;ng mấy gia tộc th&acirc;n quen quanh v&ugrave;ng đều dựa v&agrave;o Tinh V&acirc;n C&aacute;c th&agrave;nh Băng Nham - thế lực cấp Thanh Thạch. H&agrave;ng năm họ phải nộp đủ cung phụng cho Tinh V&acirc;n C&aacute;c th&igrave; mới được Tinh V&acirc;n C&aacute;c che chở, nhờ đ&oacute; trấn Lăng gia mới c&oacute; thể sống y&ecirc;n ổn được.<br />
<br />
&quot;Bộp bộp!&quot;<br />
<br />
Tiếng bước ch&acirc;n từ xa truyền tới. Kh&ocirc;ng l&acirc;u sau, Tần Liệt đ&atilde; xuất hiện đ&uacute;ng giờ, lấy đồ ăn rồi đờ đẫn ngồi xuống b&agrave;n ăn đối diện với Tần Thừa Nghiệp, bưng b&aacute;t l&ecirc;n bắt đầu ăn.<br />
<br />
Năm năm qua, mỗi s&aacute;ng sớm, Tần Liệt đều đ&uacute;ng giờ tới ăn cơm. Cho d&ugrave; trong mắt người ở trấn Lăng Gia, Tần Liệt chỉ l&agrave; t&ecirc;n ngu. Nhưng th&oacute;i quen d&ugrave;ng cơm đ&uacute;ng giờ của hắn chưa bao giờ đổi. Ba năm sau khi tới đ&acirc;y, hắn vẫn thế, m&agrave; sau hai năm &ocirc;ng nội Tần Sơn qua đời, hắn cũng vẫn vậy.<br />
<br />
Mỗi s&aacute;ng sớm, sau khi ăn cơm xong, Tần Liệt lại tiến thẳng v&agrave;o Dược Sơn sau trấn Lăng gia. Hắn đi thẳng v&agrave;o mỏ quặng trong n&uacute;i tới l&uacute;c tối mịt mới m&ograve; về trấn Lăng gia, d&ugrave;ng cơm chiều c&ugrave;ng mọi người rồi sau đ&oacute; lại lẻ loi một th&acirc;n một m&igrave;nh về chỗ ở nghỉ ngơi.<br />
<br />
Ng&agrave;y qua ng&agrave;y, từng năm tr&ocirc;i qua, hắn cứ sống như thế. Cuộc sống chưa hề c&oacute; ch&uacute;t biến đổi n&agrave;o.<br />
<br />
Năm năm qua, kh&ocirc;ng ai biết hắn v&agrave; &ocirc;ng nội hắn đ&atilde; bỏ ra bao nhi&ecirc;u thời gian v&agrave;o mỏ quặng, l&agrave;m g&igrave; trong đ&oacute;. Tới cả gia chủ Lăng Thừa Nghiệp cũng m&ugrave; tịt.<br />
<br />
&quot;H&agrave;!&quot; Bỗng nhi&ecirc;n Đỗ Phi kh&ocirc;ng chịu nổi cười x&ograve;a một tiếng, nghi&ecirc;ng đầu qua liếc nh&igrave;n Tần Liệt, n&oacute;i giọng mỉa mai tr&agrave;o ph&uacute;ng: &quot;Chồng tương lai của em g&aacute;i ta ắn kh&aacute; l&agrave; được. Th&aacute;ng sau, Huy&ecirc;n Huy&ecirc;n đ&iacute;nh h&ocirc;n với hắn th&igrave; cũng chẳng kh&aacute;c n&agrave;o nu&ocirc;i một con ch&oacute; ngoan trong nh&agrave;.&quot;<br />
<br />
Đỗ Phi n&oacute;i xong th&igrave; cười một tiếng đầy qu&aacute;i dị về ph&iacute;a Lăng Huy&ecirc;n Huy&ecirc;n.<br />
<br />
Lăng Huy&ecirc;n Huy&ecirc;n mặc &aacute;o gi&aacute;p m&agrave;u đỏ lửa, d&aacute;ng người lả lướt vẫn lộ ra đ&ocirc;i ch&uacute;t, khu&ocirc;n mặt nhỏ nhắn xinh đẹp tuyệt trần, đ&ocirc;i mắt lanh lợi th&ocirc;ng minh. Năm n&agrave;ng mười tuổi, t&ecirc;n của n&agrave;ng đ&atilde; truyền khắp gần xa.<br />
<br />
&quot;B&ugrave;ng!&quot;<br />
<br />
Lăng Huy&ecirc;n Huy&ecirc;n đập c&aacute;nh tay trắng như ngọc xuống b&agrave;n, b&aacute;t cơm trước mặt n&agrave;ng bắn l&ecirc;n, nửa b&aacute;n ch&aacute;o lo&atilde;ng bay thẳng về ph&iacute;a một nh&agrave; ba người Đỗ Kiều Lan. Tuy Đỗ Kiều Lan, Đỗ Phi, Đỗ Hằng phản ứng cực nhanh nhưng vẫn bị b&aacute;t ch&aacute;o l&agrave;m cho chật vật.<br />
<br />
&quot;Ta c&oacute; chết cũng sẽ kh&ocirc;ng đ&iacute;nh h&ocirc;n với hắn!&quot;<br />
<br />
Kh&ocirc;ng đợi Đỗ Kiều Lan kịp tức giận, Lăng Huy&ecirc;n Huy&ecirc;n đ&atilde; đứng phắt dậy, kh&ocirc;ng th&egrave;m để &yacute; sắc mặt cha n&agrave;ng l&agrave; Lăng Thừa Nghiệp kh&oacute; coi thế n&agrave;o. N&agrave;ng cứ thể bừng bừng đi thẳng ra ngo&agrave;i ph&ograve;ng.<br />
<br />
Tới trước cửa gỗ, đ&ocirc;i tay nhỏ b&eacute; của n&agrave;ng l&oacute;e l&ecirc;n &aacute;nh lửa l&agrave;m cả c&aacute;nh cửa gỗ lớn đột nhi&ecirc;n nổ tung, &iacute;t nhất mười mảnh gỗ vụn bắn xuống đất. Th&acirc;n h&igrave;nh lả lướt của Lăng Huy&ecirc;n Huy&ecirc;n biến mất.<br />
<br />
Lăng Thừa Nghiệp vừa mới chuẩn bị tức giận mắng mỏ th&igrave; bỗng nhi&ecirc;n ngẩn cả người ra. Hắn nh&igrave;n về mảnh gỗ rơi tr&ecirc;n đất, &aacute;nh mắt như đang ngẫm nghĩ g&igrave; đ&oacute;.<br />
<br />
&quot;Đại ca! Khi n&agrave;o Huy&ecirc;n Huy&ecirc;n bước v&agrave;o luyện thể cấp bảy thế? Linh lực tr&agrave;n ra ngo&agrave;i! Đ&acirc;y r&otilde; r&agrave;ng l&agrave; dấu hiệu của luyện thể cấp bảy đ&oacute;!&quot; Lăng Thừa Ch&iacute; hưng phấn vỗ l&ecirc;n b&agrave;n, vẻ mặt vui mừng. &quot;Mười lăm tuổi bước v&agrave;o luyện thể cấp bảy! Thi&ecirc;n ph&uacute; của Huy&ecirc;n Huy&ecirc;n c&ograve;n kinh người hơn cả Ngữ Thi! Với đ&agrave; n&agrave;y, nhất định trước hai mươi tuổi, n&oacute; sẽ c&oacute; thể bước v&agrave;o cảnh giới Khai Nguy&ecirc;n. Khai Nguy&ecirc;n...Sau n&agrave;y nhất định n&oacute; sẽ được Tinh V&acirc;n C&aacute;c coi trọng.&quot;<br />
<br />
Lăng Thừa Nghiệp kh&ocirc;ng nhịn được k&iacute;ch động, ho nhẹ một tiếng, hỏi Lăng Ngữ Thi. &quot;Huy&ecirc;n Huy&ecirc;n đột ph&aacute; từ bao giờ vậy?&quot;<br />
<br />
Lăng Ngữ Thi mặc v&aacute;y d&agrave;i m&agrave;u xanh biếc, b&uacute;i t&oacute;c d&agrave;i vắt qua vai, vẻ mặt sắc xảo như đ&oacute;a U Lan, da thịt trắng như ngọc, cho d&ugrave; đang ngồi nhưng vẫn c&oacute; d&aacute;ng vẻ m&ecirc; người, l&agrave;m cho Đỗ Hằng b&ecirc;n cạnh phải n&oacute;ng cả con mắt, &aacute;nh mắt chưa bao giờ dời khỏi n&agrave;ng.<br />
<br />
&quot;Tiểu muội mới đột ph&aacute; c&aacute;ch đ&acirc;y bảy h&ocirc;m. N&oacute; vốn cực kỳ vui mừng muốn b&aacute;o tin vui n&agrave;y cho cha. Kh&ocirc;ng ngờ...&quot; Lăng Ngữ Thi ngập ngừng rồi thở d&agrave;i: &quot;Kh&ocirc;ng ngờ hai ng&agrave;y trước biết cha đ&atilde; sớm đồng &yacute; &ocirc;ng nội Tần Sơn, ng&agrave;y n&agrave;ng sinh nhật cũng l&agrave; l&uacute;c đ&iacute;nh h&ocirc;n với Tần Liệt. Cho n&ecirc;n...&quot;<br />
<br />
Lăng Ngữ Thi kh&ocirc;ng n&oacute;i g&igrave; th&ecirc;m. Lăng Thừa Nghiệp đ&atilde; đo&aacute;n ra nguy&ecirc;n do của việc n&agrave;y, vẻ mặt trở n&ecirc;n bất đắc dĩ.<br />
<br />
&quot;Ph&ugrave;!&quot;<br />
<br />
Nhưng đ&uacute;ng l&uacute;c n&agrave;y, Tần Liệt từ l&uacute;c đi v&agrave;o vẫn mải miết ăn như kh&ocirc;ng nh&igrave;n thấy ai bỗng nhi&ecirc;n đứng l&ecirc;n như thể từ đầu tới cuối kh&ocirc;ng nghe thấy mọi người xung đột, n&oacute;i g&igrave;. Hắn vẫn như mọi ng&agrave;y, ăn no l&agrave; về.<br />
<br />
Hắn lập tức đi về ph&iacute;a Dược Sơn ph&iacute;a sau trấn Lăng Gia.<br />
<br />
&quot;Đại ca, ta c&oacute; mấy c&acirc;u muốn n&oacute;i cho m&igrave;nh huynh.&quot; Bỗng nhi&ecirc;n Lăng Thừa Ch&iacute; đứng dậy, nh&aacute;y mắt ra dấu với đại ca của hắn sau khi Tần Liệt rời đi.<br />
<br />
Lăng Thừa Nghiệp như c&oacute; điều g&igrave; đ&oacute; suy tư n&ecirc;n đi theo.<br />
<br />
Tr&ecirc;n đường n&uacute;i gập ghềnh, hai huynh đệ Lăng Thừa Nghiệp, Lăng Thừa Ch&iacute; đứng c&aacute;ch nhau một đoạn, c&ugrave;ng nhau đi tới Dược Sơn. &Aacute;nh mắt của hai người đều để &yacute; tới Tần Liệt, thầm n&oacute;i khẽ với nhau.<br />
<br />
&quot;Năm năm qua, từ l&uacute;c Tần Sơn đưa Tần Liệt tới đ&acirc;y, nửa ng&agrave;y hắn đều ở trong mỏ quặng. Đại ca, huynh kh&ocirc;ng thấy hiếu kỳ xem bọn họ l&agrave;m g&igrave; trong mỏ quặng? Ph&aacute;t hiện ra c&aacute;i g&igrave; sao?&quot;<br />
<br />
&quot;Đương nhi&ecirc;n l&agrave; c&oacute; t&ograve; m&ograve;. Nhưng ta đ&atilde; c&oacute; ước định với Tần Sơn, n&ecirc;n sẽ kh&ocirc;ng thể v&ocirc; cớ v&agrave;o trong mỏ quặng được. Hơn nữa, Lăng gia ch&uacute;ng ta đ&atilde; sớm khai khản mỏ quặng Dược Sơn nhiều năm, gần như l&agrave; kh&ocirc;ng hề ph&aacute;t hiện ra c&oacute; linh thạch gi&aacute; trị n&agrave;o. Bằng kh&ocirc;ng th&igrave; ta sao c&oacute; thể đồng &yacute; nhường mỏ quặng cho &ocirc;ng nội hắn?&quot;<br />
<br />
&quot;Rốt cuộc việc h&ocirc;n sự giữa Huy&ecirc;n Huy&ecirc;n v&agrave; Tần Liệt l&agrave; chuyện g&igrave;? Đại ca, ta biết huynh sẽ kh&ocirc;ng bao giờ lấy hạnh ph&uacute;c cả đời của Huy&ecirc;n Huy&ecirc;n để hy sinh. Vậy th&igrave; v&igrave; c&aacute;i g&igrave; đ&acirc;y?&quot;<br />
<br />
&quot;Trước khi Tần Sơn qua đời c&oacute; muốn ta đồng &yacute; việc n&agrave;y. Ta thấy mấy năm nay hắn đ&atilde; gi&uacute;p ch&uacute;ng ta rất nhiều n&ecirc;n cũng phải cắn răng đồng &yacute;. C&oacute; điều, kh&ocirc;ng phải như ngươi nghĩ đ&acirc;u. Hẳn l&agrave; hắn chỉ hi vọng sau khi qua đời, Tần Liệt vẫn c&oacute; thể được ở lại Lăng gia ch&uacute;ng ta m&agrave; th&ocirc;i.&quot;<br />
<br />
&quot;Thế như thế n&agrave;o đ&acirc;y?&quot;<br />
<br />
&quot;Cũng chỉ l&agrave; đ&iacute;nh h&ocirc;n m&agrave; th&ocirc;i. Tần Liệt v&agrave; Huy&ecirc;n Huy&ecirc;n đều mười lăm tuổi. Hắn chỉ nhờ Lăng gia ch&uacute;ng ta gi&uacute;p đỡ Tần Liệt tới mười bảy tuổi. Khi Tần Liệt mười t&aacute;m tuổi, bất kỳ b&ecirc;n n&agrave;o dều c&oacute; thể tự &yacute; cởi bỏ h&ocirc;n ước. H&ocirc;n ước n&agrave;y l&agrave; do hắn hi vọng trong mấy năm Tần Liệt ở Lăng gia, c&oacute; th&acirc;n phận con rể th&igrave; người ở Lăng gia sẽ kh&ocirc;ng d&aacute;m l&agrave;m c&agrave;n với Tần Liệt chứ kh&ocirc;ng c&oacute; việc g&igrave; kh&aacute;c cả.&quot;<br />
<br />
&quot;Y&ecirc;n t&acirc;m đi. Hiện giờ Huy&ecirc;n Huy&ecirc;n đ&atilde; đột ph&aacute; tới luyện thể cấp bảy, sau n&agrave;y nhất định sẽ tiến v&agrave;o Tinh V&acirc;n C&aacute;c. Dĩ nhi&ecirc;n ta sẽ kh&ocirc;ng thể để Tần Liệt ảnh hưởng tới tiền đồ của n&oacute;. Tới l&uacute;c đ&oacute;, ta sẽ lập tức hủy bỏ h&ocirc;n ước.&quot;<br />
<br />
&quot;H&oacute;a ra l&agrave; như vậy.&quot; Lăng Thừa Ch&iacute; gật gật đầu, hơi trầm ng&acirc;m một ch&uacute;t rồi n&oacute;i: &quot;Đại ca, ta c&oacute; c&acirc;u n&agrave;y kh&ocirc;ng biết c&oacute; n&ecirc;n n&oacute;i hay kh&ocirc;ng. &Agrave;i...&quot;<br />
<br />
&quot;C&oacute; g&igrave; cứ n&oacute;i đi!&quot; Gia chủ Lăng gia nh&iacute;u m&agrave;y qu&aacute;t.<br />
<br />
&quot;Dựa theo lời của huynh th&igrave; việc đ&iacute;nh h&ocirc;n cũng chỉ l&agrave; h&igrave;nh thức m&agrave; th&ocirc;i chứ kh&ocirc;ng nhất định phải để Tần Liệt đ&iacute;nh h&ocirc;n với Huy&ecirc;n Huy&ecirc;n. Hay l&agrave; cho hắn đ&iacute;nh h&ocirc;n với Ngữ Thi cũng được m&agrave;? Ngữ Thi lớn hơn Tần Liệt c&oacute; hai tuổi n&ecirc;n chắc cũng kh&ocirc;ng c&oacute; vấn đề g&igrave;.&quot; Lăng Thừa Ch&iacute; hỏi d&ograve;.<br />
<br />
Sắc mặt gia chủ Lăng gia bỗng nhi&ecirc;n trầm xuống.<br />
<br />
&quot;Đại ca, đại tẩu đ&atilde; đi sớ. Ta biết huynh y&ecirc;u thương Ngữ Thi như Huy&ecirc;n Huy&ecirc;n. Ta cũng vậy.&quot; Lăng Thừa Ch&iacute; cẩn thận dung từ, n&oacute;i với vẻ th&agrave;nh khẩn: &quot;Nhưng cho d&ugrave; l&agrave; đ&iacute;nh h&ocirc;n th&igrave; cũng sẽ ảnh hưởng tới thanh danh của con g&aacute;i. Năm nay Huy&ecirc;n Huy&ecirc;n mới c&oacute; mười lăm tuổi m&agrave; đ&atilde; đạt tới luyện thể cấp bảy! Thường ng&agrave;y, ch&uacute;ng ta đều c&oacute; thể nh&igrave;n ra thi&ecirc;n ph&uacute; tu luyện c&ugrave;ng khả năng lĩnh ngộ linh quyết lực của n&oacute; c&ograve;n hơn xa Ngữ Thi. Tương lai của Huy&ecirc;n Huy&ecirc;n...chắc chắn kh&ocirc;ng thể đếm nổi. N&oacute; ch&iacute;nh l&agrave; hi vọng thật sự của Lăng gia ch&uacute;ng ta sau n&agrave;y!&quot;<br />
<br />
N&oacute;i tới đ&acirc;y, Lăng Thừa Ch&iacute; chuyển sang vẻ mặt k&iacute;nh cẩn. &quot;Sau n&agrave;y, Huy&ecirc;n Huy&ecirc;n sẽ tiến v&agrave;o cấp bậc v&otilde; giả cực cao ở v&ugrave;ng trời n&agrave;y. Tới cấp độ m&agrave; ch&uacute;ng ta kh&ocirc;ng thể n&agrave;o với tới. Với ho&agrave;n cảnh đ&oacute;, Huy&ecirc;n Huy&ecirc;n sẽ tiến h&agrave;nh đ&aacute;m hỏi với thế lực m&agrave; ta kh&ocirc;ng thể tưởng tượng nổi. Nhưng nếu n&oacute; c&oacute; qu&aacute; khứ từng đ&iacute;nh h&ocirc;n với ai đ&oacute; th&igrave; đ&oacute; như một vết nhơ l&agrave;m ảnh hưởng tới tiền đồ của n&oacute;...&quot;<br />
<br />
&quot;Tam đệ, ngươi c&agrave;ng ng&agrave;y c&agrave;ng thực dụng.&quot; Gia chủ Lăng gia lắc đầu, thở d&agrave;i một hơi. &quot;Việc n&agrave;y cứ để ta lo. &Agrave;i. Đứa nhỏ Ngữ Thi n&agrave;y chịu được khổ, t&iacute;nh kh&iacute; điềm đạm nho nh&atilde;. Ta biết, ta m&agrave; l&agrave;m thế n&oacute; sẽ đồng &yacute;. Nhưng ta thật sự kh&ocirc;ng nỡ l&agrave;m thế với n&oacute;...&quot;<br />
<br />
&quot;V&igrave; tương lai của gia tộc, cũng v&igrave; tương lai của Huy&ecirc;n Huy&ecirc;n. Xin đại ca lo cho.&quot; Lăng Thừa Ch&iacute; nhắc nhở.<br />
<br />
Gia chủ Lăng gia trầm ng&acirc;m l&uacute;c l&acirc;u rồi mới l&ecirc;n tiếng: &quot;Tạm thời kh&ocirc;ng n&oacute;i tới việc n&agrave;y nữa. Mấy năm nay, Dược Sơn đều do ngươi phụ tr&aacute;ch, ta cũng chưa bao giờ hỏi g&igrave; tới. Rốt cuộc tại sao h&ocirc;m nay ngươi lại gọi ta tới vậy?&quot;<br />
<br />
&quot;Tới đ&oacute; rồi sẽ biết. Ta lờ mờ cảm thấy việc n&agrave;y c&oacute; quan hệ với Tần Liệt.&quot;</p>
', 1, 1)
INSERT [dbo].[Novel] ([Id], [NovelName], [Image], [Content], [AuthorId], [GenreId]) VALUES (2, N'NIÊN ĐẠI CÔ VỢ CÓ KHÔNG GIAN, MANG THEO BA BẢO ĐI LÀM RUỘNG', N'https://img.dtruyen.com/public/images/large/923/niendaicovocokhonggianmangtheobabaodilamruongP2KVtT3.jpg', N'- Ưm, ta đang ở nơi nào thế này?

Lắc lư cái đầu vừa tỉnh lại sau khi chìm vào hôn mê, Lục Thiếu Du cảm thấy xung quanh mình rất ẩm ướt, hơn nữa toàn thân đau nhức như muốn tê liệt, gió từ bốn phía thổi qua, tạt vào người hắn khiến hắn không nhịn được mà rùng mình một cái.

Đầu Lục Thiếu Du toát mồ hôi lạnh, hắn vội vàng mở choàng mắt. Không gian xung quanh chỉ là một mảnh đen kịt, trên không trung, một vầng trăng lưỡi liềm đang treo lơ lửng. Sau một lát, mượn ánh sáng yếu ớt phát ra từ mặt trăng hắn mới nhìn được cảnh vật rõ ràng hơn một chút. Hiện tại hắn đang ở trong một đầm nước, lúc này hẳn là ban đêm.

- A...

Cơn đau điếng từ đại não truyền đến khiến hắn phải kêu lên một tiếng thảm thiết. Lục Thiếu Du cảm nhận được có một lực lượng kỳ lạ đánh vào đầu mình khiến hắn lập tức ngất đi một lần nữa.

Khi trời gần sáng Lục Thiếu Du mới từ từ tỉnh lại, nhưng khi nhận được tin tức mới từ đại não Lục Thiếu Du thiếu chút nữa lại ngất đi.

- Nhân phẩm của ta bạo phát sao, xuyên việt rồi, đây là không phải là nằm mơ chứ?

Lục Thiếu Du mở to hai mắt chăm chú nhìn bốn phía, theo những tin tức nhận được từ đại não, cùng với việc đã từng xem qua mấy tiểu thuyết xuyên việt, Lục Thiếu Du khẳng định rằng mình đã bị xuyên việt rồi. Tình huống này tưởng chừng như không có thật, thậm chí trong trăm triệu hoàn cảnh cũng chưa chắc tìm được một, vậy mà lại xảy ra trên người hắn.

Lục Thiếu Du ngẫm lại, mình vừa mới tốt nghiệp đại học hạng ba, cũng tìm được công việc vặt vãnh ở trong một văn phòng nhỏ. Trong khi đang giúp cấp trên photo tài liệu thì không ngờ máy photocopy bị rò điện, hắn bị chết bất đắc kỳ tử mà xuyên qua.

Kiếp trước không nói làm gì, tiền đồ xa vời, xuyên qua cũng tốt, nói không chừng xuyên qua đến một thế giới khác sẽ đạt được thành tựu lớn hơn. Dựa theo những hiểu biết của bản thân hắn trong tiểu thuyết, người xuyên qua, không một người nào đạt được thành tựu quá thấp. Nguyên một đám không phải thê thiếp thành đàn thì cũng là bá chủ của thế giới mới, kém cỏi nhất cũng làm phú nhị gia, hẳn là mình cũng không quá xui xẻo.

Xác định mình bị xuyên qua, Lục Thiếu Du không có bất kỳ cảm giác đau khổ hay tiếc nuối gì mà ngược lại hắn cảm thấy mình như được giải thoát. Kiếp trước hắn không phải là người có chức có quyền, cũng không phải người giàu có, tiền đồ rất xa vời, tương lai mờ mịt.

- Nơi này là chỗ nào, tại sao ta lại xuyên đến chỗ quỷ quái này?

Lục Thiếu Du đánh giá xung quanh, bắt đầu lục lọi ký ức còn lưu lại trong đầu, một đoạn ký ức không thuộc về hắn.

Sau một lát, Lục Thiếu Du có loại xúc động muốn tự sát để xem có thể xuyên qua lần nữa hay không. Người khác xuyên qua không phải thành thiếu gia thì cũng là Vương gia, không thì cũng anh tuấn tiêu sái, phong độ bức người, là công tử gia tộc hoặc thế lực lớn.

Mà thân thể hắn xuyên vào mặc dù ở thế giới này cũng là một thiếu gia nhưng lại hữu danh vô thực. Vị thiếu gia này cũng tên là Lục Thiếu Du, năm nay vừa mới mười sáu tuổi, là một người con riêng, địa vị của hắn trong gia tộc ngay cả người hầu đều không bằng. Ngoài ra hắn còn có một mẫu thân, trước là người hầu trong gia tộc, sau khi sinh hạ vị thiếu gia này thì càng bị vợ cả ức hiếp, cùng trải qua ngày tháng so với nô tài còn không bằng.

Hai mẫu thân con, ngày bình thường thì luôn bị người trong gia tộc ức hiếp, ngay cả nô bộc cũng không để họ vào mắt. Đặc biệt là mấy nha hoàn đi theo vợ cả, càng hay tìm cớ để làm nhục bọn họ.

Ngay như ngày hôm qua, chỉ vì chống đối vài câu mà vị thiếu gia này đã bị bọn chúng đánh cho một trận, nhưng không ngờ tới bị đánh đến chết. Đoán chừng những người kia thấy người bị chết mà sợ hãi nên mới đem vị thiếu gia này vất xuống vách núi, thi thể rơi vào đầm nước dưới vách núi, còn mình thì vì nhân phẩm bạo phát mà xuyên qua nhập vào thân thể của hắn.

Nghĩ mình xuyên không lấy được thân thế như vậy, Lục Thiếu Du có chút khóc không ra nước mắt, rốt cuộc nhân phẩm của mình tốt hay không tốt đây? Kiếp trước mình cũng chưa làm chuyện tốt gì, xem ra nhân phẩm cũng không thể tốt được a.

Nhập gia thì tùy tục, Lục Thiếu Du cũng không có cách nào khác, may mắn lắm mới không chết, trên đời này làm gì có chuyện thập toàn thập mỹ, dù thế nào đi chăng nữa không chết chính là có phúc, gặp đại nạn mà không chết tất sau này sẽ có phúc.

- Nể mặt ta và ngươi cùng tên là Lục Thiếu Du, ta lại dùng thân thể của ngươi, mối thù của ngươi sau này có cơ hội ta sẽ giúp ngươi báo, mẫu thân của ngươi ta cũng sẽ giúp ngươi chăm sóc.

Lục Thiếu Du thầm thì tự nói.

Lục Thiếu Du vừa nói xong, đầu óc dường như thông suốt, một cỗ trọc khí thoát ra từ đầu rồi tiêu tán không không gian.

- Xem ra oán khí của ngươi cũng sâu a, mối thù của ngươi, Lục Thiếu Du ta chỉ cần có cơ hội nhất định sẽ báo cho ngươi.

Lục Thiếu Du chăm chú nhìn lên trời cao nói lại một lần nữa.

Nói xong, Lục Thiếu Du không thể không nghĩ đến một vấn đề nan giải lúc này. Bây giờ hắn đang nằm trong đầm nước, dưới lưng dường như tựa vào một thân cây khô, nước trong đầm rất lạnh, xem ra bây giờ hẳn là mùa đông. Mà hắn ngâm trong nước đã lạnh đã rất lâu rồi thì phải, cả người đã sớm tê cóng, không còn bao nhiêu tri giác.

Giãy dụa cố bơi về hướng bên cạnh đầm nước, Lục Thiếu Du không khỏi thầm rủa một tiếng, hai chân của hắn dường như bị chặt đứt, hai tay thì ngay từ đầu còn không cảm thấy gì nhưng vừa cố di chuyển một chút thì phát hiện ra hai tay cũng bị gãy xương. Lúc này, hắn căn bản không thể dùng sức, đừng nói bơi đến bên cạnh đầm nước, ngay cả di chuyển nửa phân cũng khó có khả năng.

- Ông trời a, ngươi đừng chơi ta như vậy mà.

Lục Thiếu Du bất đắc dĩ nhìn trời mắng, bây giờ mình hoàn toàn không nhúc nhích được, không phải nằm chờ bị động lạnh đến chết sao?

- Vèo...

Một hồi âm thanh truyền vào trong tai Lục Thiếu Du, giống như là có con vật gì đó di chuyển trong nước với tốc độ vô cùng nhanh.

- Không phải là Yêu thú chứ?

Trong đầu Lục Thiếu Du hiện lên một từ đáng sợ, theo như tin tức trong đầu lưu lại, Lục Thiếu Du biết được thế giới này khác với thế giới trước kia của mình. Đây là thế giới lấy vũ vi tôn, toàn bộ thế giới bao la vô cùng, trong đó có Yêu thú, Linh thú, Vũ giả và Linh sư tồn tại.

Vũ giả và Linh sư trong thế giới này có địa vị vô cùng cao, đặc biệt là Linh sư, địa vị của họ có thể nói là tối thượng.

Mà thân thể của vị thiếu gia hắn xuyên qua này, không có cách nào trở thành Vũ giả cũng vô pháp trở thành Linh sư, chính vì vậy địa vị trong gia tộc mới thấp kém không bằng cả nô bộc.', 3, 2)
INSERT [dbo].[Novel] ([Id], [NovelName], [Image], [Content], [AuthorId], [GenreId]) VALUES (3, N'THỊNH HẠ CHI LUYẾN', N'https://img.dtruyen.com/public/images/large/thinhhachiluyenYudpjhZuqR.jpg', N'Trăng sáng vằng vặc, bầu trời đầy sao.

Trên đỉnh núi, Tiêu Viêm nằm trên mặt cỏ, trong miệng ngậm một nhánh cỏ xanh, khẽ nhấm nháp, tùy ý để tư vị chua chát tràn ngập trong miệng…

Giơ lên bàn tay trắng nõn lên trước mặt, ánh mắt xuyên thấu qua khe hở giữa các ngón tay, nhìn vầng trăng bạc trên bầu trời xa xăm.

"Ai…" Nhớ đến trắc nghiệm lúc buổi chiều, Tiêu Viêm thở dài một tiếng, miễn cưỡng co tay lại, hai tay đỡ lấy đầu, ánh mắt có chút hoảng hốt.

"Mười lăm năm rồi…" Âm thanh nho nhỏ bỗng nhiên không hề báo trước từ trong miệng thiếu niên xuất ra.

Trong lòng Tiêu Viêm, có một cái bí mật chỉ mình hắn biết: Hắn không phải người của thế giới này, hoặc có thể nói là, linh hồn của Tiêu Viêm không thuộc về thế giới này, hắn đến từ một nơi tên là địa cầu, tuy nhiên vì sao hắn lại đến được nơi này hắn cũng không thể giải thích được, sống qua một khoảng thời gian, hắn hiểu ra được: Hắn đã xuyên việt!

( Theo ý hiểu của mềnh "xuyên việt" tức là vượt qua chiều không gian khác))

Theo tuổi dần dần tăng lên, đối với đại lục này, Tiêu Viêm cũng đã có chút lý giải mơ hồ về nó…

Đại lục tên là Đấu Khí đại lục, trên đại lục không có các loại ma pháp như trong tiểu thuyết, mà đấu khí mới là chủ nhân duy nhất của đại lục!

Tại đại lục này, tu luyện đấu khí, cơ hồ dưới sự cố gắng của vô số thế hệ đã phát triển đến mức đỉnh cao, hơn nữa nhờ phạm vi đấu khí không ngừng mở rộng, cuối cùng đã phát triển vào dân gian, việc này khiến cho đấu khí cùng nhân loại càng trở nên quen thuộc, do đó, tầm quan trọng của đấu khí trong đại lục này là không gì có thể thể thay thế.

Trải qua thống kê, đấu khí đại lục đem đấu khi chia ra các cấp bậc từ thấp đến cao, chia làm bốn giai mười hai cấp: Thiên, Địa, Huyền, Hoàng!

Mà mỗi đẳng cấp lại phân làm sơ, trung, cao - ba cấp.

Tu luyện đấu khí cấp bậc cao hay thấp cũng là mấu chốt quyết định thành tựu sau này, ví dụ như người tu luyện công pháp trung cấp Huyền giai tất nhiên sẽ mạnh hơn người cùng cấp bậc tu luyện công pháp trung cấp Hoàng giai.

Đấu khí đại lục, phân biệt mạnh yếu, quyết định qua ba điều kiện. Bạn đang đọc truyện tại Truyện FULL - www.Truyện FULL

Đầu tiên, trọng yếu nhất đương nhiên là tự thân thực lực, nếu thực lực chỉ có nhất tinh đấu giả thì dù có luyện công pháp Thiên giai tuyệt thế cũng không thể chiến thắng một người tu luyện công pháp Hoàng giai đấu sư.

Tiếp theo, đó là công pháp! Đồng cấp bậc cường giả, nếu công pháp của ngươi cao hơn đối phương, như vậy tại lúc tỷ thí sẽ có ưu thế rất lớn.

Loại cuối cùng, gọi là đấu kĩ!

Tên như ý nghĩa, đây là một lại kỹ năng phát huy đấu khí đặc thù, đấu khí trên đại lục cũng có cấp bậc phân biệt, cũng chia làm Thiên, Địa, Huyền, Hoàng bốn cấp.

Đấu khí đại lục số lượng đấu kĩ không hề ít, bình thường đấu kĩ truyền lưu ra ngoài, phần lớn đều là hoàng cấp, muốn đạt được đấu kĩ cao thâm thì phải gia nhập tông phái hoặc đấu khí học viện trên đại lục.

Đương nhiên, một số người do kỳ ngộ hoặc được tiền nhân để lại công pháp, hoặc có đấu kĩ tương xứng với chính bản thân mình, thì loại đấu kĩ đó phối hợp với công pháp khiến uy lực của nó càng mạnh hơn.

Dựa vào ba điều kiện này có thể phán đoán mạnh yếu, tổng thể mà nói nếu có thể có được cấp bậc công pháp càng cao, sau này phát triển càng không cần phải nói…

Bất quá công pháp tu luyện cao cấp đấu khí người thường đều rất khó tìm được, công pháp truyền lưu tại tầng lớp phổ thông, nhiều nhất cũng chỉ là Hoàng giai công pháp, một số gia tộc cường đại hoặc trung, tiểu tông phái mới có phương pháp tu luyện Huyền giai, ví dụ như gia tộc của Tiêu Viêm, công pháp cao nhất chỉ có tộc trưởng mới có tư cách tu luyện. Cuồng sư nộ cương, là một loại phong thuộc tính công pháp đấu khí trung cấp Huyền giai.

Trên Huyền giai, đó là Địa giai, loại công pháp cao thâm này chỉ có thế lực siêu nhiên hoặc đại đế quốc mới có thể có…

Còn Thiên giai… thì đã mấy trăm năm chưa từng thấy xuất hiện.

Theo lý luận, người bình thường muốn có được công pháp cao cấp, cơ bản đều là khó như lên trời, nhưng mọi sự đều không có tuyệt đối, theo đấu khí đại lục mở rộng ra, vạn tộc tràn vào an cư lập nghiệp, phía bắc đại lục, có man tộc được xưng là lực lượng mạnh mẽ vô cùng, có thể cùng thú hồn hợp thể. Phía nam đại lục, cũng có các loại gia tộc ma thú cao cấp có trí tuệ, hay chủng tộc hắc ám âm ngoan quỷ dị…

Bởi vì địa vực mở ra, nên có rất nhiều ẩn sĩ vô danh, tại lúc sinh mệnh kết thúc, có lẽ sẽ đem công pháp do mình sáng tạo để ở một nơi, chờ đợi người có duyên đến lấy. Tại đấu khí đại lục truyền lưu một câu nói: Nếu có một ngày, ngươi rơi xuống một cái sơn động, không cần kinh hoảng, đi về phía trước hai bước, có lẽ nó sẽ giúp ngươi trở thành cường giả của thế giới này!

Nói như vậy, cũng không phải là giả, trong ngàn năm lịch sử của đại lục, cũng không thiếu loại cố sự nhờ những kì ngộ này mà trở thành cường giả.

Mà cố sự tạo thành hiệu quả là rất nhiều người tìm đến các vách núi hòng đi tìm tuyệt thế công pháp. Đương nhiên, những người này phần lớn đều là gẫy tay gẫy chân mà về…

Tóm lại, đây là một mảnh đất tràn ngập kỳ tích và người sáng tạo nên kỳ tích.

Đương nhiên, muốn tu luyện bí tịch đấu khí, ít nhất phải trở thành đấu giả chân chính mới có tư cách này, mà Tiêu Viêm thì cách mục tiêu đó còn rất xa…

"Phì." Nhổ ra cây cỏ trong miệng, Tiêu Viêm đột nhiên nhảy dựng lên, khuôn mặt dữ tợn, đối với bầu trời thất rít gào lên: "Ta đệt cơm mịa mài, đem lão tử xuyên qua thời không sang đây làm một cái phế vật sao? Kháo!" ( để là "thảo" thì không có ý nghĩa gì trong câu này cả... vốn từ có hạn quá không biết bên tàu dùng cái chữ này với nghĩa là gì - đại khái là chửi hay thốt lên bất mãn í mà, "ta thảo" chắc cũng gần giống câu "ta ngất" ó "ta kháo" chứ ứng với nghĩa là cây cỏ thì... bó tay quá.)

Ở kiếp trước, Tiêu Viêm là một người cực kỳ bình phàm, tiền tài gái đẹp so với hắn căn bản là hai cái đường thẳng song song, vĩnh viễn không có điểm gặp nhau, nhưng sau khi đến đấu khí đại lục, Tiêu Viêm kinh hỉ phát hiện, nhờ có kinh nghiệm hai đời, linh hồn của hắn so với người bình thường mạnh hơn rất nhiều!

Phải biết rằng, tại đấu khí đại lục, linh hồn là do trời sinh, có thể theo tuổi lớn lên mà mạnh hơn một chút, nhưng chưa có công pháp nào có thể đơn độc tu luyện linh hồn, cho dù là thiên giai công pháp cũng không thể! Đây là kiến thức cơ bản nhất tại đấu khí đại lục.

Linh hồn cường hóa, cũng tạo nên thiên phú tu luyện cho Tiêu Viêm, đồng thời cũng tạo nên danh tiếng thiên tài cho hắn

Khi một người bình thường biết mình có tiền vốn để trờ thành tiêu điểm cho ánh mắt của vô số người, nếu không có đủ định lực, rất khó có thể giữ vững tâm tính của mình, rất hiển nhiên, kiếp trước Tiêu Viêm là một người bình thường, cũng không có định lực cao hơn người khác, cho nên lúc hắn bắt đầu tu luyện đấu khí, hắn lựa chọn làm thiên tài, tiêu điểm trước con mắt của mọi người mà không phải là phát triển trong an tĩnh.

Nếu không có việc gì ngoài ý muốn, Tiêu Viêm thực sự có thể đem hai chữ thiên tài càng lúc càng vang xa, đáng tiếc, tại năm hắn mười một tuổi, danh tiếng thiên tài đột nhiên bị biến cố cướp đoạt đi, mà thiên tài cũng trong một đêm trở thành phế vật cho mọi người chế nhạo!

……

Sau khi hét lên vài tiếng, cảm xúc của Tiêu Viêm chậm rãi bình ổn dần, khuôn mặt lại hồi phục bộ dáng yên lặng như ngày thường, mọi việc đã đến nước này, hắn có nổi giận thế nào đi nữa cũng không thể vãn hồi đấu khí toàn mà trước đó hắn phải vất vả tu luyện.

Chua xót lắc đầu, trong lòng Tiêu Viêm kì thật có một tia ủy khuất, cơ bản là hắn đối với thân thể của chính mình xảy ra chuyện gì cũng không hề biết, ngày thường kiểm tra cũng không phát hiện ra không đúng ở chỗ nào, linh hồn theo tuổi gia tăng cũng càng ngày càng cường đại, hơn nữa tốc độ hấp thu đấu khí so với trạng thái đỉnh cao của vài năm trước còn mạnh mẽ hơn vài phần, những thứ đó này đều nói rõ lên rằng thiên phú của mình không hề suy giảm, nhưng đấu khí tiến vào cơ thể đều biến mất toàn bộ không chút ngoại lệ, tình hình quỷ dị khiến tinh thần Tiêu Viêm ảm đạm bi thương…

Ảm đạm thở dài, Tiêu Viêm nâng tay lên, trên ngón tay có một chiếc nhẫn màu đen, chiếc nhẫn rất cổ xưa, không biết do tài liệu nào làm ra, bên trên còn có đường hoa văn mờ nhạt, đây là lễ vật duy nhất mà mẫu thân trước khi chết đưa cho hắn, bắt đầu từ lúc bốn tuổi đến nay, hắn đã đeo nó mười năm, di vật của mẫu thân làm Tiêu Viêm đối với nó có một phần quyến luyến, ngón tay nhẹ nhàng vuốt ve giới chỉ, Tiêu Viêm cười khổ nói: "Máy năm nay, thật sự đã phụ lòng kỳ vọng của mẫu thân rồi…"

Thở dài một tiếng, Tiêu Viêm bỗng nhiên quay đầu, đối với rừng cây đen nhánh ấm áp cười nói: "Phụ thân, ngài tới rồi ạ?"

Tuy đấu khí chỉ có tam đoạn, bất quá linh hồn cảm giác của Tiêu Viêm so sánh với một ngũ tinh đấu giả còn mẫn tuệ hơn nhiều, ngay trong lúc nhắc đến mẫu thân, hắn đã phát hiện ra trong rừng cây có động tĩnh.

"Ha ha, Viêm nhi, muộn thế này rồi, tại sao còn ở trên này?" Trong rừng cây, sau một thoáng im lặng truyền ra tiếng cười quan tâm của nam tử.

Cành cây lay động một chút, một vị trung niên nam tử bước ra, khuôn mặt mang theo nụ cười, dừng ở chỗ đứa con của mình đang đứng dưới ánh trăng.

Trung niên nhân mặc một bộ y sam họa lệ màu xám, long hành hổ bộ rất có uy nghiêm, trên mặt một đôi lông mày thô dày lại tăng thêm vài phần hào khí, đó là Tiêu Gia đương nhiệm tộc trưởng đồng thời là phụ thân của Tiêu Viêm, ngũ tinh đại đấu sư Tiêu Chiến!

"Phụ thân, chẳng phải ngài cũng chưa nghỉ ngơi sao?" Nhìn trung niên nam tử, nụ cười trên mặt Tiêu Viêm càng đậm, tuy mình có trí nhớ kiếp trước, bất quá từ lúc hắn sinh ra đến nay, vị phụ thân trước mặt này đối với hắn cực kỳ sủng ái, sau khi hắn suy sụp càng không giảm mà tăng, như vậy cũng đủ làm cho Tiêu Viêm cam tâm gọi hắn một tiếng phụ thân rồi.

"Viêm nhi, còn nghĩ tới việc trắc nghiệm buổi chiều sao?" Bước nhanh tiến lên, Tiêu Chiến cười nói.

"Ha ha, có gì để nghĩ đâu, tất cả đều trong dự kiến rồi mà". Thiếu niên lắc lắc đầu, nụ cười cũng có chút miễn cưỡng.

"Ai…" Nhìn khuôn mặt có chút non nớt của Tiêu Viêm, Tiêu Chiến hít một hơi, trầm mặc một lúc, bỗng nhiên nói: "Viêm nhi, năm nay ngươi mười lăm tuổi rồi đúng không?"

"Vâng, phụ thân"

"Qua một năm nữa, tựa hồ… phải tiến hành nghi thức trưởng thành rồi…" Tiêu Chiến cười khổ nói.

"Đúng vậy, phụ thân, còn có một năm nữa thôi!" Bàn tay có chút siết chặt, Tiêu Viêm bình tĩnh trả lời, nghi thức trưởng thành đại biểu cho cái gì hắn tự nhiên hiểu rõ, chỉ cần qua trưởng thành nghi thức, hắn không có tiềm lực tu luyện, tự nhiên sẽ bị hủy bỏ tư cách tiến vào Đấu Khí Các tiến hành tìm kiếm công pháp đấu khí, sau đó là bị phân đến các nơi có sản nghiệp của gia tộc, làm một số công việc bình thường, đây là tộc quy của gia tộc, cho dù phụ thân hắn cũng không thể thay đổi.

Mà, nếu trước hai mươi lăm tuổi vẫn chưa trở thành một đấu giả thì gia tộc cũng sẽ ghi nhận nữa!

"Thật xin lỗi con, Viêm nhi, nếu một năm sau đấu khí của con chưa đạt đến thất đoạn thì phụ thân cũng chỉ có thể nhịn đau đem con phân về trong sản nghiệp của gia tộc mà thôi, việc này cũng không phải một mình phụ thân có thể định đoạt, mấy cái lão gia hỏa kia mọi lúc đều chờ phụ thân mắc sai lầm ài…" Nhìn Tiêu Viêm bình tĩnh, Tiêu Chiến có chút hổ thẹn thở dài.

"Phụ thân, con sẽ cố gắng, một năm sau con nhất định sẽ đạt tới thất đoạn đấu khí!" Tiêu Viêm mỉm cười an ủi.

"Một năm, tăng bốn đoạn sao? Ha ha, nếu là trước kia, có lẽ còn có thể, bất quá hiện tại… Không có một điểm cơ hội nữa rồi…" Tuy an ủi phụ thân như vật, nhưng trong lòng Tiêu Viêm vẫn cười khổ tự giễu.

Cũng là phi thường hiểu rõ Tiêu Viêm, Tiêu Chiến cũng chỉ đành thở dài một tiếng. Hắn biết một năm tăng bốn đoạn đấu khí có bao nhiêu khó khăn, vỗ nhẹ đầu hắn, bỗng nhiên cười nói: "Đã không còn sớm, trở về nghỉ ngơi đi, ngày mai gia tộc sẽ có khách quý tới, con cũng đừng để thất lễ."

"Khách quý? Ai ạ?" Tiêu Viêm tò mò hỏi.

"Ngày mai sẽ biết." Nháy nháy mắt với Tiêu Viêm, Tiêu Chiến cười to mà đi, chỉ lưu lại Tiêu Viêm với cảm giác bất đắc dĩ.

"Yên tâm đi phụ thân, con sẽ cố hết sức!" Vuốt ve chiếc nhẫn cổ xưa trên tay, Tiêu Viêm ngẩng đầu lên lẩm bẩm nói.

Trong lúc Tiêu Viêm ngẩng đầu đó, chiếc nhẫn màu đen cổ xưa trên tay bỗng nhiên hiện lên một tia ánh sáng cực kỳ yếu ớt quỷ dị, ánh sát chỉ chớp lên trong nháy mắt, không có bất cứ ai phát hiện ra…', 5, 3)
INSERT [dbo].[Novel] ([Id], [NovelName], [Image], [Content], [AuthorId], [GenreId]) VALUES (4, N'[LÀM GIÀU] GẢ CHO THỦ PHỤ NĂM MẤT MÙA, CẨM LÝ KIỀU THÊ VƯỢNG PHU', N'https://img.dtruyen.com/public/images/large/124/lamgiaugachothuphunammatmuacamlykieuthevuongphuXS3v5UxMa7.jpg', N'Đêm đã về khuya, bóng tối phủ kín khắp nơi, bao trùm lên cảnh vật. Thế nhưng trong núi lại chẳng hề yên tĩnh, tiếng mãnh thú rít gào rung động cả non sông, cây cối rung lên, lá bay tán loạn.

Chốn rừng núi mênh mang là nơi hoạt động của vô số mãnh thú hồng hoang cùng những chủng tộc sót lại từ thời Thái Cổ. Tiếng kêu đáng sợ của muôn loài rống lên trong bóng tối, khiến mặt đất như muốn nứt toác ra.

Từ trong dãy núi trông xa thấy có thấp thoáng một quầng sáng nhu hòa, tựa như một ngọn nến lập lòe dưới màn đêm đen vô tận, lẩn khuất giữa muôn trùng núi, ánh sáng dường như có thể vụt tắt bất cứ lúc nào. Bạn đang xem truyện được sao chép tại: TruyenFull.vn

Đến gần hơn, có thể thấy rõ ở đó có một nửa thân cây khô khổng lồ, đường kính thân cây ước chừng hơn chục mét, toàn thân cháy đen, ngoại trừ một nửa thân cây này, chỉ còn lại một cành cây yếu ớt nhưng lại tỏa ra sức sống. Lá cây lung linh như được khắc từ lục ngọc, tán phát từng đốm sáng nhu hòa bao trùm lấy cả một thôn làng.

Nói một cách chính xác thì đây là một thân cây sét đánh, rất nhiều năm về trước nó từng gặp phải một trận sét thông thiên, vòm cây um tùm cùng sức sống tràn trề của gốc liễu già đã bị sấm sét phá hủy. Nay chỉ còn lại một đoạn gốc cao chừng tám chín mét trồi lên mặt đất, đường kính rộng kinh người, cành liễu duy nhất sót lại kia trông như sợi xích thần bằng mây lục bích, hào quang ngập tràn bao trùm che chở cho cả thôn làng, khiến mảnh đất này trở nên mông lung như một vùng tiên thổ, trong chốn đại hoang cảm giác vô cùng thần bí.

Nhà nhà trong thôn đều xây bằng đá. Đêm khuya thanh vắng, vẻ an lành yên ả của chốn này dường như tách biệt hẳn với bóng tối cùng tiếng mãnh thú gào thét bên ngoài.

"Hú uuuuu…."

Một trận cuồng phong thổi qua, có đám mây đen khổng lồ vắt ngang trời, che kín cả màn đêm, chắn nốt chút xíu ánh sao yếu ớt khiến dãy núi càng thêm tăm tối.

Một tiếng chim kêu hung tợn từ trên cao vọng xuống, tiếng kêu sắc lẻm có sức xuyên thấu mạnh, không ngờ lại bắt nguồn từ đám mây đen kia. Nhìn kỹ, thì ra đó là một con chim khổng lồ to đến không tưởng, che lấp trăng sao, dài không biết bao nhiêu dặm.

Đi qua Thạch Thôn, nó cúi đầu nhìn xuống, hai con mắt tựa như hai vầng trăng máu, hung khí ngút trời. Nó nhìn chằm chằm gốc liễu già trong chốc lát, cuối cùng bay về phía sâu nhất trong dãy núi.

Yên ắng một lúc lâu mãi cho đến tận nửa đêm, mặt đất bắt đầu rung chuyển. Một bóng dáng mơ hồ từ phương xa bước tới, cao ngang đỉnh núi!

Một hơi thở kì lạ lan tỏa, núi rừng lặng ngắt một cách chết chóc, hung cầm mãnh thú cúi rạp mình không dám phát ra một chút xíu âm thanh.

Lại gần, đây là một sinh vật có hình người, dáng đứng thẳng, nó cao lớn vô cùng, sánh ngang đỉnh núi, toàn thân nó không có lông tóc gì mà dày đặc một lớp vảy vàng kim lấp lánh. Mặt nó phẳng lì, chỉ có một con mắt thẳng, mỗi lần chớp mở như có ánh sét vàng kim rạch qua, sắc bén ghê người. Toàn thân nó huyết khí mênh mông, tựa như một vị thần ma!

Nó đi ngang qua chốn này, liếc nhìn gốc liễu, thoáng dừng chân rồi dường như đang vội vã lên đường, cuối cùng nhanh chóng bỏ đi. Vô vàn ngọn núi như đang rên rỉ dưới từng bước chân của nó, cả chốn núi rừng cũng bị uy thế ấy làm cho run rẩy.

Bình minh lên, một con rết dài mười mét, thân to như thùng nước, tỏa ánh sáng bạc lấp lánh bò ngoằn ngoèo trong núi. Con rết như được đúc từ bạc trắng, mỗi một đốt đều sáng bóng dữ dằn, đập vào đá núi rầm rầm, tia lửa bắn tung tóe. Nhưng cuối cùng nó lại tránh qua Thạch Thôn mà không hề xâm nhập, nơi nó đi qua sương đen mịt mù, muông thú đều lẩn tránh.

Một cành liễu mảnh mai tỏa ánh sáng bích hà óng ánh khẽ đung đưa trong gió….', 7, 4)
INSERT [dbo].[Novel] ([Id], [NovelName], [Image], [Content], [AuthorId], [GenreId]) VALUES (5, N'CON ĐƯỜNG BÁ CHỦ', N'https://img.dtruyen.com/public/images/large/conduongbachuzkwabtB9P5.jpg', N'Độ ấm từ sau lưng chậm rãi vây quanh, hô hấp nóng bỏng ở bên tai: “Sợ không?”

Hơi thở xa lạ quanh quẩn bên tai khiến người ta lạnh lẽo đến không dám lên tiếng.

Lâm Tử Lạp như cảm giác được người đàn ông hơi khựng lại, sau đó lại vang lên giọng nói của anh: “Bây giờ hối hận vẫn còn kịp.”

Cô căng thẳng siết chặt hai tay, lắc đầu: “Tôi không hối hận…”

Cô đang ở trong thời kỳ xinh đẹp nhất, nhưng…

Một đêm này đau đớn mà dài lâu…

Cuối cùng nửa đêm về sáng người đàn ông đứng dậy đi vào phòng tắm, Lâm Tử Lạp mới kéo thân thể mệt mỏi, mặc đồ ra khỏi phòng.

Dưới lầu khách sạn có người phụ nữ trung niên giới thiệu công việc này cho cô đang đứng đó, thấy Lâm Tử Lạp đi tới, bà ta đưa cho cô một cái túi màu đen: “Đây là tiền thù lao của cô.”

Lâm Tử Lạp gần như không chút do dự nhận lấy, cầm tiền nhanh chóng chạy đi, thậm chí còn không quan tâm sự đau đớn dưới thân, chỉ muốn nhanh chóng đến bệnh viện.

Bầu trời vẫn chưa sáng khiến hành lang rất im lặng, dưới đất trước phòng phẫu thuật để hai cái cáng cứu thương, vì không đóng tiền nên không được đưa vào phòng phẫu thuật.

Lâm Tử Lạp nhìn mà đau lòng không thôi, nức nở nói: “Tôi có tiền, mau cứu mẹ và em trai tôi đi…” Cô nghẹn ngào đưa tiền trong tay cho bác sĩ, bác sĩ nhìn thoáng qua, đưa cho y tá kiểm kê, sau đó mới kêu nhân viên đưa người bị thương vào trong phòng phẫu thuật.

Lâm Tử Lạp không thấy bọn họ đẩy em trai mình vào, vội vàng nhào lên bắt lấy bác sĩ cầu xin: “Còn cả em trai tôi nữa, ông cứu thằng bé đi…”

Bác sĩ thở dài: “Thật ngại quá, em trai cô đã không cứu được nữa rồi…”

“Không cứu được nữa?!

Lời này như tiếng sét động trời giáng mạnh lên đầu Lâm Tử Lạp, khiến trước mắt cô đen lại…

Đau, lồng ngực như bị người ta dùng con dao quấy phá, đau đến run rẩy ngồi cuộn lại dưới đất, tám năm trước, cô mười tuổi, ba ngoại tình vứt bỏ mẹ, đuổi mẹ đang mang thai và cô ra nước ngoài xa lạ.

Sau đó em trai được sinh ra, lúc ba tuổi phát hiện mắc bệnh tự kỷ, vốn cuộc sống đã túng thiếu, bệnh của em trai lại liên tiếp gặp nạn, cô và mẹ đi làm công cho người khác khắp nơi mới có thể sống qua ngày. Nhưng một vụ tai nạn giao thông, ở nước ngoài không có người thân, không có tiền, không ai giúp đỡ, khiến cô cảm nhận được cái gì là cùng đường.

Bị ép đến đường cùng, cô đã bán đi mình cũng không thể cứu em trai về.

Có một sự đau đớn, nó không dữ dội, nhưng lại khiến người ta cảm thấy không dễ chịu, hít thở cũng khó khăn, bầu trời thì xám xịt, nhưng cô phải chấp nhận, còn phải cười mà chấp nhận, vì cô còn mẹ.

Mẹ cần cô.

Sau khi được điều trị, sức khoẻ của mẹ chuyển biết tốt, nhưng khi biết em trai đã chết, bà như sụp đổ đến nơi.

Là Lâm Tử Lạp ôm bà, khóc nói: “Mẹ, mẹ vẫn còn con, cố sống tốt vì con đi.”

Suốt một tháng ở bệnh viện, Trang Kha Nguyệt thường xuyên ngẩn người ngồi bên giường, Lâm Tử Lạp biết bà nhớ em trai. Nếu không phải vì mình, chỉ sợ mẹ đã đi theo em trai rồi, vì phải chăm sóc mẹ, cô bị đuổi học, nhưng vết thương của mẹ đã chuyển biến tốt đẹp.

Cô xách đồ ăn đi vào bệnh viện, đến trước cửa phòng bệnh, khi cô nâng tay vừa định mở cửa, lại nghe thấy giọng nói ở bên trong…

Cô rất quen với nó, cho dù đã cách xa tám năm, cô vẫn nhớ rõ dáng vẻ ông ta ép mẹ ly hôn với mình.

Sau khi đưa bọn họ đến đây, ông ta chưa từng đến nhìn bọn họ một cái, hôm nay lại đột nhiên xuất hiện ở đây là có ý gì?

“Kha Nguyệt, lúc trước bà và bà chủ nhà họ Tông tình như chị em, đã quyết định hôn ước từ nhỏ, theo đạo lý thì hôn ước bà quyết định phải do con gái bà lấy chồng…”

“Lâm Viên Trung, ông có ý gì?!” Thân hình Trang Kha Nguyệt gầy yếu, bất chấp trên người còn có vết thương mà giãy dụa đứng lên muốn đánh ông ta, ông ta còn là người hay sao?

Sắp xếp cho bà và con gái ở lại cái nơi quỷ quái xa lạ này, chưa từng quan tâm sống chết của bọn họ, hôm nay lại muốn con gái bà lập gia đình?

“Cậu cả nhà họ Tông cũng là con trai bạn tốt của bà, trông ưa nhìn, dòng dõi nhà họ Tông bà cũng biết đó, lấy bên đó chỉ có hưởng phúc thôi…” Nói đến phía sau, giọng ông ta nhỏ lại.

Cậu cả nhà họ Tông đúng là cao quý thật, dáng vẻ tuấn tú lịch sự, nhưng một tháng trước, anh ra nước ngoài làm việc bị rắn độc cắn, tê liệt thần kinh, không thể hành động, còn không thể làm chuyện kia.

Gả qua đó chẳng khác nào ở goá cả.

“Tôi lấy.”

Lâm Tử Lạp đột nhiên đẩy cửa ra, cô đứng trước cửa, hai tay siết lại nắm chặt hộp đựng cơm trong tay: “Lấy chồng cũng được, nhưng tôi có một điều kiện.”

Lâm Viên Trung nhìn ra cửa, thấy đứa con gái đã tám năm không gặp này, trong chốc lát hoảng hốt mất mấy giây. Lúc đưa cô đến, cô vẫn là một đứa nhỏ mười tuổi, bây giờ đã trưởng thành rồi, làn da cô trắng ngần, lại rất gầy, khuôn mặt nhỏ nhắn còn chưa lớn bằng lòng bàn tay, khô khan không hề tươi tắn chúng nào, như không được phát triển tốt vậy.

Không hề khiến người ta yêu thích như con gái nhỏ trong nhà.

Sự không nỡ trong lòng cũng bớt đi, dẫu sao vẻ ngoài của cô cũng không đẹp lắm, cho dù lấy người chồng không làm được chuyện kia cũng không quá uất ức.

Nghĩ vậy, Lâm Viên Trung cũng không thấy có gì không tốt: “Điều kiện gì, nói đi.”

“Tôi về nước với mẹ, trả tất cả những thứ thuộc về mẹ cho chúng tôi, tôi đồng ý lấy chồng.” Lâm Tử Lạp liên tục siết chặt tay, dần dần mới bình tĩnh lại được.

Tuy hàng năm không ở trong nước, nhưng trước đây cô đã nghe nói tới nhà họ Tông của thành phố B, gia tộc khổng lồ, của cải bạc triệu, cậu chủ của nhà họ Tông đương nhiên là cao quý. Lâm Tử Lạp không cảm thấy chuyện tốt như vậy sẽ đến tay mình, nói không chừng cậu cả nhà họ Tông kia rất xấu, hoặc là thân thể có chỗ khiếm khuyết.

Nhưng cho dù thế, đây cũng là một cơ hội rất tốt để về nước với cô, lợi dụng tốt, còn có thể giành lại tài sản là của hồi môn của mẹ.

“Lạp Lạp…” Trang Kha Nguyệt muốn khuyên cô, chuyện lớn như cưới xin không thể đùa giỡn.

Cô đã đi theo bà chịu rất nhiều khổ cực rồi, không thể để cô đưa cả hôn nhân vào được.

Lâm Viên Trung nghe thấy thế, lo rằng Lâm Tử Lạp bị Trang Kha Nguyệt thuyết phục sẽ không muốn lấy chồng, vội nói: “Được, chỉ cần cô chịu lấy chồng, sẽ cho cô về nước.”

“Của hồi môn của mẹ tôi thì sao?” Lâm Tử Lạp nhìn người ba trên danh nghĩa của mình, giọng nói cực kỳ lạnh lẽo.

Lúc trước khi Trang Kha Nguyệt lấy ông ta thật sự có rất nhiều của hồi môn, đó là một số lượng không nhỏ, bây giờ kêu Lâm Viên Trung lấy ra khiến ông ta rất không nỡ.

“Ba, có lẽ đứa em gái kia của tôi rất xinh đẹp, nó nên có thứ tốt hơn, nếu lấy một người đàn ông thân thể có chỗ thiếu hụt thì cả đời cũng xong rồi, huống hồ ông và mẹ tôi đã ly hôn, ông cũng nên trả lại tiền bà đưa đến nhà họ Lâm đúng không.”

Lâm Viên Trung chột dạ né tránh không dám nhìn thẳng vào cô.

Cô ở nước ngoài sao lại biết cậu cả nhà họ Tông kia là một người không vẹn toàn?

Lâm Viên Trung nào biết Lâm Tử Lạp chỉ đang đoán thôi.

Nghĩ đến cô phải lấy một người đàn ông không bình thường, Lâm Viên Trung nghiến răng: “Đợi cô gả qua đó sẽ đưa cho cô.”

Con gái nhỏ của ông ta như hoa như ngọc, sao có thể lấy một người đàn ông không làm được chuyện kia chứ?

Có cao quý bao nhiêu, không thể làm chuyện vợ chồng thì khác gì một người tàn phế đâu?

Nghĩ đến đây, Lâm Viên Trung cũng không khó chịu như vậy nữa.

Nhưng trong lòng lại ghét Lâm Tử Lạp hơn mấy phần, chỉ toàn nghĩ việc lấy tiền từ trong tay ông ta.

Lâm Viên Trung lạnh lùng nhìn cô một cái: “Mẹ cô đúng là không dạy dỗ cô đàng hoàng, không hề biết lễ phép chút nào!”

Lâm Tử Lạp rất muốn nói người làm cha là ông không có trách nhiệm hay sao? Ném cô lại đây chưa từng để tâm.

Nhưng lúc này cô không thể nói, lợi thế của cô quá yếu, chọc giận Lâm Viên Trung không có lợi với cô.

“Chuẩn bị một chút, ngày mai trở về.” Lâm Viên Trung vung tay áo rời khỏi phòng bệnh.', 9, 5)
INSERT [dbo].[Novel] ([Id], [NovelName], [Image], [Content], [AuthorId], [GenreId]) VALUES (6, N'KIẾM ĐỘNG SƠN HÀ (DỊCH FULL)', N'https://img.dtruyen.com/public/images/large/124/kiemdongsonhadichfullYP2SqXE.jpg', N'"Anh ngố" trợn trừng hai mắt, nhìn chằm chằm vào nóc nhà được tạo thành từ cỏ dại và bùn trộn lẫn. Toàn thân hắn được trùm bởi một cái áo bông đã cũ, ố vàng, nhìn không còn ra hình dạng ban đâu, phảng phất tán phát ra một ít mùi ẩm mốc.

Bên cạnh hắn còn có một người nữa, là nhị ca Hàn Chú, đang ngủ rất say sưa. Thỉnh thoảng có tiếng ngáy nhè nhẹ phát ra từ đó.

Cách giường chừng nửa trượng, là một vách tường đất đổ nát, vì thời gian đã quá lâu, trên vách tường đã xuất hiện vài vết nứt dài. Từ những vết nứt đó, loáng thoáng truyền đến thanh âm oán thán của Hàn mẫu, ngoài ra còn có thanh âm Hàn phụ đang hút thuốc rất là hấp dẫn.

''Anh ngố'' từ từ nhắm đôi mắt có chút bức bối lại. Muốn thật nhanh chìm vào giấc ngủ sâu. Trong lòng hắn biết rõ ràng, nếu bây giờ mà còn không ngủ ngay, ngày mai không thể nào dậy sớm được, cũng không thể cùng đám bạn cùng đi đốn củi được.

"Anh ngố" họ Hàn tên Lập, loại danh tự có ý nghĩa như thế này cha mẹ hắn không có khả năng đưa ra. Cái này là do phụ thân hắn dùng rượu oa đầu chế bởi thô lương, cầu lão Trương trong thôn đặt cho.

Lão Trương khi còn trẻ, đã từng làm thư đồng mấy năm cho một nhà có tiền trong thành. Là người duy nhất trong thôn nhận biết được vài chữ. Tên gọi của hầu hết tiểu hài tử trong thôn, đều là do lão Trương đặt cho.

Hàn Lập bị người trong thôn gọi là "Anh ngố" không phải là do hắn ngố hay đần thật sự, ngược lại, hắn còn là đứa trẻ thông minh nhất làng, ngoài ra trông hắn so với những đứa trẻ khác trong làng không có gì khác biệt. Trừ những người trong nhà ra, hắn rất ít khi nghe thấy nguời ta gọi tên chính thức Hàn Lập của hắn, mà hầu như chỉ là "Anh ngố", và cái tên "Anh ngố" này vẫn được sử dụng cho đến tận bây giờ.

Sở dĩ Hàn Lập bị mọi người ban cho hỗn danh "anh ngố" là vì trong thôn vốn đã có một "anh ngốc" rồi.

Điều này cũng không có gì to tát cả, tất cả những đứa trẻ khác trong thôn đều có hỗn danh như "cẩu oa" hay "nhị đản", so với danh tự "anh ngố" thì còn khó nghe hơn.

Cũng bởi vậy, Hàn Lập mặc dù không thích cách xưng hô này nhưng cũng chỉ có thể tự an ủi mình mà thôi.

Hàn Lập bề ngoài trông không được vừa mắt, da tay thì đen đúa, đích thực là một đứa trẻ bình thường chốn làng quê. Tuy nhiên, nội tâm của cậu bé thì không hề nông nổi, so với những đứa bé cùng lứa tuổi thì chín chắn hơn nhiều. Hắn từ nhỏ đã hướng tới thế giới phồn hoa bên ngoài, mơ rằng có một ngày, hắn có thể ra khỏi thôn làng, đi xem xem cái thế giới phù hoa mà lão Trương thường nói đến.

Khi Hàn Lập nghĩ đến ý tưởng này, hắn không dám đề cập ra cho người khác biết. Nếu không, nhất định làm cho mọi người trong thôn cảm thấy ngạc nhiên, một tiểu hài tử miệng còn chưa khô mùi sữa, thế mà dám mơ tưởng đến những ý nghĩ xa vời mà ngay cả một người lớn cũng chưa dám nghĩ đến. Cần phải biết rằng, những đưa trẻ khác cùng tuổi với Hàn Lập thì tầm tuổi này chỉ biết đuổi gà, bắt chó, tất nhiên là ở đây sẽ không nói đến những kẻ có ý nghĩ tha huơng cầu thực.

Gia đình Hàn Lập có bảy miệng ăn, trên hắn có hai vị huynh trưởng, một tỷ tỷ, hắn trong nhà đứng thứ tư, ngoài ra hắn còn có một tiểu muội muội nữa. Năm nay hắn vừa mới mười tuổi, gia cảnh bần hàn, cả năm cũng không có mấy bữa được ăn no. Mọi người trong nhà đều chỉ mong được ăn đủ no, mặc đủ ấm.

Hàn Lập lúc này, đang mơ mơ màng màng, tuy ngủ mà chưa ngủ, trong đầu vẫn còn phảng phất ý niệm: Ngày mai lên núi, nhất định sẽ mang về cho tiểu muội muội mà hắn yêu thương nhất thật nhiều hồng tương quả*, loại quả mà muội muội hắn thích nhất.

Vào giữa trưa ngày thứ hai, Hàn Lập dưới ánh nắng chói trang, lưng gùi bó củi cao bằng nửa người hắn, trước ngực thì ôm một nắm đầy hồng tương quả, đang từ ngọn núi trở về nhà. Lúc này, hắn không hề biết rằng trong nhà đang có một vị khách đến chơi, mà vị khách này, chính là người cải biến vận mệnh của hắn.

Vị quí khách này, cùng hắn có mối quan hệ huyết thống rất gần, ông ta chính là tam thúc ruột của hắn.

Nghe nói, trong vùng, tại tửu lâu ở tiểu thành phụ cận, được nguời ta tín nhiệm đề bạt làm đại chưởng quĩ, chính là người mà cha mẹ hắn thường nói. Hàn gia trong vòng trăm năm trở lại đây, mới lại có thể xuất hiện một người như tam thúc của Hàn Lập.

Hàn Lập từ nhỏ cho đến giờ, gặp mặt vị tam thúc này cũng chỉ vài lần. Đại ca của hắn được đi theo một lão thợ rèn trong thành để học việc cũng là do vị tam thúc này giới thiệu cho. Vị tam thúc này còn thường xuyên giấu mọi người cấp cho cha mẹ hắn đồ ăn thức uống, chiếu cố tận tình gia đình hắn. Cũng chính vì vậy, ấn tượng của Hàn Lập đối với vị tam thúc này rất là tốt, hắn cũng biết rằng tuy cha mẹ hắn không nói ra miệng nhưng trong tâm cũng rất cảm kích.

Đại ca hắn chính là niềm kiêu hãnh của cả nhà, nghe nói làm thợ rèn học đồ, không kể ăn ở, mỗi tháng còn nhận được ba mươi đồng bạc trắng, đợi đến lúc xuất sư, có người thuê thì tiền kiếm được còn nhiều hơn nữa.

Mỗi khi cha mẹ đề cập đến đại ca, thần thái đều bay bổng, trông khác hẳn so với thường ngày. Hàn Lập tuổi tuy nhỏ, nhưng cũng hâm mộ không thôi, công việc vừa lòng sớm đã có rồi, đó chính là theo một vị thủ nghệ sư phó trong tiểu thành học tập nấu ăn, sau đó sẽ trở thành một người nấu ăn có tay nghề.

Ngay khi Hàn Lập nhìn thấy một người toàn thân diện y phục mới, khuôn mặt béo tròn, thì biết ngay đó là tam thúc của mình, tâm lý vô cùng hưng phấn.

Bỏ lại đám củi ra sau nhà xong, liền tiến lên nhà làm lễ tham kiến tam thúc, ngoan ngoãn cất tiếng chào: "tam thúc hảo", rồi sau đó đứng yên một bên, nghe phụ mẫu và tam thúc trò chuyện phiếm.

Tam thúc cười cười nhìn Hàn Lập, đánh giá hắn một hồi, luôn miệng khen hắn những lời như là "nghe lời" với "hiểu việc", sau đó lại quay đầu lại, tiếp tục trò chuyện với phụ mẫu hắn về mục đích chuyến đi lần này của lão.

Hàn Lập tuổi còn chưa lớn hẳn, nên khi nghe tam thúc nói hắn cũng không hiểu hết, chỉ là hiểu được đại khái mà thôi.

Nguyên lai là tam thúc của hắn làm việc ở một tiểu lâu, mà tiểu lâu này lại thuộc về một bang phái giang hồ có tên là "Thất huyền môn". Môn phái này chia ra làm ngoại môn và nội môn. Cách đây không lâu, tam thúc của hắn cũng đã chính thức trở thành đệ tử ngoại môn của môn phái đó, và có thể đứng ra đề cử hài đồng nhỏ tuổi ( từ bảy đến mười hai tuổi) tham gia khảo nghiệm chiêu thu đệ tử của Thất huyền môn.

Cứ năm năm một lần, Thất huyền môn lại tổ chức kỳ thi chiêu lãm đệ tử, mà cuộc thi này sẽ được tổ chức trong tháng tới. Với một người không khéo, nhanh nhạy lại không có con cái, tự nhiên phải nghĩ đến đứa cháu Hàn Lập có độ tuổi thích hợp rồi.

Cha của Hàn Lập vốn thận trọng, nghe đến những từ như "giang hồ" "môn phái", trong lòng có chút do dự, không đưa ra được chủ ý, liền vớ ngay lấy điếu cày, rít lên mấy tiếng "ba tháp" "ba tháp", sau đó ngồi yên tại chỗ, không nói câu gì nữa.

Theo lời tam thúc nói, thì trong phương viên mấy trăm dặm, Thất huyền môn là môn phái xếp thứ nhất, thứ hai gì đó.

Chỉ cần trở thành đệ tử nội môn, chẳng những sau này, vừa miễn phí tập võ, vừa không phải lo lắng chuyện ăn uống, mà mỗi tháng còn kiếm được một hai lượng bạc lẻ nữa. Hơn nữa cho dù không trúng tuyển trở thành đệ tử nội môn, thì cũng có hi vọng trở thành đệ tử ngoại môn giống như tam thúc của hắn, chuyên lo việc làm sinh ý cho Thất huyền môn.

Nghe đến có khả năng mỗi tháng kiếm được một hai lượng bạc trắng, lại còn có thể có cơ hội trở thành người như tam thúc, Hàn phụ cuối cùng cũng đưa ra chủ ý, đáp ứng lời đề nghị của tam thúc.

Tam thúc thấy Hàn phụ đáp ứng rồi, trong lòng rất cao hứng. Liền lưu lại vài lượng bạc, nói tháng sau sẽ đến dẫn Hàn Lập đi, trong khoảng thời gian này, cho hắn ăn uống tốt hơn một chút, bồi bổ thân thể để còn có thể tham gia ứng thí. Cuối cùng, tam thúc cùng cha mẹ hắn chào tạm biệt nhau, xoa xoa đầu hắn rồi ra khỏi cửa đi về.

Hàn Lập mặc dù nghe không hoàn toàn hiểu những gì tam thúc vừa nói, nhưng có khả năng vào thành, có thể kiếm tiền thì hắn nghe là hiểu được.

Nguyện vọng của hắn từ trước đến nay, mắt thấy có thể thực hiện được, hắn trong mấy buổi tối liên tiếp, hưng phấn nên ngủ không yên.

Một tháng sau, tam thúc của hắn theo đúng thời gian ước định quay lại thôn để dẫn Hàn Lập đi. Trước khi đi, Hàn phụ dặn dò, động viên, chúc phúc Hàn Lập: Làm người phải thành thật, gặp chuyện thì nên nhẫn nhịn, không nên cùng người khác tranh chấp, mà Hàn mẫu dặn hắn cần phải chú ý thân thể, ăn ngủ cho tốt.

Ngồi trên xe ngựa, nhìn thân ảnh cha mẹ xa dần, Hàn Lập cắn chặt hàm răng, cố gắng kìm nén không cho nước mắt chảy ra ngoài.

Tuy hắn so với những đứa trẻ cùng trang lứa thì chín chắn hơn, nhưng dù sao thì hắn vẫn còn là một đứa trẻ mới mười tuổi, lần đầu tiên xa nhà làm cho hắn cảm thấy có chút bàng hoàng, thương cảm. Trong tâm lý còn non dại của hắn đã hạ quyết tâm, đợi đến khi kiếm được tiền rồi sẽ ngay lập tức rong ngựa trở về với cha mẹ, không xa rời nhau nữa.

Hàn Lập từ trước không có nghĩ đến, chỉ là sau khi rời khỏi thôn làng hắn mới nhận ra, tiền đã không còn ý nghĩa với hắn như lúc xưa nữa rồi. Mà hắn mặc nhiên không biết rằng, con đường vận mệnh của hắn không giống như những người bình thường. Con đường tu tiên của hắn bắt đầu từ đây.', 1, 6)
INSERT [dbo].[Novel] ([Id], [NovelName], [Image], [Content], [AuthorId], [GenreId]) VALUES (7, N'LINH VŨ THIÊN HẠ', N'https://img.dtruyen.com/public/images/large/linhvuthienhaMjpr5x9rJ9.jpg', N'Diệp Oản Oản mở mắt.

Đối mặt là đôi môi khiến cho cô sợ hãi đến ngay cả linh hồn đều run rẩy con ngươi.

"A--"

Đôi tay tái nhợt của cô gái đột nhiên cầm cái chăn ngăn chặn vật dưới thân thể.

Cảm giác tê liệt thống khổ, rốt cuộc bản thân vẫn sống sờ sờ mà vẫn phải trải qua một lần nữa.

Chẳng lẽ nơi này là Địa Ngục sao?

Tại sao, rõ ràng cô đã chết, nhưng lại trở về nơi ày, trở lại bên cạnh tên ác ma này?

Trong đầu của cô lập tức bị nhiệt độ nóng bỏng của người đàn ông bốc hơi lên đến hỗn loạn tưng bừng, theo bản năng chống cự, "Đừng đụng vào tôi!"

Động tác của người đàn ông ngưng lại một hồi, ngay sau đó giống như bị đụng vào vảy ngược, khuôn mặt giống quỷ lệ khát máu nhất thời u ám, môi mỏng lạnh giá tàn nhẫn cắn xé đi xuống, giống như muốn nuốt hết máu và xương của cô vào bụng.

Diệp Oản Oản bị đau đến không có cách nào suy nghĩ bất cứ chuyện gì, chỉ có thể vô ý thức lầm bầm," Tại sao... tại sao là tôi... Tư Dạ Hàn... Tại sao nhất định phải là tôi..."

"Bởi vì, tôi chỉ cần em."

Bên tai truyền tới thanh âm trầm thấp của người đàn ông, giống như gông xiềng, ngay cả linh hồn của cô cũng đồng thời bị giam cầm.

Nghe câu trả lời của người đàn ông cùng kiếp trước giống nhau như đúc, Diệp Oản Oản hoàn toàn lâm vào hôn mê.

...

Thời điểm mở mắt ra lần nữa, bên ngoài cửa sổ đã từ đêm tối biến thành ban ngày.

Trong không khí tràn ngập một cổ mùi hoa, ánh mặt trời ấm áp xuyên qua chấn song rơi, khiến cho tâm tình của con người không tự chủ thanh tĩnh lại.

Nhưng mà, một giây kế tiếp, Diệp Oản Oản đột nhiên thần kinh căng thẳng.

Cảm giác áp bách mạnh mẽ theo người đàn ông tỉnh lại ở toàn bộ bên trong không gian lan tràn.

Bên hông đột nhiên bị một cánh tay nắm chặt, cô giống như là gối ôm, bị ôm vào trong ngực của người đàn ông.

"Còn muốn trốn sao?"

Bên tai truyền tới thanh âm làm cho người ta rợn cả tóc gáy.

Theo bản năng muốn sống, Diệp Oản Oản lập tức lắc đầu một cái.

Cũng không biết người đàn ông có tin cô hay không, ánh mắt ở trên mặt của cô dừng lại một cái, chợt kéo cô đến hôn môi của cô, cằm của cô, cổ...

Hơi thở nóng bỏng thô nặng chôn ở trong cổ của cô, tùy thời khắc đều có thể tản ra tín hiệu nguy hiểm.

Diệp Oản Oản giống như nai con bị cắn, không dám làm một cử động nhỏ nào.

Không biết qua bao lâu, người đàn ông rốt cuộc thả lỏng cô ra.

Một giây kế tiếp, Diệp Oản Oản đáy mắt đụng vào một hình ảnh vô cùng kiều diễm.

Người đàn ông lấy thân thể nửa trần xuống giường, tia phản quang buộc vòng thân thể thon dài cùng hông gầy của anh.

Cảnh sắc như vậy chỉ có một cái chớp mắt, người đàn ông liền nhặt quần áo ở bên mép giường, những ngón tay thon dài cẩn thận cài chiếc nút áo sơ mi được mang tới viên thứ nhất.

Rõ ràng trước đây còn tàn bạo giống như dã thú, vậy mà giờ khuôn mặt lại tuấn mĩ như vậy, lạnh như băng không nhiễm một tia khói lửa nhân gian.

Cho đến khi thanh âm đóng cửa vang lên, dây thần kinh căng thẳng cuối cùng sắp gãy mất của Diệp Oản Oản mới buông lỏng xuống.

Rốt cuộc có thể xử lý tình cảnh của chính mình vào lúc này.

Cô chậm rãi đánh giá trang trí bốn phía, cùng với chính mình ở trong gương trên bàn trang điểm đối diện——

Cô gái trong gương môi son màu đen bị gậm nhắm đến chỉ còn sót lại một chút ám sắc, phấn trang điểm trên mặt đã bị nước mắt và mồ hôi tẩy đi, thân thể phủ đầy dấu tím bầm cùng vết hôn, cuối cùng là một mảng hình xăm máu tanh kinh khủng.

Bộ dáng này, rõ ràng là cô khi hai mươi tuổi!

Khi đó, vì muốn né tránh Tư Dạ Hàn, cô đã cố ý đem chính mình biến thành cái bộ dạng xấu xí chán ghét này.

Cô sống lại... Thật sống lại...

Trong phút chốc, sự sợ hãi to lớn và tuyệt vọng cơ hồ làm cô hít thở không thông.

Tại sao...

Tại sao lại muốn cho cô trở lại bảy năm trước!

Cho dù chết, cô cũng không muốn lại trở lại nơi này, trở lại bên tên ma quỷ này bên người.

Cô nhớ rõ, đây là lần đầu tiên cô cùng Tư Dạ Hàn phát sinh quan hệ, mà sau đó vô số buổi tối, nàng đều bị hành hạ đến sống không bằng chết.

Cô bị nhốt ở nơi này, mất đi người yêu, thân nhân, mất đi tôn nghiêm, mất đi tự do, mất đi hết thảy.

Hết thảy các thứ này, chẳng lẽ cô còn phải lần nữa trải qua một lần nữa?

Không, nếu ông trời cho cô cơ hội làm lại một lần nữa, cô nhất định phải thay đổi hết thảy mọi thứ!', 3, 7)
INSERT [dbo].[Novel] ([Id], [NovelName], [Image], [Content], [AuthorId], [GenreId]) VALUES (8, N'SIÊU THẦN YÊU NGHIỆT', N'https://img.dtruyen.com/public/images/large/sieuthanyeunghietwbbjHNH.jpg', N'Mạo Nhi Sơn là một ngọn núi ở bên trong Đông Lâm sơn mạch. Ở dưới núi có một thôn làng, dân phong ở đây thuần phác, thường cày ruộng mà sống, đoạn tuyệt với thế giới bên ngoài.

Một buổi sáng sớm...

Ở trước cổng chính của thôn trang, toàn bộ hương thân trong thôn đang đứng tiễn đưa một thiếu niên chừng mười lăm mười sáu tuổi. Thiếu niên này trông gầy yếu nhưng trắng trẻo sạch sẽ, thoạt nhìn rất là nhu thuận. Y phục trên người hắn chỉ là một bộ thanh sam bình thường nhưng đã bị phai màu trở thành màu trắng, hai mắt toát lên vẻ lanh lợi, trong sáng.

Hắn tên là Bạch Tiểu Thuần.

“Các hương thân phụ lão, ta phải đi tu tiên rồi, nhưng ta không nỡ xa các ngươi”. Vẻ mặt thiếu niên tràn ngập vẻ không nỡ, bộ dáng của hắn vốn nhu thuận, lúc này thoạt nhìn lại càng trở nên chất phác.

Các vị hương thân quay mặt nhìn nhau, cũng làm ra vẻ không nỡ rời xa hắn.

“Tiểu Thuần, cha mẹ ngươi mất sớm. Ngươi là... một đứa trẻ ngoan!!! Chẳng lẽ ngươi không muốn trường sinh? Trở thành tiên nhân là có thể trường sinh, có thể sống rất lâu. Đi thôi! Chim ưng con lớn lên, sẽ có một ngày cũng phải bay đi.” Một lão giả tóc hoa râm ở trong đám người bước ra, lúc nói đến ba chữ “đứa trẻ ngoan” thì giọng nói có chút ngập ngừng.

“Ở bên ngoài, gặp bất cứ chuyện gì ngươi đều phải kiên trì. Ra khỏi thôn rồi thì cũng đừng quay lại, bởi vì con đường của ngươi là ở phía trước!” Lão nhân hiền lành vỗ vỗ bả vai của thiếu niên.

“Trường sinh...”. Thân hình của thiếu niên rung lên. Hắn mạnh mẽ đứng dậy, ánh mắt kiên định.

Trong sự cổ vũ của lão giả này cùng với tất cả thôn dân có mặt, hắn nhẹ gật đầu mấy cái, liếc nhìn mọi người thật kỹ rồi quay người bước nhanh ra khỏi thôn.

Thấy thân ảnh của thiếu niên đã đi xa, mọi người trong thôn lập tức trở nên kích động. Vẻ lưu luyến trong mắt bị nỗi vui sướng thay thế. Lão giả mặt mũi tràn đầy hiền lành lúc trước giờ cũng đang run rẩy, nước mắt chảy thành dòng.

“Trời xanh có mắt, cái tên Bạch Thử Lang này, rốt cuộc cũng đi... Cuối cũng đã đi rồi! Là ai nói cho hắn biết đã nhìn thấy tiên nhân ở gần đây? Ngươi đã vì thôn mà lập được đại công đấy!"

“Tên Bạch Thử Lang này rốt cuộc đã chịu đi rồi. Đáng thương cho mấy con gà nhà ta! Chỉ vì nó sợ gà gáy sáng mà không biết đã dùng cách gì xui khiến một đám hài tử đi bắt gà, đem gà trong cả thôn ra ăn sạch sẽ...”

“Hôm nay, năm mới đến rồi!” Âm thanh hoan hô, phấn khởi vang khắp thôn nhỏ. Thậm chí có người còn lấy ra cả chiêng trống, đánh lên rất là cao hứng.

Bên ngoài thôn, Bạch Tiểu Thuần còn chưa đi xa lắm. Hắn chợt nghe thấy âm thanh khua chiêng gõ trống từ trong thôn truyền ra, còn có cả tiếng hoan hô vang dậy. Hắn dừng lại, vẻ mặt có chút cổ quái, sau đó ho lên một tiếng, nương theo tiếng chiêng trống truyền tới, theo đường núi đi lên Mạo Nhi Sơn.

Ngọn Mạo Nhi Sơn này mặc dù không cao nhưng lại có nhiều bụi cỏ dại. Giờ là sáng sớm mà không gian vẫn tối đen, bốn bề yên tĩnh.

“Nghe Nhị Cẩu nói, mấy ngày hôm trước, lúc hắn bị một con lợn rừng đuổi theo tới chỗ này thì nhìn thấy trên bầu trời có tiên nhân bay qua…” Bạch Tiểu Thuần đi ở trên sơn đạo, trái tim đang nhảy lên thình thịch. Bỗng nhiên từ mé rừng truyền tới từng âm thanh rào rào giống như tiếng lợn rừng đang chạy. Âm thanh đến bất chợt khiến Bạch Tiểu Thuần vốn đã khẩn trương, lo lắng cảm thấy lạnh dọc cả sống lưng.

“Ai? Ai ở đó!” Tay phải hắn vội lấy từ trong bọc hành lý ra bốn cây búa, sáu lưỡi rìu. Chưa hết lo lắng, hắn lại lấy từ trong ngực ra một cây nhang màu đen, cầm chặt trong tay.

“Đừng đến đây, ngàn vạn lần đừng đến đây. Ta có búa, ta có rìu, nhang trong tay ta còn có thể triệu hoán thiên lôi, có thể dẫn tiên nhân hàng lâm. Ngươi dám đi ra, ta liền đánh chết ngươi!” Bạch Tiểu Thuần vừa run vừa hô to, kẹp chặt những thứ vũ khí kia, tranh thủ thời gian chạy theo đường núi. Dọc đường, những tiếng lách cách vang lên loạn hưởng, búa, đao bổ củi rơi xuống đầy đất.

Chắc là hắn đã quá lo lắng, vì những tiếng rào rào rất nhanh biến mất, sau đó cũng không thấy có dã thú nào chạy đến. Sắc mặt của hắn tái nhợt. Hắn lau mồ hôi lạnh, trong đầu đã có ý buông tha không tiếp tục lên núi nữa. Nhưng rồi hắn nghĩ tới cây nhang mình đang cầm trong tay, cây nhang của cha mẹ trước khi qua đời lưu lại cho hắn.

Nghe nói là do tổ tiên hắn khi xưa đã tình cờ cứu giúp một vị tiên nhân bị rơi xuống. Trước khi rời đi, vị tiên nhân đã để lại cây nhang này để báo đáp, còn nói sẽ nhận một người có huyết mạch Bạch gia làm đệ tử. Chỉ cần đốt nó lên là tiên nhân sẽ đến.

Trước đây, cây nhang này đã từng được hắn đốt lên hơn mười lần rồi nhưng cuối cùng vẫn không thấy vị tiên nhân kia đến. Điều này làm cho Bạch Tiểu Thuần bắt đầu hoài nghi vị tiên nhân kia có đến thật hay không. Hôm nay, hắn quyết định thử thêm một lần là bởi cây nhang này cũng không còn nhiều lắm, lại nghe người trong thôn nói cách đây vài ngày đã nhìn thấy có tiên nhân bay qua chỗ này.

Hắn leo lên núi vì biết đâu, ở gần thêm một chút thì tiên nhân sẽ nhận ra cũng không chừng.

Sau một lúc do dự, Bạch Tiểu Thuần lại cắn răng tiếp tục. Cũng may là ngọn núi này cũng không cao, chẳng bao lâu sau hắn đã lên đến đỉnh núi, há miệng thở phì phò. Đứng ở trên đó, hắn quay nhìn thôn trang hiện lên thấp thoáng dưới chân núi, thần sắc có chút cảm khái rồi cúi đầu nhìn đoạn hương đen chỉ còn bằng móng tay ở trong tay.

“Ba năm rồi... Cha mẹ phù hộ cho ta, lần này nhất định phải thành công!” Bạch Tiểu Thuần hít thở sâu, cẩn thận đem hương đốt lên. Gió lớn nổi lên bốn phía, bầu trời kéo mây đen dầy đặc. Từng tia chớp lóe lên sáng lòa, sấm nổ ầm ầm bên tai Bạch Tiểu Thuần.

Âm thanh vang dội làm cho thân hình của Bạch Tiểu Thuần run lên, hắn có cảm giác như lúc nào cũng có thể bị sét đánh chết. Trong một giây lát, hắn đã muốn phun nước miếng dập tắt cây nhang nhưng lại dằn lại vì không cam lòng.

“Ba năm rồi, ta đã đốt cây nhang này mười hai lần. Đây là lần thứ mười ba, lần này nhất định phải làm được. Tiểu Thuần ta không sợ, chắc sẽ không bị đánh chết đâu...”. Bạch Tiểu Thuần nhớ tới kinh nghiệm ba năm qua, không tính lần này, mười hai lần trước hắn đốt cây nhang thì mỗi lần đều có sấm chớp nổi lên như thế này, mà tiên nhân thì không thấy đến. Hắn vốn sợ chết, mỗi lần sấm chớp nổi lên là đều phun nước miếng dập tắt. Nhắc tới cũng kỳ, cây nhang này nhìn như bất phàm, nhưng lúc hắn phun nước vào là nó tắt ngay.

Trong lúc Bạch Tiểu Thuần còn đang hãi hùng khiếp vía, chật vật chờ đợi trong tiếng sấm thì ở bầu trời cách đó không xa có một đạo trường hồng đang gào thét, bay đến rất nhanh.

Trong đạo trường hồng này là một nam nhân trung tuổi. Nam tử này mặc y phục hoa lệ, dáng vẻ tiên phong đạo cốt nhưng thần sắc lại như phong trần mỏi mệt. Thậm chí, nếu nhìn kỹ thì có thể thấy hắn đang thực sự rất mệt mỏi.

“Ta rất muốn nhìn xem, rốt cuộc ngươi là cái dạng gì mà đốt một cây nhang suốt ba năm qua!”

Vừa nghĩ đến những gì mình đã trải qua trong ba năm vừa rồi, nam tử này liền nổi giận.

Ba năm trước, y phát giác có người đốt cây nhang mà mình đã cho đi lúc vẫn còn ở Ngưng Khí kỳ. Nhớ tới đoạn nhân tình ở chốn phàm trần năm đó y vội vàng bay tới.

Lần đó, theo tính toán của y thì rất nhanh sẽ tìm tới nhưng y lại không ngờ rằng, vừa mới nhận thấy mùi hương, còn chưa đi được bao xa thì cái khí tức kia đã biến mất trong nháy mắt, cắt đứt mối liên hệ. Nếu chỉ là một lần thì cũng thôi, nhưng trong ba năm qua, khí tức kia xuất hiện tới hơn mười lần làm cho y tìm kiếm nhiều lần mà lần nào cũng bị gián đoạn. Cứ tới tới lui lui như vậy, giằng co suốt ba năm...

Giờ phút này y đã thấy ngọn Mạo Nhi Sơn ở xa xa, thấy Bạch Tiểu Thuần đang đứng trên đỉnh núi. Trong chớp mắt y đã bay tới đỉnh núi, sau đó vung tay, đem que hương không còn nhiều lắm kia dập tắt.

Tiếng sấm liền im bặt. Bạch Tiểu Thuần sửng sốt, hắn ngẩng đầu nhìn vị trung niên đang đứng bên cạnh mình.

“Tiên nhân?” Bạch Tiểu Thuần e dè hỏi bằng giọng nói có vẻ không chắc chắn, lại lén lút với lấy một cây búa ở sau lưng.

“Bổn tọa là Lý Thanh Hậu. Ngươi là hậu nhân của Bạch gia?” Ánh mắt của tu sĩ trung niên như điện, không để ý tới cây búa ở sau lưng Bạch Tiểu Thuần, mà bắt đầu đánh giá một phen. Y thấy kẻ trước mắt này lông mày xanh, đôi mắt đẹp, lờ mờ tương tự với cố nhân năm đó, tư chất cũng không tệ, vẻ phiền muộn ở trong đáy lòng cũng bớt đi một ít.

“Vãn bối đúng là hậu nhân của Bạch gia, tên là Bạch Tiểu Thuần.” Bạch Tiểu Thuần mở mắt nhìn rồi nhỏ giọng đáp. Tuy trong lòng hắn có chút sợ hãi, nhưng vẫn đứng thẳng.

“Ta hỏi ngươi, châm một cây nhang thôi, vì sao lại châm những ba năm!” Tu sĩ trung niên này nhàn nhạt mở miệng, hỏi tới vấn đề mà trong suốt ba năm qua y rất muốn biết.

Bạch Tiểu Thuần nghe thấy câu hỏi, đầu óc nhanh chóng chuyển động, sau đó làm ra bộ phiền muộn nhìn xuống thôn trang xa xa ở dưới chân núi.

“Vãn bối là một người trọng tình trọng nghĩa, không nỡ bỏ những hương thân kia. Mỗi lần ta đốt hương, bọn hắn đều không nỡ để ta rời đi. Hôm nay bọn hắn bởi vì ta rời đi mà vẫn còn bi thương đây này.”

Tu sĩ trung niên sững sờ. Cái nguyên do này lúc trước y không nghĩ tới, vẻ phiền muộn trong mắt đã mất đi thêm một ít nữa. Từ lời nói mà xem xét thì bản tính kẻ này cũng không tệ lắm. Nhưng khi y hướng ánh nhìn về phía dưới thôn, dùng thần thức đảo qua, nghe được tiếng khua chiêng gõ trống cùng với những câu hoan hô vì Bạch Thử Lang đã rời đi thì sắc mặt lại trở nên khó coi. Y cảm thấy đau đầu. Kẻ trước mắt này nhìn bề ngoài thì nhu thuận chất phác, cả người lẫn vật đều vô hại nhưng trong lòng lại chứa đầy những ý nghĩ xấu xa kỳ quái.

“Nói thật!” tu sĩ trung niên vừa trừng mắt, vừa quát lên như tiếng sấm làm Bạch Tiểu Thuần giật mình, sợ hãi tới mức thân thể run lên.

“Việc ấy cũng không trách được ta a. Cái cây nhang gì đó của ngươi, mỗi lần ta đốt lên đều kéo theo sấm sét, nhiều lần thiếu chút nữa là đánh chết ta rồi. Ta tránh thoát mười ba lần là đã rất không dễ dàng rồi.” Bạch Tiểu Thuần ra vẻ đáng thương nói.

Tu sĩ trung niên nhìn Bạch Tiểu Thuần, im lặng một lúc.

“Ngươi đã sợ như vậy, vì sao còn dám đi đốt nhang tới hơn mười lần?“ Tu sĩ trung niên chậm rãi nói.

"Ta sợ chết! Không phải tu tiên là có thể trường sinh sao? Ta muốn trường sinh a!” Bạch Tiểu Thuần ủy khuất nói.

Tu sĩ trung niên lại im lặng. Y cảm thấy chấp niệm của kẻ này cũng đáng khen, cứ ném tới môn phái ma luyện một phen xem sao, biết đâu tính tình lại có thể thay đổi ít nhiều. Vì vậy sau khi suy nghĩ một chút, y liền hất tay áo quấn quanh Bạch Tiểu Thuần rồi hóa thành một đạo cầu vồng bay thẳng về phía chân trời.

”Đi cùng ta.”

”Đi đâu? Bay quá cao rồi...” Bạch Tiểu Thuần thấy mình đang bay trên trời, phía dưới là vực sâu vạn trượng thì sắc mặt nó tái nhợt, quăng búa ra, gắt gao ôm chặt lấy đùi của vị tiên nhân.

Tu sĩ trung niên nhìn xuống chân của mình, bất đắc dĩ nói.', 5, 8)
INSERT [dbo].[Novel] ([Id], [NovelName], [Image], [Content], [AuthorId], [GenreId]) VALUES (9, N'ĐỪNG KỲ THỊ GIỐNG LOÀI', N'https://img.dtruyen.com/public/images/large/dungkythigiongloaiKYEqkFoiG8.jpg', N'- Be be…be be…be be…
Từng tiếng người nhái giọng con dê vang vọng quanh quẩn trong dãy núi vốn dĩ yên tĩnh.

Lý Thất Dạ trèo lên trên núi, gió ban đêm thổi vừa mạnh vừa lạnh, nhưng lúc này nó lo lắng đến toát mồ hôi ướt đẫm cả người. Một đứa bé ở độ tuổi mười ba như Lý Thất Dạ, dùng tay chân một mình trèo lên dãy núi, quang cảnh đó giữa màn đêm toát ra một nét rất quái dị, khiến người ta sởn hết cả gai ốc nếu như được chứng kiến.

Mặc dù màn đêm tĩnh lặng rất đáng sợ, nhưng trong lòng của Lý Thất Dạ lại nóng như lửa đốt.

Lý Thất Dạ sinh ra trong một gia đình tá điền, ba mẹ đều là người nghèo khổ, từ lúc bảy tuổi nó đã bắt đầu đi chăn dê thuê.

Lý Thất Dạ mang họ Lý theo gia đình, bởi vì lúc sinh ra đời nó khóc bảy ngày bảy đêm nên bị đặt tên là Lý Thất Dạ.

Hôm nay, Lý Thất Dạ vẫn chăn dê như bình thường, nào ngờ, lúc chạng vạng tối đuổi đàn dê trở về, phát hiện thấy thiếu một con dê đầu đàn. Nó rất lo lắng, vội vàng trở lại núi tìm kiếm. Thế nhưng, Lý Thất Dạ tuy đã lật tung toàn bộ dãy núi mà vẫn không có tìm được con dê này.

Nghĩ đến lão địa chủ Trương Đại Hộ hung ác, giờ lại đánh mất đi một con dê của lão ta, Lý Thất Dạ cảm thấy lòng mình bối rối hoảng loạn vô cùng.

Sau khi đã tìm khắp cả dãy núi mà vẫn không thấy bóng dáng con dê kia đâu, bất chợt, Lý Thất Dạ nghĩ tới một chỗ, chỉ có một địa phương duy nhất mà nó chưa có đi tới tìm. Tiên Ma Động!

Ngẩng đầu nhìn về Tiên Ma Động nằm ở phía trước, hang núi đó ở giữa màn đêm tựa như một đầu hung thú từ thời Hồng Hoang, mở to cái miệng tưởng muốn ăn tươi nuốt sống người ta bất cứ lúc nào, bên tai lại nghe thấy tiếng sói hú như quỷ kêu vọng lại, Lý Thất Dạ không khỏi rùng mình một cái.

Tiên Ma Động vốn được coi là một nơi đầy hung ác tại địa phương này, truyền thuyết kể lại rằng ở đó một con ác ma, bất kỳ người nào đi vào đều sẽ bị nó ăn hết. Từ xưa tới nay, sau khi đi vào, chưa từng có ai có thể còn sống đi ra.

Lúc này, âm thanh tiếng roi da quất “chát, chát“ của lão Trương Đại Hộ lại quanh quẩn bên tai của Lý Thất Dạ. Nếu mất đi một con dê, lão Trương Đại Hộ nhất định sẽ quất nó da thịt nát bươm.

Chỉ nghĩ tới đây, Lý Thất Dạ cắn chặt răng, đi về hướng Tiên Ma Động ở phía trước mặt. Trong chớp mắt, thân ảnh của nó đã biến mất trong màn đêm.

- Aaaaaaa….
Trong đêm tối thê lương đó, từ bên trong Tiên Ma Động vọng ra một tiếng hét thảm. 

Âm thanh đầy kinh hãi của Lý Thất Dạ lại vang lên: 
- Ngươi, ngươi, ngươi muốn làm gì?...A…

Bất chợt, tiếng kêu thảm thiết đột nhiên dừng lại.

Cũng không biết bao lâu, từ sâu thẳm trong Tiên Ma Động lại vọng ra một âm thanh đầy âm trầm:
- Tốt, tốt, tốt, Âm Nha sống mãi không chết của bản tọa rốt cục đã được luyện thành, chỉ còn thiếu hồn phách, hôm nay vừa vặn mượn hồn phách của ngươi dùng một lát!

- Phạch…phạch…phạch…! 
Một lúc sau, từng tiếng vỗ cánh dồn dập vang lên, một con quạ đen quái dị bay ra từ trong Tiên Ma Động.

- Bay đi, bay đi, bản tọa muốn mượn hồn phách của ngươi nhớ kỹ Táng Địa( theo truyện này thì đó là nơi mai táng/chôn/cất giấu người, thú hoặc đồ vật thần bí gì đó), bay qua tất cả những vùng đất còn lại, chỉ cần Cửu Giới không bị hủy, bản tọa nhất định sẽ tìm được ngươi!
Từ sâu thẳm bên trong Tiên Ma Động, giọng nói âm trầm kia lại quanh quẩn vọng ra.

Từ đó về sau, ở giữa trời đất này, có một con quạ đen rong ruổi bay lượn, vào Táng Địa, đến Tiên thành, vượt qua Hung vực. . .Thân bất do kỷ *, nó bay xuyên Cửu Giới, vượt qua vạn kiểu khó khăn, sống trăm ngàn vạn năm mà vẫn không chết.

Thời gian trôi qua, thời đại theo đó mà biến chuyển, cứ một nhân vật vô địch quật khởi thì một vị đầu sỏ khác ngã xuống.

Dần dần, không biết bắt đầu từ lúc nào, con quạ đen thần bí kia lại bắt đầu xuất hiện. Một con quạ đen muốn thoát khỏi giam cầm tà ác, bắt đầu tìm cách nắm giữ con đường vận mệnh của chính mình.

Từ Dược Thần đến Phi Tiên Đế, Huyết Tỳ Tiên Đế, Minh Nhân Tiên Đế, lại đến Thôn Nhật Tiên Đế rồi đến Băng Vũ Tiên Đế. . . cuối cùng đến Hắc Long Vương.

Sau lưng mỗi một vị đầu sỏ của một thời đại này đều có bóng dáng của một con quạ. Bóng dáng của một con quạ đen muốn nắm giữ số phận của chính mình.

Tuy mỗi một đời đầu sỏ vô địch quật khởi sẽ có một đời thần minh khác mất đi, nhưng con quạ đen kia vẫn mờ ảo xuất hiện ở bên trong dòng sông thời gian.

Một con quạ đen không cam lòng với vận mệnh bị chi phối, nó muốn đối kháng nhân vật đáng sợ nhất trong cõi trời đất này. 

Từ ngàn vạn năm trước đến nay, từng thời đại một lần lượt thay đổi...

*Thân bất do kỷ: ý nói người ta nhiều khi phải làm hoặc không thể làm những chuyện mà không phải do lòng muốn hay bản thân của họ không thể tự kiềm chế được.

“Xoạt” một tiếng, Lý Thất Dạ đang trôi nổi giữa dòng sông bỗng được người vớt lên.

- A!
Trong lúc bị kéo lên, Lý Thất Dạ đột nhiên tỉnh lại, và phản ứng đầu tiên của hắn chính là nhảy dựng lên. Do chưa kịp thích ứng lại với cơ thể của mình, hắn lảo đảo suýt nữa ngã sấp mặt xuống.

- A, thân thể của ta!
Lý Thất Dạ cúi đầu nhìn, thấy cơ thể của mình không thay đổi gì, hắn vừa mừng vừa sợ. Mặc dù đã trải qua muôn ngàn khó khăn, vượt qua bao nhiêu sóng gió, nhưng Âm Nha Lý Thất Dạ - hắn vẫn không ngăn nổi sự kích động khi cuối cùng cũng đoạt lại thân thể của mình.

Lý Thất Dạ hít sâu một hơi, ngẩng đầu nhìn lên, thấy một ông lão đang đứng trước mặt.

- Hì, hì, hì, chính là lão già ta vớt ngươi từ dưới sông lên.
Ông lão này cười cười lên tiếng. Khi ông ta mở miệng nói chuyện để lộ ra hàm răng chỉ còn ba chiếc vàng khè, khiến người ta cảm thấy nụ cười của ông ta đầy vẻ hèn mọn.

Lý Thất Dạ liếc nhìn về phía thượng nguồn, từ xa hắn cũng có thể thấy được hình dáng mờ ảo của Tiên Ma Động. Nhìn thấy nó, ánh mắt của Lý Thất Dạ chợt trở nên lạnh lẽo khôn cùng, khí tức từ người hắn toát ra khác biệt hẳn so với những đứa trẻ cùng độ tuổi - mười ba.

Lý Thất Dạ hít thêm một hơi thật sâu, quay lại nhìn ông lão, một lúc lâu sau hắn mới cất tiếng hỏi:
- Nên xưng hô với ngươi như thế nào?

- Tẩy Nhan Cổ Phái, Tam Quỷ Gia.
Ông lão lại ngoác mồm lộ ba chiếc răng vàng, cười hì hì trả lời, nước miếng phun ra.

- Tẩy Nhan Cổ Phái…
Lý Thất Dạ thì thầm, cái tên này nhất thời gợi lên những ký ức từng bị phong ấn trong đầu hắn, lúc hồn phách của hắn còn đang bị nhốt trong thân thể của con quạ đen kia.

- Hiện nay, ai là người đang chấp chưởng thiên mệnh?
Lý Thất Dạ bình tĩnh lại, hỏi tiếp.

- Thiên mệnh ư? Hiện thời vẫn chưa có ai có thể gánh được thiên mệnh.
Tam Quỷ Gia vẫn cười hì hì trả lời.

- Đạp Không Tiên Đế đâu?

Nghe ông ta trả lời như vậy, sắc mặt của Lý Thất Dạ nhất thời đanh lại. Hắn đã ngủ say mất bao lâu? Hơn mười vạn năm hay sao?

- Đạp Không Tiên đế đã mất tích từ ba vạn năm trước.

Tam Quỷ Gia vẫn cười một cách hèn mọn, trả lời Lý Thất Dạ.

- Vậy Hắc Long Vương của Trấn Thiên Hải thành thì sao?
Lý Thất Dạ lại hỏi tiếp.

- Không ai biết rõ cả, Hắc Long Vương cũng mất tích từ ba vạn năm trước.
Tam Quỷ Gia lắc đầu đáp.

Nghe xong, sắc mặt của Lý Thất Dạ biến đổi dữ dội, hắn lại ngẩng đầu nhìn về phía Tiên Ma Động đang ẩn hiện ở nơi xa. Lúc này Lý Thất Dạ đã hiểu vì sao hắn đoạt lại được thân thể của mình.

- Chúng ta đi thôi.
Vẻ mặt Lý Thất Dạ trầm xuống, hắn quay người rời đi, cũng mặc kệ Tam Quỷ Gia có bước theo hắn hay không. Hắn đã sống qua bao nhiêu năm tháng dằng dặc, trải qua muôn vàn cực khổ đắng cay, lúc này hắn biết mình nên làm như thế nào rồi.

***

Trấn Thiên Hải thành chính là truyền thừa cường đại nhất của một vị vô địch đương thời. Năm đó, khi Hắc Long Vương còn sống, nhìn khắp chín tầng trời mười tầng đất không ai có thể đánh lại. Ba đời đều được tôn kính như thế! 

Tuy Hắc Long Vương đã mất tích từ ba vạn năm nay, nhưng Trấn Thiên Hải thành vẫn như một quái vật khổng lồ, ngạo nghễ đứng giữa trời đất.

Lúc này, một thiếu niên tầm mười ba tuổi và một ông lão có nụ cười hèn mọn lộ ra hàm răng với ba chiếc vàng chóe đang đứng ở phía ngoài Trấn Thiên Hải thành. 

Lý Thất Dạ yên lặng đứng đốt tiền giấy ở phía ngoài cửa thành, thì thầm: 
- Tiểu Hắc Tử, ngươi cứ an tâm đi. Kiếp này ngươi đã giúp ta đoạt lại được thân thể, một ngày nào đó ta sẽ đạp giết hung vực, báo thù cho ngươi. 

Xong xuôi, Lý Thất Dạ ngẩng đầu nhìn Trấn Thiên Hải thành khổng lồ phía trước, cảnh cũ mà người xưa đã không còn, hết thảy cũng trở nên lạ lẫm. Nhớ lại những năm tháng đó, hắn và Tiểu Hắc Tử đã cố gắng biết bao để xây dựng nên tòa hải thành hùng vĩ này.

Đáng tiếc, qua ba vạn năm, mấy ai còn nhớ tới con quạ đen từng ẩn nấp phía sau màn.

- Hì, chúng ta về Tẩy Nhan Cổ Phái thôi.
Vào lúc này, Tam Quỷ Gia liếc nhìn Lý Thất Dạ, lên tiếng, ba chiếc răng vàng lấp lánh.

- Chúng ta đi thôi.
Lý Thất Dạ bình tĩnh gật đầu đáp. Cho dù vị Tam Quỷ Gia này có bản lĩnh xuất quỷ nhập thần thế nào, lai lịch ra sao cũng không thể khiến Lý Thất Dạ giật mình. Hắn đã trải qua hàng vạn khó khăn, hồn phách bị nhốt trong cơ thể con quạ đen Âm Nha trăm ngàn vạn năm, lần lượt đi qua từng thời đại một, sánh vai cùng Tiên Đế, kết bạn với Dược Thần. Thử hỏi còn cái gì có thể khiến hắn kinh ngạc được nữa?

Hai người Lý Thất Dạ vừa rời đi không lâu, một người con gái vô cùng tao nhã, xinh đẹp bước ra từ Trấn Thiên Hải thành. Nàng giống như Bích Ba tiên tử, Hàn Hải nữ thần. Lúc nàng vừa bước ra khỏi cửa, ánh mắt vô tình liếc thấy một góc tờ tiền giấy còn sót lại trong đống vàng mã bị đốt. Trên đó còn có thể thấy một ký hiệu ẩn hiện.

Vừa nhìn thấy ký hiệu đó, sắc mặt của vị Thần nữ đột biến, trầm giọng hỏi:
- Vừa rồi đã có ai hóa tiền vàng mã ở đây?

Một vị lão bộc bên người nàng vội đi hỏi thăm tin tức rồi nhanh chóng quay lại báo cáo:
- Nghe thủ vệ nói, mới đây không lâu có một lão già và một thiếu niên tầm mười ba, mười bốn tuổi hóa vàng ở đây.

- Mau đuổi theo cho ta, tìm bằng được bọn hắn.
Vị Thần nữ này lập tức trầm giọng ra lệnh.

- Điện hạ vốn phải đi Thần sơn đó.
Lão bộc do dự nói.

- Tìm!
Vị Thần nữ này vừa quát khẽ một tiếng, thân hình đã phi xuyên không gian, truy tìm hai người kia.

Rốt cuộc, vị Thần nữ này vẫn không tìm được người hóa vàng mã, đành phải quay trở lại Trấn Thiên Hải thành. Cô ta đứng trầm mặc tự vấn trong đầu. Ký hiệu kia từ lâu lắm đã không xuất hiện lại tại Trấn Thiên Hải thành, vì sao đột nhiên nó lại xuất hiện ở đây sau mấy vạn năm? Là địch hay là bạn?

- Bẩm điện hạ, không tìm được người hóa vàng mã kia.
Vị lão bộc trung thành tận tâm đứng bẩm báo.

- Phân phó xuống, tất cả mọi người đều lưu ý, không được sao nhãng, có tin tức gì về hai người kia, lập tức báo cáo cho ta biết.
Vị Thần nữ kia trầm giọng ra lệnh.

Nghe chủ nhân nói như thế, lão bộc kinh ngạc không thôi. Dưới uy danh đương thời của Trấn Thiên Hải thành, tiếng tăm điện hạ Trấn Hải Thần Nữ của bọn họ cũng rất lừng lẫy, rất ít khi thấy nàng ta có thần thái ngưng trọng như vậy.

- Vậy Thần sơn bên kia…
Lão bộc trầm ngâm nói.

- Hủy bỏ!
Vị Thần nữ này nghiêm giọng.

- Ta cần phải đọc thoáng qua một chút sách cổ mà tổ tông để lại, chuyện này thực có chút cổ quái.
Nói xong nàng lập tức đi thẳng tới nơi sâu nhất trong cấm địa của Trấn Thiên Hải thành.

***

Tẩy Nhan Cổ Phái nằm trong cương quốc của Bảo Thánh thượng quốc, vốn là một Tiên Môn Đế Thống, có truyền thừa từ rất xa xưa. Vào những năm đầu của thời đại Chư Đế, một đời Minh Nhân Tiên Đế kiêu ngạo đứng giữa chín tầng trời mười tầng đất sáng lập ra môn phái này và đặt tên nó là Tẩy Nhan Cổ Phái.

Đáng tiếc, trải qua trăm ngàn vạn năm, thời đại thay đổi, Tẩy Nhan Cổ Phái đã không còn là tiên môn đế thống tung hoành Tứ hải Bát hoang của ngày xưa nữa. Năm tháng trôi qua, Tẩy Nhan Cổ Phái dần dần xuống dốc, tuy đã cố gắng hết sức để trùng hưng lại uy danh thưở nào nhưng vẫn không có cách để vãn hồi xu hướng suy tàn này.

- Trưởng lão, không tốt, có một phàm nhân tới môn phái chúng ta nói hắn muốn làm đại đệ tử thủ tịch .
Đại trưởng lão của Tẩy Nhan cổ phái vừa bước ra khỏi cửa đã thấy môn hạ đệ tử vội vàng đi tới bẩm báo.

- Đá hắn xuống núi!
Đại trưởng lão không thèm liếc một cái, nói luôn. 
- Chuyện nhỏ như thế này cũng cần phải bẩm báo nữa sao?

Một phàm nhân muốn làm đại đệ tử thủ tịch của Tẩy Nhan Cổ Phái ư? Nói đùa à? Làm đại đệ tử thủ tịch cũng có nghĩa là làm truyền nhân của chưởng môn, hơn nữa đại đệ tử thủ tịch thông thường cũng có khả năng trở thành chưởng môn đời kế tiếp. Tuy nhiên, nếu chưởng môn không có mặt ở trong môn phái thì Đại trưởng lão vẫn có thể tự mình giải quyết những vấn đề này.

- Nhưng mà, nhưng mà hắn, hắn là người Tam Quỷ Gia giới thiệu đến.
Vị đệ tử này giọng lắp bắp, vội vàng nói.

- Tam Quỷ Gia?
Đại trưởng lão nhíu mày không vui nói:
- Hắn không phải do uống rượu của người ta mời mà mở miệng hứa hẹn cho người ta chỗ tốt đó chứ?

Tam Quỷ Gia vốn là người của Tẩy Nhan Cổ Phái, nhưng Tẩy Nhan Cổ Phái lại không muốn thừa nhận thành viên này.

Mặc dù cái tên Tam Quỷ Gia nghe thì rất uy phong, nhưng cái tên này lại khiến các trưởng lão Tẩy Nhan Cổ Phái không có chút mặt mũi nào. 

Tam Quỷ Gia có ba cái cực kỳ tốt, đó là tiêu tiền tốt, khoác lác tốt, chơi gái cũng tốt, lại còn thường tự xưng lão gia, cho nên thường bị người ta trêu tức gọi bằng Tam Quỷ Gia.

Tam Quỷ Gia nghe nói chẳng tu luyện được công pháp nào ra hồn, nhưng lại có lai lịch rất lớn ở Tẩy Nhan Cổ Phái. Nghe đồn, ông ta là con riêng của chưởng môn đời trước, vì thế khi vị chưởng môn này sắp chết liền dặn dò chưởng môn đương nhiệm chiếu cố Tam Quỷ Gia giùm.

Cũng có tin đồn rằng Tam Quỷ Gia đúng là con riêng nhưng là con riêng của chưởng môn cách đây hai đời, mà chưởng môn đời trước lại từng nhận đại ân của vị này, cho nên chưởng môn đó mới muối mặt nhận lấy vết nhơ này, cắn răng chiếu cố Tam Quỷ Gia. Trước khi vị chưởng môn của đời trước viên tịch thì ông ta cũng lại dặn dò chưởng môn đương nhiệm của Tẩy Nhan Cổ Phái phải đùm bọc cho Tam Quỷ Gia.

Nói cho cùng, mặc kệ chuyện Tam Quỷ Gia là con riêng của ai đi nữa, các thành viên cao tầng của Tẩy Nhan Cổ Phái đều không muốn tìm hiểu làm gì và cũng chẳng bận tâm tới lời bàn tán của thiên hạ.

Toàn bộ Tẩy Nhan Cổ Phái, từ trưởng lão cao tầng tới đệ tử thấp nhất đều không đón chào vị Tam Quỷ Gia không có bao nhiêu đạo hạnh này.

- Tam Quỷ Gia giới thiệu thì thế nào, vẫn đá hắn xuống núi!
Đại trưởng lão bực mình quát, mới sáng sớm đã bị tên này phá hỏng tâm tình tốt.

- Nhưng mà, nhưng mà, hắn đang cầm Tẩy Nhan cổ lệnh của Tam Quỷ Gia.
Vị đệ tử này lại lắp bắp nói tiếp.

- Tẩy Nhan cổ lệnh!
Vừa nghe xong mấy từ này, sắc mặt của Đại trưởng lão biến đổi khôn cùng, ông ta trầm ngâm một hồi lâu rồi phân phó:
- Triệu kiến tất cả các trưởng lão, ngoài ra để kẻ phàm nhân kia tạm thời đợi ở đại điện.

Tẩy Nhan Cổ Phái có tổng cộng sáu vị trưởng lão, năm vị kia vừa nghe đến bốn từ “Tẩy Nhan cổ lệnh” cũng đồng thời biến đổi sắc mặt, nhanh chóng đến dự họp.

Thủy tổ của Tẩy Nhan Cổ Phái là Minh Nhân Tiên Đế từng để lại ba miếng Tẩy Nhan cổ lệnh, hai miếng cổ lệnh đã được thu hồi lại môn phái từ rất lâu rồi, nhưng không hiểu sao miếng thứ ba lại rơi vào trong tay của Tam Quỷ Gia.

Ngoại trừ vì chưởng môn đời trước dặn dò đệ tử của Tẩy Nhan Cổ Phái phải chiếu cố cho Tam Quỷ Gia ra, nguyên nhân thứ hai khiến các trưởng lão tuy ức chế nhưng vẫn không làm gì được Tam Quỷ Gia chính là việc hắn sở hữu miếng cổ lệnh cuối cùng kia.

Người cầm lệnh này đại biểu cho Minh Nhân Tiên Đế giá lâm. Người cầm lệnh này có thể đưa ra một điều kiện trao đổi với Tẩy Nhan Cổ Phái.

Ngồi ở bên trong đại điện cũ kỹ này của Tẩy Nhan Cổ Phái, nhìn pho tượng mờ ảo giữa vầng khói kia, Lý Thất Dạ không kìm được lại tưởng nhớ tới rất nhiều chuyện xưa cũ.

Pho tượng của Minh Nhân Tiên Đế đứng sừng sững trên chỗ cao nhất trong đại điện, tuy đã trải qua bao nhiêu năm tháng, nhưng pho tượng này vẫn toát ra một luồng thần uy cổ xưa tựa như xuyên thẳng chín tầng trời, khiến người ta nhìn vào không khỏi cảm thấy sùng bái.

Lý Thất Dạ nhìn ngắm pho tượng này hồi lâu, hắn cũng không biết diễn tả lòng mình như thế nào nữa. Thời gian trôi vùn vụt, Minh Nhân Tiên Đế đã qua đời mà Lý Thất Dạ hắn vẫn còn sống. Hôm nay rốt cục hắn cũng toại nguyện, đoạt lại được thân thể của mình, nhưng nhìn lại chỉ thấy cố nhân, từng người, từng người một đã chìm trong mây khói thời gian.', 9, 9)
INSERT [dbo].[Novel] ([Id], [NovelName], [Image], [Content], [AuthorId], [GenreId]) VALUES (10, N'QUỶ NHẬP MỘNG LÚC NỬA ĐÊM', N'https://img.dtruyen.com/public/images/large/quynhapmonglucnuademZxfFRcEsvN.jpg', N'<p>&quot; C&ocirc; nương, đ&atilde; đến giữa giờ Tuất rồi. &quot; Tỳ nữ A Man đi v&agrave;o trong ph&ograve;ng, nhấc m&agrave;n lụa m&agrave;u xanh mưa trời treo l&ecirc;n m&oacute;c gi&aacute; tr&ecirc;n giường, nhẹ giọng gọi thiếu nữ nằm nghi&ecirc;ng tr&ecirc;n giường.</p>

<p>&nbsp;</p>

<p>L&uacute;c n&agrave;y đ&atilde; l&agrave; đầu hạ, b&ecirc;n ngo&agrave;i trời vừa mới ho&agrave;n to&agrave;n tối xuống, b&oacute;ng đ&ecirc;m mờ ảo bao phủ khu&ocirc;n mặt của thiếu nữ, mượn &aacute;nh nến tr&ecirc;n b&agrave;n, lờ mờ có th&ecirc;̉ thấy r&otilde; diện mạo của thiếu nữ trong trướng.</p>

<p>&nbsp;</p>

<p>Thiếu nữ l&ocirc;ng m&agrave;y như n&uacute;i xa, mũi ngọc tinh xảo m&ocirc;i anh đ&agrave;o, m&aacute; đ&agrave;o da tuyết, đ&uacute;ng l&agrave; một tiểu mỹ nh&acirc;n đẹp xuất sắc.</p>

<p>&nbsp;</p>

<p>Thiếu nữ ch&iacute;nh l&agrave; c&ocirc; nương đứng h&agrave;ng thứ tư của Đ&ocirc;ng B&igrave;nh B&aacute; phủ Khương gia, t&ecirc;n chỉ một chữ Tự .</p>

<p>&nbsp;</p>

<p>A Man thấy d&aacute;ng vẻ của Khương Tự, trong l&ograve;ng liền d&acirc;ng l&ecirc;n một cơn lửa giận, bất b&igrave;nh thay cho c&ocirc; nương nh&agrave; m&igrave;nh.</p>

<p>&nbsp;</p>

<p>Vị Tam c&ocirc;ng tử của An quốc c&ocirc;ng phủ hẳn l&agrave; mắt bị m&ugrave; rồi, bằng v&agrave;o diện mạo của c&ocirc; nương tiến cung l&agrave;m nương nương cũng được, ấy thế m&agrave; hắn lại kh&ocirc;ng thấy th&iacute;ch th&uacute; cửa h&ocirc;n sự n&agrave;y, chẳng lẽ cảm thấy c&ocirc; nương kh&ocirc;ng xứng với hắn ư?</p>

<p>&nbsp;</p>

<p>Lửa giận của A Man bắt ngu&ocirc;̀n từ một buổi hội thơ ng&agrave;y xu&acirc;n.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>Hội thơ đ&oacute; l&agrave; do một &iacute;t danh m&ocirc;n c&ocirc;ng tử trong kinh tổ chức, đơn giản ch&iacute;nh l&agrave; một &iacute;t người trẻ tuổi tụ tập với nhau uống rượu ng&acirc;m thơ t&igrave;m niềm vui, đến khi rượu đ&atilde; hơi ng&agrave; say, liền c&oacute; người bắt đầu tr&ecirc;u chọc Tam c&ocirc;ng tử Qu&yacute; S&ugrave;ng Dịch của An Quốc C&ocirc;ng phủ, trong ng&ocirc;n ngữ c&oacute; phần ghen tị hắn sắp được th&agrave;nh h&ocirc;n với tiểu mỹ nh&acirc;n nổi danh trong kinh.</p>

<p>&nbsp;</p>

<p>Ai ngờ Qu&yacute; S&ugrave;ng Dịch mang theo men say tự giễu cười một tiếng, n&oacute;i c&acirc;u: &quot; Đẹp th&igrave; thế n&agrave;o , chẳng qua cũng chỉ l&agrave; một bộ t&uacute;i da th&ocirc;i, nữ tử b&acirc;y giờ lấy phẩm t&iacute;nh &ocirc;n nhu lương thiện l&agrave;m trọng.&quot;</p>

<p>&nbsp;</p>

<p>Vốn l&agrave; lời say của người trẻ tuổi, nghe một ch&uacute;t cũng liền qua đi, tỉnh rượu rồi tự nhi&ecirc;n như gi&oacute; thoảng kh&ocirc;ng dấu vết, ai ngờ lời n&agrave;y kh&ocirc;ng biết l&agrave;m sao lại truyền ra ngo&agrave;i, Tứ c&ocirc; nương của Khương gia lập tức trở th&agrave;nh tr&ograve; cười của mọi người trong l&uacute;c uống tr&agrave; ẩm rượu.</p>

<p>&nbsp;</p>

<p>Đ&ocirc;ng B&igrave;nh B&aacute; phủ vốn căn cơ n&ocirc;ng cạn, tước vị chỉ c&oacute; thể kế tục ba đời, đến thế hệ phụ th&acirc;n của Khương Tự l&agrave; Đ&ocirc;ng B&igrave;nh B&aacute; đ&atilde; l&agrave; ba đời, v&igrave; lẽ đ&oacute; m&agrave; huynh trưởng của Khương Tự ngay cả thế tử cũng chưa được xin phong.</p>

<p>&nbsp;</p>

<p>N&oacute;i c&aacute;ch kh&aacute;c, sau trăm năm nữa, Đ&ocirc;ng B&igrave;nh B&aacute; phủ sẽ từ trong v&ograve;ng luẩn quẩn hu&acirc;n qu&yacute; lui ra ngo&agrave;i, trở th&agrave;nh người b&igrave;nh thường.</p>

<p>&nbsp;</p>

<p>Ch&iacute;nh l&agrave; c&ocirc; nương một nh&agrave; như vậy, lại đ&atilde; đ&iacute;nh h&ocirc;n với An Quốc C&ocirc;ng phủ, trước kh&ocirc;ng n&oacute;i đến cơ duy&ecirc;n trong đ&oacute;, th&igrave; điều n&agrave;y cũng đủ để khiến rất nhiều người nh&igrave;n kh&ocirc;ng vừa mắt với Khương Tự tr&egrave;o cao l&ecirc;n An Quốc C&ocirc;ng phủ.</p>

<p>&nbsp;</p>

<p>Tam c&ocirc;ng tử Qu&yacute; S&ugrave;ng Dịch của An Quốc C&ocirc;ng phủ n&oacute;i nữ tử mỹ mạo kh&ocirc;ng quan trọng, hắn coi trọng t&iacute;nh t&igrave;nh hơn, c&aacute;i n&agrave;y ngụ &yacute;, c&ograve;n kh&ocirc;ng phải ch&iacute;nh l&agrave; gh&eacute;t bỏ Khương Tứ c&ocirc; nương t&iacute;nh t&igrave;nh kh&ocirc;ng tốt sao?</p>

<p>&nbsp;</p>

<p>V&ocirc; luận Qu&yacute; S&ugrave;ng Dịch n&oacute;i lời n&agrave;y l&agrave; hữu t&acirc;m hay l&agrave; v&ocirc; t&igrave;nh, th&igrave; lời n&agrave;y vừa truyền ra lập tức khiến Khương Tự mất hết mặt mũi, lại ra ngo&agrave;i tham gia tụ hội của nh&oacute;m qu&yacute; nữ, liền nghe được một bụng lời đ&agrave;m tiếu.</p>

<p>&nbsp;</p>

<p>Khương Tự l&agrave; một người n&oacute;ng t&iacute;nh, trở về liền đổ bệnh, vừa bệnh ch&iacute;nh l&agrave; nửa th&aacute;ng.</p>

<p>&nbsp;</p>

<p>Khương Tự nằm ở tr&ecirc;n giường nhắm mắt dưỡng thần bỗng nhi&ecirc;n mở mắt ra.</p>

<p>&nbsp;</p>

<p>Đ&ocirc;i mắt của n&agrave;ng đường cong cực đẹp, đến đu&ocirc;i mắt hơi nhếch l&ecirc;n, phác hoạ ra n&eacute;t phong lưu diễm lệ kh&oacute; m&agrave; diễn tả bằng lời.</p>

<p>&nbsp;</p>

<p>L&uacute;c n&agrave;y hai con ngươi cực đẹp đối diện với A Man, lộ ra &yacute; cười mờ nhạt: &quot; B&agrave;y ra d&aacute;ng vẻ muốn ăn thịt người thế l&agrave;m g&igrave;?&quot;</p>

<p>&nbsp;</p>

<p>&quot; Nghĩ đến người n&agrave;o đ&oacute; c&oacute; mắt kh&ocirc;ng tr&ograve;ng, n&ocirc; tỳ liền thấy tức thay c&ocirc; nương.&quot;</p>

<p>&nbsp;</p>

<p>&Yacute; cười nơi đ&aacute;y mắt của Khương Tự nhanh ch&oacute;ng mất đi, độ cong kh&oacute;e miệng lại s&acirc;u hơn, thản nhi&ecirc;n n&oacute;i: &quot; Người đ&oacute; c&ograve;n chưa từng gặp ta, kh&ocirc;ng thể n&oacute;i l&agrave; c&oacute; mắt kh&ocirc;ng tr&ograve;ng.&quot;</p>

<p>&nbsp;</p>

<p>&quot; C&ocirc; nương, người c&ograve;n n&oacute;i đỡ cho hắn nữa! &quot; Nh&igrave;n c&ocirc; nương chỉ mới nửa th&aacute;ng ngắn ngủi đ&atilde; gầy đi một v&ograve;ng, A Man liền thấy đau l&ograve;ng c&ugrave;ng kh&ocirc;ng phục.</p>

<p>&nbsp;</p>

<p>Nửa th&aacute;ng trước c&ocirc; nương đi Ph&oacute; Vĩnh Xương B&aacute; phủ ngắm hoa yến trở về liền kh&oacute;c lớn một trận, ngay cả vật trang tr&iacute; Ngọc Tỳ Hưu y&ecirc;u th&iacute;ch nhất cũng đập vỡ, nhắc đến Tam c&ocirc;ng tử của An Quốc C&ocirc;ng phủ c&agrave;ng hận đến nghiến răng nghiến lợi, sao b&acirc;y giờ lại thay đổi rồi?</p>

<p>&nbsp;</p>

<p>&quot; Kh&ocirc;ng phải n&oacute;i đỡ cho hắn, một c&acirc;u n&oacute;i say th&ocirc;i m&agrave;&quot;. Khương Tự chuyển mắt, nh&igrave;n về ph&iacute;a một tỳ nữ kh&aacute;c đứng ở cạnh b&igrave;nh phong A Xảo, ph&acirc;n ph&oacute; n&oacute;i, &quot; A Xảo, đi lấy hai bộ y phục mấy ng&agrave;y trước k&ecirc;u ngươi l&agrave;m ra đ&acirc;y đi.&quot;</p>

<p>&nbsp;</p>

<p>Kh&ocirc;ng bao l&acirc;u A Xảo n&acirc;ng đến hai bộ y phục, trong đ&oacute; một bộ cho A Man, một bộ kh&aacute;c th&igrave; hầu hạ Khương Tự mặc v&agrave;o.</p>

<p>&nbsp;</p>

<p>A Man vừa mặc bộ y phục l&ecirc;n người vừa căm giận n&oacute;i: &quot; Một c&acirc;u lời say m&agrave; l&agrave;m hại c&ocirc; nương bị người ta ch&ecirc; cười đ&acirc;́y.&quot;</p>

<p>&nbsp;</p>

<p>Đ&aacute;y mắt Khương Tự &yacute; lạnh s&acirc;u hơn, dứt kho&aacute;t nhắm lại con ngươi, n&oacute;i khẽ: &quot; Đ&acirc;y được t&iacute;nh l&agrave; g&igrave;?&quot;</p>

<p>&nbsp;</p>

<p>N&agrave;ng bất hạnh cả đời, ch&iacute;nh l&agrave; bắt đầu từ cuộc h&ocirc;n nh&acirc;n m&ocirc;n kh&ocirc;ng đăng hộ kh&ocirc;ng đối n&agrave;y.</p>

<p>&nbsp;</p>

<p>Nhớ khi đ&oacute;, tuổi trẻ v&ocirc; tri, n&agrave;ng l&agrave; cỡ n&agrave;o đắc &yacute; v&igrave; c&oacute; thể đ&iacute;nh h&ocirc;n với c&ocirc;ng tử của An Quốc C&ocirc;ng phủ, ai ngờ vị Tam c&ocirc;ng tử Qu&yacute; S&ugrave;ng Dịch đ&oacute; đ&atilde; sớm c&oacute; người trong l&ograve;ng.</p>

<p>&nbsp;</p>

<p>Người trong l&ograve;ng Qu&yacute; S&ugrave;ng Dịch l&agrave; một vị d&acirc;n nữ.</p>

<p>&nbsp;</p>

<p>N&agrave;ng gả qua rồi sau đ&oacute; mới dần dần biết được, vị d&acirc;n nữ đ&oacute; cơ duy&ecirc;n xảo hợp cứu được Qu&yacute; S&ugrave;ng Dịch đi ra ngo&agrave;i du ngoạn gặp nạn, Qu&yacute; S&ugrave;ng Dịch ở trong nh&agrave; nữ tử đ&oacute; dưỡng thương mấy ng&agrave;y mới được Quốc C&ocirc;ng phủ t&igrave;m thấy, hai người đ&atilde; nảy sinh t&igrave;nh cảm, sau đ&oacute; vẫn lu&ocirc;n vụng trộm qua lại.</p>

<p>&nbsp;</p>

<p>M&agrave; trong l&uacute;c n&agrave;ng c&ograve;n tr&agrave;n ngập kh&aacute;t khao c&ugrave;ng đắc &yacute; với đoạn h&ocirc;n nh&acirc;n n&agrave;y, th&igrave; Qu&yacute; S&ugrave;ng Dịch v&igrave; c&oacute; thể c&ugrave;ng người trong l&ograve;ng ở b&ecirc;n nhau m&agrave; đ&atilde; rất nhiều lần phản kh&aacute;ng trưởng bối trong nh&agrave;.</p>

<p>&nbsp;</p>

<p>H&ocirc;n sự đ&atilde; gần ngay trước mắt, An Quốc C&ocirc;ng phủ đương nhi&ecirc;n kh&ocirc;ng cho ph&eacute;p Qu&yacute; S&ugrave;ng Dịch nh&aacute;o loạn, huống chi hắn muốn cưới ch&iacute;nh l&agrave; nữ tử b&igrave;nh d&acirc;n ngay cả Khương gia cũng kh&ocirc;ng bằng, Qu&yacute; S&ugrave;ng Dịch phản kh&aacute;ng c&ugrave;ng bất m&atilde;n tự nhi&ecirc;n kh&ocirc;ng hề c&oacute; ch&uacute;t t&aacute;c dụng n&agrave;o.</p>

<p>&nbsp;</p>

<p>Khương Tự nghĩ đến c&acirc;u n&oacute;i l&uacute;c say rượu của Qu&yacute; S&ugrave;ng Dịch, liền cảm thấy khi đ&oacute; m&igrave;nh thật ngu xuẩn, tức giận qua đi lại nhịn kh&ocirc;ng được thay hắn t&igrave;m l&yacute; do, cho l&agrave; hắn kh&ocirc;ng để &yacute; thế tục, kh&ocirc;ng phải như những nam tử dung tục chỉ để &yacute; dung mạo của nữ tử, n&oacute;i c&acirc;u n&oacute;i kia chỉ l&agrave; việc n&agrave;o ra việc đ&oacute; th&ocirc;i.</p>

<p>&nbsp;</p>

<p>Qua việc n&agrave;o ra việc đ&oacute; của hắn, ngay tại đ&ecirc;m nay, tối mười lăm th&aacute;ng tư năm mười t&aacute;m Cảnh Minh, vị qu&yacute; c&ocirc;ng tử danh m&ocirc;n kh&ocirc;ng để &yacute; thế tục n&agrave;y lại c&ugrave;ng người trong l&ograve;ng c&ugrave;ng nhau chạy đến ven hồ Mạc Ưu, nhảy hồ tự vẫn.</p>

<p>&nbsp;</p>

<p>Sau đ&oacute; Qu&yacute; S&ugrave;ng Dịch được cứu l&ecirc;n, người trong l&ograve;ng của hắn lại hương ti&ecirc;u ngọc vẫn.</p>

<p>&nbsp;</p>

<p>V&igrave; che lấp chuyện n&agrave;y, h&ocirc;n sự m&agrave; bọn họ vốn định v&agrave;o đầu m&ugrave;a đ&ocirc;ng tự nhi&ecirc;n lại tổ chức trước thời hạn mấy th&aacute;ng, m&agrave; từ sau khoảng thời gian n&agrave;ng l&ograve;ng tr&agrave;n đầy vui vẻ gả qua cho đến khi Qu&yacute; S&ugrave;ng Dịch ngo&agrave;i &yacute; muốn bỏ m&igrave;nh, th&igrave; trong gần một năm thời gian đ&oacute;, người nam nh&acirc;n như &aacute;nh trăng s&aacute;ng n&agrave;y đều chưa từng chạm v&agrave;o n&agrave;ng.</p>

<p>&nbsp;</p>

<p>Rồi sau đ&oacute;, c&agrave;ng nhiều biến cố xảy ra hơn, cho đến khi n&agrave;ng chết thảm rồi lại mở mắt ra, về lại năm mười lăm tuổi n&agrave;y.</p>

<p>&nbsp;</p>

<p>C&oacute; thể n&oacute;i, tất cả mọi bất hạnh của n&agrave;ng đều bắt đầu từ l&uacute;c gả cho Qu&yacute; S&ugrave;ng Dịch, m&agrave; b&acirc;y giờ có th&ecirc;̉ l&agrave;m lại lần nữa, việc cấp b&aacute;ch của n&agrave;ng ch&iacute;nh l&agrave; giải quyết cọc h&ocirc;n sự n&agrave;y, từ đ&acirc;y ph&acirc;n r&otilde; giới hạn với qu&yacute; Tam c&ocirc;ng tử kh&ocirc;ng lưu thế tục, với An Quốc C&ocirc;ng phủ cao kh&ocirc;ng thể chạm, cả đời kh&ocirc;ng bao giờ qua lại với nhau nữa!</p>

<p>&nbsp;</p>

<p>Trong khoảnh khắc Khương Tự đ&atilde; mặc xong y phục rồi ra ngo&agrave;i, gật đầu với A Man: &quot; A Man, đi th&ocirc;i.&quot;</p>

<p>&nbsp;</p>

<p>A Man đem tay nải đặt ở tr&ecirc;n ghế x&aacute;ch l&ecirc;n.</p>

<p>&nbsp;</p>

<p>A Xảo do dự một ch&uacute;t, ngăn lại Khương Tự rồi chần chừ n&oacute;i: &quot; C&ocirc; nương, đ&atilde; trễ thế n&agrave;y, c&ocirc; nương thật sự muốn đi ra ngo&agrave;i sao? Chỗ nhị m&ocirc;n đ&atilde; kh&oacute;a rồi--&quot;</p>

<p>&nbsp;</p>

<p>&quot; Kh&ocirc;ng sao, những c&aacute;i đ&oacute; đều chuẩn bị xong cả rồi. A Xảo, ngươi tr&ocirc;ng coi s&acirc;n viện cho tốt l&agrave; được.&quot; Khương Tự n&eacute;t mặt ki&ecirc;n quyết.</p>

<p>&nbsp;</p>

<p>Nếu như c&oacute; thể, n&agrave;ng đương nhi&ecirc;n kh&ocirc;ng muốn đ&ecirc;m khuya đi ra ngo&agrave;i mạo hiểm, nhưng m&agrave; hiện giờ trong phủ ngoại trừ hai thiếp th&acirc;n nha ho&agrave;n, th&igrave; n&agrave;ng cũng kh&ocirc;ng t&igrave;m thấy người n&agrave;o c&oacute; thể tin được để hỗ trợ cả.</p>

<p>&nbsp;</p>

<p>A Xảo thấy vậy đ&agrave;nh phải gật đầu thật mạnh, n&oacute;i một tiếng &quot; c&ocirc; nương y&ecirc;n t&acirc;m&quot;, rồi tr&aacute;nh đường.</p>

<p>&nbsp;</p>

<p>Khương Tự mang theo A Man lặng lẽ ra khỏi Hải Đường Cư chỗ ở của n&agrave;ng, mượn trăm hoa tươi tốt che lấp xuy&ecirc;n qua vườn hoa c&ugrave;ng tr&ugrave;ng tr&ugrave;ng cổng v&ograve;m, đi v&agrave;o nhị m&ocirc;n.</p>

<p>&nbsp;</p>

<p>&quot; C&ocirc; nương -- &quot; A Man nh&igrave;n c&aacute;nh cửa đ&oacute;ng chặt, thấp giọng gọi một tiếng.</p>
', 1, 5)
SET IDENTITY_INSERT [dbo].[Novel] OFF
GO
ALTER TABLE [dbo].[Novel]  WITH CHECK ADD FOREIGN KEY([AuthorId])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Novel]  WITH CHECK ADD FOREIGN KEY([GenreId])
REFERENCES [dbo].[Genre] ([Id])
GO
USE [master]
GO
ALTER DATABASE [WebNovel] SET  READ_WRITE 
GO
