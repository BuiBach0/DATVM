USE [master]
GO
/****** Object:  Database [BLOCKCHAIN]    Script Date: 10/31/2020 11:32:22 AM ******/
CREATE DATABASE [BLOCKCHAIN] ON  PRIMARY 
( NAME = N'BLOCKCHAIN', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\BLOCKCHAIN.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BLOCKCHAIN_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\BLOCKCHAIN_log.ldf' , SIZE = 816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BLOCKCHAIN].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BLOCKCHAIN] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BLOCKCHAIN] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BLOCKCHAIN] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BLOCKCHAIN] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BLOCKCHAIN] SET ARITHABORT OFF 
GO
ALTER DATABASE [BLOCKCHAIN] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BLOCKCHAIN] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BLOCKCHAIN] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BLOCKCHAIN] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BLOCKCHAIN] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BLOCKCHAIN] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BLOCKCHAIN] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BLOCKCHAIN] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BLOCKCHAIN] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BLOCKCHAIN] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BLOCKCHAIN] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BLOCKCHAIN] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BLOCKCHAIN] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BLOCKCHAIN] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BLOCKCHAIN] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BLOCKCHAIN] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BLOCKCHAIN] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BLOCKCHAIN] SET RECOVERY FULL 
GO
ALTER DATABASE [BLOCKCHAIN] SET  MULTI_USER 
GO
ALTER DATABASE [BLOCKCHAIN] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BLOCKCHAIN] SET DB_CHAINING OFF 
GO
EXEC sys.sp_db_vardecimal_storage_format N'BLOCKCHAIN', N'ON'
GO
USE [BLOCKCHAIN]
GO
/****** Object:  Table [dbo].[ADMIN_USER]    Script Date: 10/31/2020 11:32:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADMIN_USER](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ACCOUNT] [nvarchar](200) NULL,
	[PASSWORD] [nvarchar](200) NULL,
	[MA_NHAN_SU] [int] NULL,
	[NAME] [nvarchar](100) NULL,
	[PHONE] [nvarchar](30) NULL,
	[EMAIL] [nvarchar](500) NULL,
	[AVATAR] [nvarchar](200) NULL,
	[ID_PHONG_BAN] [int] NULL,
	[NGAY_TAO] [datetime] NULL,
	[NGUOI_TAO] [nvarchar](200) NULL,
	[NGAY_CAP_NHAT] [datetime] NULL,
	[NGUOI_CAP_NHAT] [nvarchar](200) NULL,
	[SESSION_TOKEN] [nvarchar](500) NULL,
	[SALT] [char](3) NULL,
	[IS_ADMIN] [bit] NULL,
	[TRANG_THAI] [int] NULL,
	[IS_DELETE] [bit] NULL,
 CONSTRAINT [PK__ADMIN_US__3214EC2739901ACE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BANNER]    Script Date: 10/31/2020 11:32:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BANNER](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TITLE] [nvarchar](300) NULL,
	[TITLE_EN] [nvarchar](300) NULL,
	[SLUG] [nvarchar](300) NULL,
	[SLUG_EN] [nvarchar](300) NULL,
	[DESCRIPTION] [nvarchar](500) NULL,
	[DESCRIPTION_EN] [nvarchar](500) NULL,
	[POSITION] [int] NULL,
	[HEADER] [bit] NULL,
	[ORDER] [int] NULL,
	[CREATED_DATE] [datetime] NULL,
	[UPDATED_DATE] [datetime] NULL,
	[ADMIN_CREATED] [nvarchar](300) NULL,
	[ADMIN_UPDATED] [nvarchar](300) NULL,
	[STATUS] [tinyint] NULL,
	[ISDELETE] [bit] NULL,
	[IMAGE] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CATEGORY]    Script Date: 10/31/2020 11:32:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CATEGORY](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TITLE] [nvarchar](300) NULL,
	[TITLE_EN] [nvarchar](300) NULL,
	[SLUG] [nvarchar](300) NULL,
	[SLUG_EN] [nvarchar](300) NULL,
	[IMAGE] [nvarchar](500) NULL,
	[DESCRIPTION] [nvarchar](1000) NULL,
	[DESCRIPTION_EN] [nvarchar](1000) NULL,
	[ORDER] [int] NULL,
	[CREATED_DATE] [datetime] NULL,
	[UPDATED_DATE] [datetime] NULL,
	[ADMIN_CREATED] [nvarchar](300) NULL,
	[ADMIN_UPDATED] [nvarchar](300) NULL,
	[STATUS] [tinyint] NULL,
	[ISDELETE] [bit] NULL,
	[POSITION_ID] [int] NULL,
	[SUB_TITLE] [nvarchar](500) NULL,
	[SUB_TITLE_EN] [nvarchar](500) NULL,
 CONSTRAINT [PK__CATEGORY__3214EC27A5CABB7C] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[COMPANY_ADDRESS]    Script Date: 10/31/2020 11:32:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COMPANY_ADDRESS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TITLE] [nvarchar](300) NULL,
	[DESCRIPTION] [nvarchar](500) NULL,
	[ORDER] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[COMPANY_INFOR]    Script Date: 10/31/2020 11:32:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COMPANY_INFOR](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TITLE] [nvarchar](300) NULL,
	[PHONE] [nvarchar](50) NULL,
	[EMAIL] [nvarchar](100) NULL,
	[COMPANY] [nvarchar](300) NULL,
	[DESCRIPTION] [nvarchar](500) NULL,
	[INSTAGRAM] [nvarchar](500) NULL,
	[TWITTER] [nvarchar](500) NULL,
	[ORDER] [int] NULL,
	[CREATED_DATE] [datetime] NULL,
	[UPDATED_DATE] [datetime] NULL,
	[ADMIN_CREATED] [nvarchar](300) NULL,
	[ADMIN_UPDATED] [nvarchar](300) NULL,
	[STATUS] [tinyint] NULL,
	[ISDELETE] [bit] NULL,
	[DESCRIPTION_EN] [nvarchar](500) NULL,
	[TITLE_EN] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CONTACT]    Script Date: 10/31/2020 11:32:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CONTACT](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NAME] [nvarchar](300) NULL,
	[PHONE] [nvarchar](50) NULL,
	[EMAIL] [nvarchar](100) NULL,
	[COMPANY] [nvarchar](300) NULL,
	[DESCRIPTION] [nvarchar](500) NULL,
	[ORDER] [int] NULL,
	[CREATED_DATE] [datetime] NULL,
	[UPDATED_DATE] [datetime] NULL,
	[ADMIN_CREATED] [nvarchar](300) NULL,
	[ADMIN_UPDATED] [nvarchar](300) NULL,
	[STATUS] [tinyint] NULL,
	[ISDELETE] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CUSTOMER]    Script Date: 10/31/2020 11:32:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CUSTOMER](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NAME] [nvarchar](100) NULL,
	[CODE] [nvarchar](50) NULL,
	[PHONE] [nchar](12) NULL,
	[COMPANY] [nvarchar](100) NULL,
	[EMAIL] [nvarchar](50) NULL,
	[DESCRIPTIONS] [nvarchar](1000) NULL,
	[CHECK] [bit] NULL,
	[CREATE_DATE] [date] NULL,
	[UPDATE_DATE] [date] NULL,
	[ADMIN_CREATE] [nvarchar](50) NULL,
	[ADMIN_UPDATE] [nvarchar](50) NULL,
 CONSTRAINT [PK_CUSTOMER] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LEADER_TEAM]    Script Date: 10/31/2020 11:32:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LEADER_TEAM](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NAME] [nvarchar](300) NULL,
	[PHONE] [nvarchar](50) NULL,
	[EMAIL] [nvarchar](100) NULL,
	[COMPANY] [nvarchar](300) NULL,
	[DESCRIPTION] [nvarchar](500) NULL,
	[INSTAGRAM] [nvarchar](500) NULL,
	[TWITTER] [nvarchar](500) NULL,
	[ORDER] [int] NULL,
	[CREATED_DATE] [datetime] NULL,
	[UPDATED_DATE] [datetime] NULL,
	[ADMIN_CREATED] [nvarchar](300) NULL,
	[ADMIN_UPDATED] [nvarchar](300) NULL,
	[STATUS] [tinyint] NULL,
	[ISDELETE] [bit] NULL,
	[IMAGE] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NEWS]    Script Date: 10/31/2020 11:32:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NEWS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TITLE] [nvarchar](300) NULL,
	[TITLE_EN] [nvarchar](300) NULL,
	[SUB_TITLE] [nvarchar](300) NULL,
	[SUB_TITLE_EN] [nvarchar](300) NULL,
	[SLUG] [nvarchar](300) NULL,
	[SLUG_EN] [nvarchar](300) NULL,
	[IMAGE] [nvarchar](500) NULL,
	[DESCRIPTION] [nvarchar](1000) NULL,
	[DESCRIPTION_EN] [nvarchar](1000) NULL,
	[CATEGORY_ID] [int] NULL,
	[ORDER] [int] NULL,
	[CREATED_DATE] [datetime] NULL,
	[UPDATED_DATE] [datetime] NULL,
	[ADMIN_CREATED] [nvarchar](300) NULL,
	[ADMIN_UPDATED] [nvarchar](300) NULL,
	[STATUS] [tinyint] NULL,
	[ISDELETE] [bit] NULL,
 CONSTRAINT [PK__NEWS__3214EC273283995B] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[POSITION]    Script Date: 10/31/2020 11:32:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[POSITION](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CODE] [nvarchar](100) NULL,
	[TITLE] [nvarchar](500) NULL,
	[DESC] [nvarchar](500) NULL,
	[STATUS] [tinyint] NULL,
 CONSTRAINT [PK_POSITION] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[ADMIN_USER] ON 

INSERT [dbo].[ADMIN_USER] ([ID], [ACCOUNT], [PASSWORD], [MA_NHAN_SU], [NAME], [PHONE], [EMAIL], [AVATAR], [ID_PHONG_BAN], [NGAY_TAO], [NGUOI_TAO], [NGAY_CAP_NHAT], [NGUOI_CAP_NHAT], [SESSION_TOKEN], [SALT], [IS_ADMIN], [TRANG_THAI], [IS_DELETE]) VALUES (4, N'123', N'96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-10-22 20:36:09.963' AS DateTime), NULL, CAST(N'2020-10-22 20:36:09.963' AS DateTime), NULL, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[ADMIN_USER] ([ID], [ACCOUNT], [PASSWORD], [MA_NHAN_SU], [NAME], [PHONE], [EMAIL], [AVATAR], [ID_PHONG_BAN], [NGAY_TAO], [NGUOI_TAO], [NGAY_CAP_NHAT], [NGUOI_CAP_NHAT], [SESSION_TOKEN], [SALT], [IS_ADMIN], [TRANG_THAI], [IS_DELETE]) VALUES (5, N'Administrator', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-10-22 20:37:47.717' AS DateTime), NULL, CAST(N'2020-10-22 20:37:47.717' AS DateTime), NULL, NULL, NULL, NULL, 1, NULL)
SET IDENTITY_INSERT [dbo].[ADMIN_USER] OFF
SET IDENTITY_INSERT [dbo].[BANNER] ON 

INSERT [dbo].[BANNER] ([ID], [TITLE], [TITLE_EN], [SLUG], [SLUG_EN], [DESCRIPTION], [DESCRIPTION_EN], [POSITION], [HEADER], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE], [IMAGE]) VALUES (4, N'Develop High-tech products for Enterprise ', N'Phát triển các sản phẩm công nghệ cao cho Doanh nghiệp', N'develop-high-tech-products-for-enterprise', N'phat-trien-cac-san-pham-cong-nghe-cao-cho-doanh-nghiep', N'We provide excellent development services in a wide range of business industries with distributed systems based on Blockchain technology', N'Chúng tôi cung cấp các dịch vụ phát triển tuyệt vời trong một loạt các ngành kinh doanh với các hệ thống phân tán dựa trên công nghệ Blockchain', NULL, NULL, 1, CAST(N'2020-10-07 00:00:00.000' AS DateTime), CAST(N'2020-10-07 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL, N'/Content/uploads/product/banner-homepage.jpg')
INSERT [dbo].[BANNER] ([ID], [TITLE], [TITLE_EN], [SLUG], [SLUG_EN], [DESCRIPTION], [DESCRIPTION_EN], [POSITION], [HEADER], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE], [IMAGE]) VALUES (7, N'Our Vision', N'Tầm nhìn của chúng tôi', N'our-vision', N'tam-nhin-cua-chung-toi', N'We strive to help change the
                world with Blockchain technology', N'Chúng tôi cố gắng giúp thay đổi
                 thế giới với công nghệ Blockchain', NULL, NULL, 5, CAST(N'2020-10-08 00:00:00.000' AS DateTime), CAST(N'2020-10-08 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL, N'/Content/uploads/product/Team-1.png')
INSERT [dbo].[BANNER] ([ID], [TITLE], [TITLE_EN], [SLUG], [SLUG_EN], [DESCRIPTION], [DESCRIPTION_EN], [POSITION], [HEADER], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE], [IMAGE]) VALUES (8, N'CONTACT US', N'LIÊN HỆ VỚI CHÚNG TÔI', N'contact-us', N'lien-he-voi-chung-toi', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book', N'Lorem Ipsum chỉ đơn giản là văn bản giả của ngành in ấn và sắp chữ. Lorem Ipsum đã trở thành văn bản giả tiêu chuẩn của ngành kể từ những năm 1500, khi một máy in không xác định lấy một dãy loại và xáo trộn nó để tạo ra một cuốn sách mẫu.', NULL, NULL, 6, CAST(N'2020-10-08 00:00:00.000' AS DateTime), CAST(N'2020-10-08 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL, N'/Content/uploads/product/Contact-1.png')
INSERT [dbo].[BANNER] ([ID], [TITLE], [TITLE_EN], [SLUG], [SLUG_EN], [DESCRIPTION], [DESCRIPTION_EN], [POSITION], [HEADER], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE], [IMAGE]) VALUES (9, N'We respond with all Blockchain                         solutions for customer issues                         and innovation', N'CHÚNG TÔI ĐÁP ỨNG VỚI TẤT CẢ CÁC GIẢI PHÁP BLOCKCHAIN CHO CÁC VẤN ĐỀ VÀ ĐỔI MỚI CỦA KHÁCH HÀNG', N'we-respond-with-all-blockchain-------------------------solutions-for-customer-issues-------------------------and-innovation', N'chung-toi-dap-ung-voi-tat-ca-cac-giai-phap-blockchain-cho-cac-van-de-va-doi-moi-cua-khach-hang', N'From system design, development and operation.
                        Since we are able to consistently carry out all
                        phases of development, you can consult us about
                        everything. With application development technology,
                        IT infrastructure system construction technology, embedded technology,
                        and advanced technology as the core, we support
                        IT solutions to solve customer problems.', N'Từ thiết kế, phát triển và vận hành hệ thống. Vì chúng tôi có thể thực hiện tất cả các giai đoạn phát triển một cách nhất quán, bạn có thể tham khảo ý kiến của chúng tôi về mọi thứ. Với công nghệ phát triển ứng dụng, công nghệ xây dựng hệ thống hạ tầng CNTT, công nghệ nhúng và công nghệ tiên tiến làm cốt lõi, chúng tôi hỗ trợ các giải pháp CNTT giải quyết các vấn đề của khách hàng.', NULL, NULL, 2, CAST(N'2020-10-08 00:00:00.000' AS DateTime), CAST(N'2020-10-08 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL, N'/Content/uploads/product/Why-choose-us-1.png')
INSERT [dbo].[BANNER] ([ID], [TITLE], [TITLE_EN], [SLUG], [SLUG_EN], [DESCRIPTION], [DESCRIPTION_EN], [POSITION], [HEADER], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE], [IMAGE]) VALUES (16, N'INDUSTRIES', N'LĨNH VỰC', N'industries', N'linh-vuc', N'Unlock new value, build trust and bring
                                    transparency across industries and businesses with the power of Blockchain', N'Mở khóa giá trị mới, xây dựng niềm tin và mang lại
                                     minh bạch giữa các ngành và doanh nghiệp với sức mạnh của Blockchain', NULL, NULL, 3, CAST(N'2020-10-16 00:00:00.000' AS DateTime), CAST(N'2020-10-16 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL, N'/Content/uploads/product/Industries-1.png')
INSERT [dbo].[BANNER] ([ID], [TITLE], [TITLE_EN], [SLUG], [SLUG_EN], [DESCRIPTION], [DESCRIPTION_EN], [POSITION], [HEADER], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE], [IMAGE]) VALUES (17, N'OUR WORKS', N'VIỆC LÀM', N'our-works', N'viec-lam', N'                                                               
 Lorem Ipsum is simply dummy text of the printing and typesetting
                                        industry. Lorem Ipsum has been the industry''s standard dummy text
                                        ever since               
', N'Lorem Ipsum chỉ đơn giản là văn bản giả của quá trình in ấn và sắp chữ
                                         ngành công nghiệp. Lorem Ipsum đã là văn bản giả tiêu chuẩn của ngành
                                         kể từ đó', NULL, NULL, 4, CAST(N'2020-10-16 00:00:00.000' AS DateTime), CAST(N'2020-10-16 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL, N'/Content/uploads/product/Work-1.png')
INSERT [dbo].[BANNER] ([ID], [TITLE], [TITLE_EN], [SLUG], [SLUG_EN], [DESCRIPTION], [DESCRIPTION_EN], [POSITION], [HEADER], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE], [IMAGE]) VALUES (18, N'OUR PARTNERS', N'CỘNG SỰ CỦA CHÚNG TA', N'our-partners', N'cong-su-cua-chung-ta', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book', N'Lorem Ipsum chỉ đơn giản là văn bản giả của ngành in ấn và sắp chữ. Lorem Ipsum đã trở thành văn bản giả tiêu chuẩn của ngành kể từ những năm 1500, khi một máy in không xác định lấy một dãy loại và xáo trộn nó để tạo ra một cuốn sách mẫu.', NULL, NULL, 7, CAST(N'2020-10-16 00:00:00.000' AS DateTime), CAST(N'2020-10-16 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL, N'/Content/uploads/product/Team-2(1).png')
INSERT [dbo].[BANNER] ([ID], [TITLE], [TITLE_EN], [SLUG], [SLUG_EN], [DESCRIPTION], [DESCRIPTION_EN], [POSITION], [HEADER], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE], [IMAGE]) VALUES (20, N'Subscribe to our Newsletter', N'Theo dõi bản tin của chúng tôi', N'subscribe-to-our-newsletter', N'theo-doi-ban-tin-cua-chung-toi', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to.', N'Lorem Ipsum chỉ đơn giản là văn bản giả của ngành in ấn và sắp chữ. Lorem Ipsum đã trở thành văn bản giả tiêu chuẩn của ngành kể từ những năm 1500, khi một máy in không xác định lấy một dãy loại và xáo trộn nó.', NULL, NULL, 8, CAST(N'2020-10-16 00:00:00.000' AS DateTime), CAST(N'2020-10-16 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL, N'/Content/uploads/product/Contact-3.png')
SET IDENTITY_INSERT [dbo].[BANNER] OFF
SET IDENTITY_INSERT [dbo].[CATEGORY] ON 

INSERT [dbo].[CATEGORY] ([ID], [TITLE], [TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE], [POSITION_ID], [SUB_TITLE], [SUB_TITLE_EN]) VALUES (3, N'WELCOME TO TVM BLOCKCHAIN', N'CHÀO MỪNG BẠN ĐẾN VỚI TVM BLOCKCHAIN', N'welcome-to-tvm-blockchain', N'chao-mung-ban-den-voi-tvm-blockchain', N'/Content/images/no-image-available-thumb(1349x760-crop).jpg', N'<p>Thank you for visiting us If you are looking for a partner who is able to do software development tasks professionally, definitely we are your SMART decision. Work with us and you won&rsquo;t be disappointed.</p>
', N'<p>Cảm ơn bạn đ&atilde; gh&eacute; thăm ch&uacute;ng t&ocirc;i Nếu bạn đang t&igrave;m kiếm một đối t&aacute;c c&oacute; thể l&agrave;m c&aacute;c c&ocirc;ng việc ph&aacute;t triển phần mềm một c&aacute;ch chuy&ecirc;n nghiệp, chắc chắn ch&uacute;ng t&ocirc;i l&agrave; quyết định TH&Ocirc;NG MINH của bạn. L&agrave;m việc với ch&uacute;ng t&ocirc;i v&agrave; bạn sẽ kh&ocirc;ng phải thất vọng.</p>
', 1, CAST(N'2020-10-20 00:00:00.000' AS DateTime), CAST(N'2020-10-20 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL, 1, NULL, NULL)
INSERT [dbo].[CATEGORY] ([ID], [TITLE], [TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE], [POSITION_ID], [SUB_TITLE], [SUB_TITLE_EN]) VALUES (4, N'WE ARE ALWAYS LOOKING FOR COOPERATION FOR MUTUAL DEVELOPMENT', N'CHÚNG TÔI LUÔN TÌM KIẾM SỰ HỢP TÁC ĐỂ PHÁT TRIỂN', N'we-are-always-looking-for-cooperation-for-mutual-development', N'chung-toi-luon-tim-kiem-su-hop-tac-de-phat-trien', N'/Content/uploads/product/cooperation.png', NULL, NULL, 2, CAST(N'2020-10-20 00:00:00.000' AS DateTime), CAST(N'2020-10-20 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL, 1, NULL, NULL)
INSERT [dbo].[CATEGORY] ([ID], [TITLE], [TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE], [POSITION_ID], [SUB_TITLE], [SUB_TITLE_EN]) VALUES (5, N'OUR SERVICES', N'DỊCH VỤ CỦA CHÚNG TÔI', N'our-services', N'dich-vu-cua-chung-toi', N'/Content/images/no-image-available-thumb(1349x760-crop).jpg', NULL, NULL, 3, CAST(N'2020-10-20 00:00:00.000' AS DateTime), CAST(N'2020-10-20 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL, 1, NULL, NULL)
INSERT [dbo].[CATEGORY] ([ID], [TITLE], [TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE], [POSITION_ID], [SUB_TITLE], [SUB_TITLE_EN]) VALUES (6, N'RESEARCH AND DEVELOPMENT', N'NGHIÊN CỨU VÀ PHÁT TRIỂN', N'research-and-development', N'nghien-cuu-va-phat-trien', N'/Content/uploads/product/research1.png', N'<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book</p>
', N'<p>Lorem Ipsum chỉ đơn giản l&agrave; văn bản giả của ng&agrave;nh in ấn v&agrave; sắp chữ. Lorem Ipsum đ&atilde; trở th&agrave;nh văn bản giả ti&ecirc;u chuẩn của ng&agrave;nh kể từ những năm 1500, khi một m&aacute;y in kh&ocirc;ng x&aacute;c định lấy một d&atilde;y loại v&agrave; x&aacute;o trộn n&oacute; để tạo ra một cuốn s&aacute;ch mẫu.</p>
', 4, CAST(N'2020-10-20 00:00:00.000' AS DateTime), CAST(N'2020-10-20 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL, 1, NULL, NULL)
INSERT [dbo].[CATEGORY] ([ID], [TITLE], [TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE], [POSITION_ID], [SUB_TITLE], [SUB_TITLE_EN]) VALUES (9, N'OUR PARTNERS', N'CỘNG SỰ CỦA CHÚNG TA', N'our-partners', N'cong-su-cua-chung-ta', N'/Content/images/no-image-available-thumb(1349x760-crop).jpg', NULL, NULL, 5, CAST(N'2020-10-20 00:00:00.000' AS DateTime), CAST(N'2020-10-20 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL, 1, NULL, NULL)
INSERT [dbo].[CATEGORY] ([ID], [TITLE], [TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE], [POSITION_ID], [SUB_TITLE], [SUB_TITLE_EN]) VALUES (10, N'JOIN US!', N'THAM GIA VỚI CHÚNG TÔI', N'join-us-', N'tham-gia-voi-chung-toi', N'/Content/images/no-image-available-thumb(1349x760-crop).jpg', N'<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book</p>
', N'<p>Lorem Ipsum chỉ đơn giản l&agrave; văn bản giả của ng&agrave;nh in ấn v&agrave; sắp chữ. Lorem Ipsum đ&atilde; trở th&agrave;nh văn bản giả ti&ecirc;u chuẩn của ng&agrave;nh kể từ những năm 1500, khi một m&aacute;y in kh&ocirc;ng x&aacute;c định lấy một d&atilde;y loại v&agrave; x&aacute;o trộn n&oacute; để tạo ra một cuốn s&aacute;ch mẫu.</p>
', 6, CAST(N'2020-10-20 00:00:00.000' AS DateTime), CAST(N'2020-10-20 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL, 1, NULL, NULL)
INSERT [dbo].[CATEGORY] ([ID], [TITLE], [TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE], [POSITION_ID], [SUB_TITLE], [SUB_TITLE_EN]) VALUES (11, N'INDUSTRIES', N'LĨNH VỰC', N'industries', N'linh-vuc', N'/Content/images/no-image-available-thumb(1349x760-crop).jpg', N'<p>INDUSTRIES</p>
', N'<p>LĨNH VỰC</p>
', 1, CAST(N'2020-10-20 00:00:00.000' AS DateTime), CAST(N'2020-10-20 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL, 3, NULL, NULL)
INSERT [dbo].[CATEGORY] ([ID], [TITLE], [TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE], [POSITION_ID], [SUB_TITLE], [SUB_TITLE_EN]) VALUES (26, N'WHAT IS BLOCKCHAIN', N'THẾ NÀO LÀ BLOCKCHAIN?', N'what-is-blockchain', N'the-nao-la-blockchain-', N'/Content/images/no-image-available-thumb(1349x760-crop).jpg', N'<ul>
	<li>
	<p>Blockchain is a system of recording information in a way that makes it difficult or impossible to change, hack, or cheat the system.</p>
	</li>
	<li>
	<p>A blockchain is essentially a digital ledger of transactions that is duplicated and distributed across the entire network of computer systems on the blockchain. Each block in the chain contains a number of transactions, and every time a new transaction occurs on the blockchain, a record of that transaction is added to every participant&rsquo;s ledger. The decentralised database managed by multiple participants is known as Distributed Ledger Technology (DLT).</p>
	</li>
</ul>
', N'<ul>
	<li>
	<p>Blockchain là một hệ thống ghi lại thông tin theo cách gây khó khăn hoặc không thể thay đổi, hack hoặc gian lận hệ thống.</p>
	</li>
	<li>
	<p>Blockchain về cơ bản là một sổ cái kỹ thuật số của các giao dịch được sao chép và phân phối trên toàn bộ mạng lưới hệ thống máy tính trên blockchain. Mỗi khối trong chuỗi chứa một số giao dịch và mỗi khi một giao dịch mới xảy ra trên blockchain, bản ghi của giao dịch đó sẽ được thêm vào sổ cái của mọi người tham gia. Cơ sở dữ liệu phi tập trung được quản lý bởi nhiều người tham gia được gọi là Công nghệ sổ cái phân tán (DLT).</p>
	</li>
</ul>
', 1, CAST(N'2020-10-21 00:00:00.000' AS DateTime), CAST(N'2020-10-21 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL, 2, NULL, NULL)
INSERT [dbo].[CATEGORY] ([ID], [TITLE], [TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE], [POSITION_ID], [SUB_TITLE], [SUB_TITLE_EN]) VALUES (27, N'BUSINESS VALUES OF BLOCKCHAIN', N'GIÁ TRỊ KINH TẾ CỦA BLOCKCHAIN', N'business-values-of-blockchain', N'gia-tri-kinh-te-cua-blockchain', N'/Content/images/no-image-available-thumb(1349x760-crop).jpg', NULL, NULL, 2, CAST(N'2020-10-21 00:00:00.000' AS DateTime), CAST(N'2020-10-21 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL, 2, NULL, NULL)
INSERT [dbo].[CATEGORY] ([ID], [TITLE], [TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE], [POSITION_ID], [SUB_TITLE], [SUB_TITLE_EN]) VALUES (28, N'WHAT CAN WE DO?', N' CHÚNG TA CÓ THỂ LÀM GÌ?', N'what-can-we-do-', N'chung-ta-co-the-lam-gi-', N'/Content/images/no-image-available-thumb(1349x760-crop).jpg', N'<p>Our blockchain consultants help you analyze the potential of blockchain for your business case, identify the right technology that meets your requirements, create a roadmap for development and build a POC. We have over 20 enterprises achieve success with our training workshops, prototype design and blockchain proof of concepts.</p>
', N'<p>C&aacute;c chuy&ecirc;n gia tư vấn blockchain của ch&uacute;ng t&ocirc;i gi&uacute;p bạn ph&acirc;n t&iacute;ch tiềm năng của blockchain cho trường hợp kinh doanh của bạn, x&aacute;c định c&ocirc;ng nghệ ph&ugrave; hợp đ&aacute;p ứng y&ecirc;u cầu của bạn, tạo lộ tr&igrave;nh ph&aacute;t triển v&agrave; x&acirc;y dựng POC. Ch&uacute;ng t&ocirc;i c&oacute; hơn 20 doanh nghiệp đạt được th&agrave;nh c&ocirc;ng với c&aacute;c hội thảo đ&agrave;o tạo, thiết kế nguy&ecirc;n mẫu v&agrave; bằng chứng về c&aacute;c kh&aacute;i niệm blockchain.</p>
', 3, CAST(N'2020-10-21 00:00:00.000' AS DateTime), CAST(N'2020-10-21 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL, 2, N'WHAT CAN WE DO?', N'CHÚNG TA CÓ THỂ LÀM GÌ?')
INSERT [dbo].[CATEGORY] ([ID], [TITLE], [TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE], [POSITION_ID], [SUB_TITLE], [SUB_TITLE_EN]) VALUES (29, N'PROJECTS', N'DỰ ÁN', N'projects', N'du-an', N'/Content/images/no-image-available-thumb(1349x760-crop).jpg', NULL, NULL, 4, CAST(N'2020-10-21 00:00:00.000' AS DateTime), CAST(N'2020-10-21 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL, 2, NULL, NULL)
INSERT [dbo].[CATEGORY] ([ID], [TITLE], [TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE], [POSITION_ID], [SUB_TITLE], [SUB_TITLE_EN]) VALUES (30, N'TEAM NO TITLE 1', N'TEAM NO TITLE 1', N'team-no-title-1', N'team-no-title-1', N'/Content/images/no-image-available-thumb(1349x760-crop).jpg', NULL, NULL, 1, CAST(N'2020-10-21 14:11:24.763' AS DateTime), CAST(N'2020-10-21 14:11:24.763' AS DateTime), NULL, NULL, 1, NULL, 5, N'NO TITLE 1', NULL)
INSERT [dbo].[CATEGORY] ([ID], [TITLE], [TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE], [POSITION_ID], [SUB_TITLE], [SUB_TITLE_EN]) VALUES (31, N'TEAM NO TITLE 2', N'TEAM NO TITLE 2', N'team-no-title-2', N'team-no-title-2', N'/Content/images/no-image-available-thumb(1349x760-crop).jpg', NULL, NULL, 2, CAST(N'2020-10-21 00:00:00.000' AS DateTime), CAST(N'2020-10-21 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL, 5, NULL, NULL)
INSERT [dbo].[CATEGORY] ([ID], [TITLE], [TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE], [POSITION_ID], [SUB_TITLE], [SUB_TITLE_EN]) VALUES (32, N'LEADER TEAM', N'ĐỘI NGŨ LÃNH ĐẠO', N'leader-team', N'doi-ngu-lanh-dao', N'/Content/images/no-image-available-thumb(1349x760-crop).jpg', N'<h4>OUR TEAM IS MADE UP OF PRODUCT, BUSINESS AND TECHNOLOGY EXPERTS, WHO ARE PASSIONATE ABOUT THE FUTURE OF BLOCKCHAIN TECHNOLOGY.</h4>
', N'ĐỘI NGŨ CỦA CH&Uacute;NG T&Ocirc;I L&Agrave; C&Aacute;C CHUY&Ecirc;N GIA VỀ SẢN PHẨM, KINH DOANH V&Agrave; C&Ocirc;NG NGHỆ, L&Agrave; NHỮNG NGƯỜI Đ&Aacute;NG Y&Ecirc;U VỀ TƯƠNG LAI CỦA C&Ocirc;NG NGHỆ BLOCKCHAIN.
', 3, CAST(N'2020-10-21 00:00:00.000' AS DateTime), CAST(N'2020-10-21 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL, 5, N'OUR TEAM IS MADE UP OF PRODUCT, BUSINESS AND TECHNOLOGY EXPERTS, WHO ARE PASSIONATE ABOUT THE FUTURE OF BLOCKCHAIN TECHNOLOGY.', NULL)
INSERT [dbo].[CATEGORY] ([ID], [TITLE], [TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE], [POSITION_ID], [SUB_TITLE], [SUB_TITLE_EN]) VALUES (33, N'RECENT PROJECTS', N'DỰ ÁN GẦN ĐÂY', N'recent-projects', N'du-an-gan-day', N'/Content/images/no-image-available-thumb(1349x760-crop).jpg', NULL, NULL, 1, CAST(N'2020-10-21 00:00:00.000' AS DateTime), CAST(N'2020-10-21 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL, 4, N'RECENT PROJECTS', NULL)
INSERT [dbo].[CATEGORY] ([ID], [TITLE], [TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE], [POSITION_ID], [SUB_TITLE], [SUB_TITLE_EN]) VALUES (34, N'PROPRIETARY PROJECTS', N'DỰ ÁN SỞ HỮU', N'proprietary-projects', N'du-an-so-huu', N'/Content/images/no-image-available-thumb(1349x760-crop).jpg', NULL, NULL, 2, CAST(N'2020-10-21 00:00:00.000' AS DateTime), CAST(N'2020-10-21 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL, 4, N'PROPRIETARY PROJECTS', NULL)
INSERT [dbo].[CATEGORY] ([ID], [TITLE], [TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE], [POSITION_ID], [SUB_TITLE], [SUB_TITLE_EN]) VALUES (35, N'Get an estimate for your app idea. We do not spam.', N'Xây dựng ý tưởng cho ứng dụng của bạn. Chúng tôi không nhận thư rác.', N'get-an-estimate-for-your-app-idea--we-do-not-spam-', N'xay-dung-y-tuong-cho-ung-dung-cua-ban--chung-toi-khong-nhan-thu-rac-', N'/Content/images/no-image-available-thumb(1349x760-crop).jpg', NULL, NULL, 3, CAST(N'2020-10-22 00:00:00.000' AS DateTime), CAST(N'2020-10-22 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL, 4, NULL, NULL)
INSERT [dbo].[CATEGORY] ([ID], [TITLE], [TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE], [POSITION_ID], [SUB_TITLE], [SUB_TITLE_EN]) VALUES (37, N'nhd', N'nhd-en', N'nhd', N'nhd-en', N'/Content/images/no-image-available-thumb(1349x760-crop).jpg', N'<p>eenf enf</p>
', N'<p>ansdsada</p>
', 0, CAST(N'2020-10-29 22:23:51.310' AS DateTime), CAST(N'2020-10-29 22:23:51.310' AS DateTime), NULL, NULL, 1, NULL, 6, NULL, NULL)
SET IDENTITY_INSERT [dbo].[CATEGORY] OFF
SET IDENTITY_INSERT [dbo].[COMPANY_ADDRESS] ON 

INSERT [dbo].[COMPANY_ADDRESS] ([ID], [TITLE], [DESCRIPTION], [ORDER]) VALUES (14, N'Sydney', N'417/165 Phillip St Sydney NSW 2000 Australia
1300 028 808
Int. +61 2 8776 3849
sales@block8.com', 1)
INSERT [dbo].[COMPANY_ADDRESS] ([ID], [TITLE], [DESCRIPTION], [ORDER]) VALUES (18, N'Chandigarh', N'Rajiv Gandhi Chandigarh Technology Park, Manimajra, Chandigarh, 160101, India', 2)
SET IDENTITY_INSERT [dbo].[COMPANY_ADDRESS] OFF
SET IDENTITY_INSERT [dbo].[COMPANY_INFOR] ON 

INSERT [dbo].[COMPANY_INFOR] ([ID], [TITLE], [PHONE], [EMAIL], [COMPANY], [DESCRIPTION], [INSTAGRAM], [TWITTER], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE], [DESCRIPTION_EN], [TITLE_EN]) VALUES (1, N'nhd', N'0398025988', N'hsxxch@gmail.com', N'nude ', N'dasdsad', N'none', N'none', 0, CAST(N'2020-10-05 00:00:00.000' AS DateTime), CAST(N'2020-10-05 00:00:00.000' AS DateTime), NULL, N'Admin', 1, NULL, NULL, N'nhd')
INSERT [dbo].[COMPANY_INFOR] ([ID], [TITLE], [PHONE], [EMAIL], [COMPANY], [DESCRIPTION], [INSTAGRAM], [TWITTER], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE], [DESCRIPTION_EN], [TITLE_EN]) VALUES (2, N'ddd', N'0398025988', N'hsxxch@gmail.com', N'eye', N'desc', N'hg', N'ewew', 2, CAST(N'2020-10-06 09:01:26.000' AS DateTime), CAST(N'2020-10-06 09:01:26.000' AS DateTime), NULL, N'Admin', 1, NULL, NULL, N'eee')
SET IDENTITY_INSERT [dbo].[COMPANY_INFOR] OFF
SET IDENTITY_INSERT [dbo].[CONTACT] ON 

INSERT [dbo].[CONTACT] ([ID], [NAME], [PHONE], [EMAIL], [COMPANY], [DESCRIPTION], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (3, N'duc', N'0398025988', N'hsxxch@gmail.com', N'Duc ', N'desc', 1, CAST(N'2020-10-07 09:34:21.000' AS DateTime), CAST(N'2020-10-07 09:34:45.520' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[CONTACT] ([ID], [NAME], [PHONE], [EMAIL], [COMPANY], [DESCRIPTION], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (4, N'nhsd', N'adas', N'asd', N'sad', N'asdas', 1, CAST(N'2020-10-07 09:35:05.383' AS DateTime), CAST(N'2020-10-07 09:35:05.383' AS DateTime), NULL, NULL, 1, NULL)
SET IDENTITY_INSERT [dbo].[CONTACT] OFF
SET IDENTITY_INSERT [dbo].[CUSTOMER] ON 

INSERT [dbo].[CUSTOMER] ([ID], [NAME], [CODE], [PHONE], [COMPANY], [EMAIL], [DESCRIPTIONS], [CHECK], [CREATE_DATE], [UPDATE_DATE], [ADMIN_CREATE], [ADMIN_UPDATE]) VALUES (1, N'nguyen duc', NULL, N'123456789   ', N'devmaster', N'nhd@gmail.com', NULL, NULL, CAST(N'2020-10-22' AS Date), CAST(N'2020-10-22' AS Date), NULL, NULL)
INSERT [dbo].[CUSTOMER] ([ID], [NAME], [CODE], [PHONE], [COMPANY], [EMAIL], [DESCRIPTIONS], [CHECK], [CREATE_DATE], [UPDATE_DATE], [ADMIN_CREATE], [ADMIN_UPDATE]) VALUES (14, N'Nguyễn Huỳnh Đức', NULL, N'0398025988  ', N'devmaster', N'huynhduc752@gmail.com', N'nguyen huynh duc', NULL, CAST(N'2020-10-22' AS Date), CAST(N'2020-10-22' AS Date), NULL, NULL)
INSERT [dbo].[CUSTOMER] ([ID], [NAME], [CODE], [PHONE], [COMPANY], [EMAIL], [DESCRIPTIONS], [CHECK], [CREATE_DATE], [UPDATE_DATE], [ADMIN_CREATE], [ADMIN_UPDATE]) VALUES (15, N'Nguyễn Huỳnh Đức', NULL, N'0398025988  ', N'devmaster', N'hsxxch@gmail.com', N'aaaaaaaaaaaaaaaaasdddddddddddcccccccccccc', NULL, CAST(N'2020-10-22' AS Date), CAST(N'2020-10-22' AS Date), NULL, NULL)
INSERT [dbo].[CUSTOMER] ([ID], [NAME], [CODE], [PHONE], [COMPANY], [EMAIL], [DESCRIPTIONS], [CHECK], [CREATE_DATE], [UPDATE_DATE], [ADMIN_CREATE], [ADMIN_UPDATE]) VALUES (17, N'Nguyễn Huỳnh Đức', NULL, NULL, N'devmaster', N'hsxxch@gmail.com', N'asdsadsadasd', NULL, CAST(N'2020-10-22' AS Date), CAST(N'2020-10-22' AS Date), NULL, NULL)
SET IDENTITY_INSERT [dbo].[CUSTOMER] OFF
SET IDENTITY_INSERT [dbo].[LEADER_TEAM] ON 

INSERT [dbo].[LEADER_TEAM] ([ID], [NAME], [PHONE], [EMAIL], [COMPANY], [DESCRIPTION], [INSTAGRAM], [TWITTER], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE], [IMAGE]) VALUES (10, N'Alan Burt', N'222222222', N'asasdfh@gmail.com', N'devmaster', N'Co-Founder and Chairperson', N'https://www.facebook.com/VienCongNgheDevmaster25', N'https://www.facebook.com/VienCongNgheDevmaster25', 1, CAST(N'2020-10-06 00:00:00.000' AS DateTime), CAST(N'2020-10-06 00:00:00.000' AS DateTime), NULL, N'Admin', 1, NULL, N'/Content/uploads/product/Team-12.png')
INSERT [dbo].[LEADER_TEAM] ([ID], [NAME], [PHONE], [EMAIL], [COMPANY], [DESCRIPTION], [INSTAGRAM], [TWITTER], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE], [IMAGE]) VALUES (11, N'Alan Burt', N'123456789', N'hsxxch@gmail.com', N'devmaster', N'Co-Founder and Chairperson', N'https://www.facebook.com/tambang111', N'https://www.facebook.com/tambang111', 2, CAST(N'2020-10-23 00:00:00.000' AS DateTime), CAST(N'2020-10-23 00:00:00.000' AS DateTime), NULL, N'Admin', 1, NULL, N'/Content/uploads/product/Team-12.png')
INSERT [dbo].[LEADER_TEAM] ([ID], [NAME], [PHONE], [EMAIL], [COMPANY], [DESCRIPTION], [INSTAGRAM], [TWITTER], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE], [IMAGE]) VALUES (12, N'Alan Burt', N'987654321', N'asasdfh@gmail.com', N'devmaster', N'Co-Founder and Chairperson', N'https://www.facebook.com/tambang111', N'https://www.facebook.com/tambang111', 3, CAST(N'2020-10-23 00:00:00.000' AS DateTime), CAST(N'2020-10-23 00:00:00.000' AS DateTime), NULL, N'Admin', 1, NULL, N'/Content/uploads/product/Team-12.png')
INSERT [dbo].[LEADER_TEAM] ([ID], [NAME], [PHONE], [EMAIL], [COMPANY], [DESCRIPTION], [INSTAGRAM], [TWITTER], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE], [IMAGE]) VALUES (13, N'Alan Burt', N'111111111111', N'asasdfh@gmail.com', N'devmaster', N'Co-Founder and Chairperson', N'https://www.facebook.com/VienCongNgheDevmaster25', N'https://www.facebook.com/VienCongNgheDevmaster25', 4, CAST(N'2020-10-23 17:45:13.863' AS DateTime), CAST(N'2020-10-23 17:45:13.863' AS DateTime), NULL, NULL, 1, NULL, N'/Content/uploads/product/Team-12.png')
INSERT [dbo].[LEADER_TEAM] ([ID], [NAME], [PHONE], [EMAIL], [COMPANY], [DESCRIPTION], [INSTAGRAM], [TWITTER], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE], [IMAGE]) VALUES (14, N'Alan Burt', N'11111111111', N'hsxxch@gmail.com', NULL, N'Co-Founder and Chairperson', NULL, NULL, 5, CAST(N'2020-10-30 17:56:03.083' AS DateTime), CAST(N'2020-10-30 17:56:03.083' AS DateTime), NULL, NULL, 1, NULL, N'/Content/uploads/product/Team-12.png')
INSERT [dbo].[LEADER_TEAM] ([ID], [NAME], [PHONE], [EMAIL], [COMPANY], [DESCRIPTION], [INSTAGRAM], [TWITTER], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE], [IMAGE]) VALUES (15, N'Alan Burt', N'4444444444', N'asasdfh@gmail.com', N'devmaster', N'Co-Founder and Chairperson', NULL, NULL, 6, CAST(N'2020-10-30 00:00:00.000' AS DateTime), CAST(N'2020-10-30 00:00:00.000' AS DateTime), NULL, N'Admin', 1, NULL, N'/Content/uploads/product/Team-12.png')
INSERT [dbo].[LEADER_TEAM] ([ID], [NAME], [PHONE], [EMAIL], [COMPANY], [DESCRIPTION], [INSTAGRAM], [TWITTER], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE], [IMAGE]) VALUES (16, N'Alan Burt', N'33333333', N'asasdfh@gmail.com', N'devmaster', N'Co-Founder and Chairperson', NULL, NULL, 7, CAST(N'2020-10-30 17:57:09.370' AS DateTime), CAST(N'2020-10-30 17:57:09.370' AS DateTime), NULL, NULL, 1, NULL, N'/Content/uploads/product/Team-12.png')
INSERT [dbo].[LEADER_TEAM] ([ID], [NAME], [PHONE], [EMAIL], [COMPANY], [DESCRIPTION], [INSTAGRAM], [TWITTER], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE], [IMAGE]) VALUES (17, N'Alan Burt', N'666666666666', N'hsxxch@gmail.com', N'devmaster', N'Co-Founder and Chairperson', NULL, NULL, 8, CAST(N'2020-10-30 17:57:37.727' AS DateTime), CAST(N'2020-10-30 17:57:37.727' AS DateTime), NULL, NULL, 1, NULL, N'/Content/uploads/product/Team-12.png')
SET IDENTITY_INSERT [dbo].[LEADER_TEAM] OFF
SET IDENTITY_INSERT [dbo].[NEWS] ON 

INSERT [dbo].[NEWS] ([ID], [TITLE], [TITLE_EN], [SUB_TITLE], [SUB_TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [CATEGORY_ID], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (12, N'home-welcom ', NULL, NULL, NULL, N'home-welcom', NULL, N'/Content/uploads/product/welcome1.png', NULL, NULL, 3, 1, CAST(N'2020-10-20 00:00:00.000' AS DateTime), CAST(N'2020-10-20 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [TITLE], [TITLE_EN], [SUB_TITLE], [SUB_TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [CATEGORY_ID], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (13, N'home welcom 2', NULL, NULL, NULL, N'home-welcom-2', NULL, N'/Content/uploads/product/welcome2.png', NULL, NULL, 3, 2, CAST(N'2020-10-20 09:17:38.350' AS DateTime), CAST(N'2020-10-20 09:17:38.350' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [TITLE], [TITLE_EN], [SUB_TITLE], [SUB_TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [CATEGORY_ID], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (14, N'hơm welcom 3', NULL, NULL, NULL, N'hom-welcom-3', NULL, N'/Content/uploads/product/welcome3.png', NULL, NULL, 3, 3, CAST(N'2020-10-20 09:18:04.563' AS DateTime), CAST(N'2020-10-20 09:18:04.563' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [TITLE], [TITLE_EN], [SUB_TITLE], [SUB_TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [CATEGORY_ID], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (15, N'home welcom 4', NULL, NULL, NULL, N'home-welcom-4', NULL, N'/Content/uploads/product/welcome1.png', NULL, NULL, 3, 4, CAST(N'2020-10-20 09:18:37.743' AS DateTime), CAST(N'2020-10-20 09:18:37.743' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [TITLE], [TITLE_EN], [SUB_TITLE], [SUB_TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [CATEGORY_ID], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (16, N'home welcom 5', NULL, NULL, NULL, N'home-welcom-5', NULL, N'/Content/uploads/product/welcome3.png', NULL, NULL, 3, 5, CAST(N'2020-10-20 09:18:59.263' AS DateTime), CAST(N'2020-10-20 09:18:59.263' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [TITLE], [TITLE_EN], [SUB_TITLE], [SUB_TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [CATEGORY_ID], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (17, N'With partners to bring to market high quality high-tech products', N'Cùng các đối tác đưa ra thị trường những sản phẩm công nghệ cao chất lượng cao', NULL, NULL, N'with-partners-to-bring-to-market-high-quality-high-tech-products', N'cung-cac-doi-tac-dua-ra-thi-truong-nhung-san-pham-cong-nghe-cao-chat-luong-cao', N'/Content/images/no-image-available-thumb(1349x760-crop).jpg', NULL, NULL, 4, 1, CAST(N'2020-10-20 00:00:00.000' AS DateTime), CAST(N'2020-10-20 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [TITLE], [TITLE_EN], [SUB_TITLE], [SUB_TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [CATEGORY_ID], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (18, N'Promote and support appropriate startup ideas in the blockchain field', N'Thúc đẩy và hỗ trợ các ý tưởng khởi nghiệp phù hợp trong lĩnh vực blockchain', NULL, NULL, N'promote-and-support-appropriate-startup-ideas-in-the-blockchain-field', N'thuc-day-va-ho-tro-cac-y-tuong-khoi-nghiep-phu-hop-trong-linh-vuc-blockchain', N'/Content/images/no-image-available-thumb(1349x760-crop).jpg', NULL, NULL, 4, 2, CAST(N'2020-10-20 00:00:00.000' AS DateTime), CAST(N'2020-10-20 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [TITLE], [TITLE_EN], [SUB_TITLE], [SUB_TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [CATEGORY_ID], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (19, N'With businesses to help them get products suitable for business requirements', N'Với các doanh nghiệp để giúp họ có được sản phẩm phù hợp với yêu cầu của doanh nghiệp', NULL, NULL, N'with-businesses-to-help-them-get-products-suitable-for-business-requirements', N'voi-cac-doanh-nghiep-de-giup-ho-co-duoc-san-pham-phu-hop-voi-yeu-cau-cua-doanh-nghiep', N'/Content/images/no-image-available-thumb(1349x760-crop).jpg', NULL, NULL, 4, 3, CAST(N'2020-10-20 00:00:00.000' AS DateTime), CAST(N'2020-10-20 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [TITLE], [TITLE_EN], [SUB_TITLE], [SUB_TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [CATEGORY_ID], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (20, N'Software Development', N'Phát triển phần mềm', NULL, NULL, N'software-development', N'phat-trien-phan-mem', N'/Content/uploads/product/service1.png', N'<p>Blockchain &amp;DLT Applications<br />
Mobile &amp;Web Applications<br />
Solution Architecture Agile Delivery Management</p>
', N'<p>Ứng dụng Blockchain &amp; DLT<br />
Ứng dụng Ưeb &amp; Di&nbsp;Động<br />
Kiến tr&uacute;c giải ph&aacute;p Quản l&yacute; ph&acirc;n phối nhanh</p>
', 5, 1, CAST(N'2020-10-20 00:00:00.000' AS DateTime), CAST(N'2020-10-20 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [TITLE], [TITLE_EN], [SUB_TITLE], [SUB_TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [CATEGORY_ID], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (21, N'Product Innovation', N'Đổi mới sản phẩm', N'Product Innovation', N'Product Innovation', N'product-innovation', N'doi-moi-san-pham', N'/Content/uploads/product/service2.png', N'<p>Product Ownership &amp; Management Product Discovery &amp; Research Micro &amp; Macro Analysis Data Driven UX Design</p>
', N'<p>Quyền sở hữu v&agrave; quản l&yacute; sản phẩm Kh&aacute;m ph&aacute; &amp; nghi&ecirc;n cứu sản phẩm Ph&acirc;n t&iacute;ch vi m&ocirc; &amp; vĩ m&ocirc; Thiết kế UX theo hướng dữ liệu</p>
', 5, 2, CAST(N'2020-10-20 00:00:00.000' AS DateTime), CAST(N'2020-10-20 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [TITLE], [TITLE_EN], [SUB_TITLE], [SUB_TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [CATEGORY_ID], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (22, N'Enterprise Consulting', N'Tư vấn Doanh nghiệp', N'Enterprise Consulting', N'Enterprise Consulting', N'enterprise-consulting', N'tu-van-doanh-nghiep', N'/Content/uploads/product/service3.png', N'<p>Digital Transformation Blockchain Strategy Prototyping &amp; Proof of Concepts Technology &amp; Product Roadmaps</p>
', N'<p>Chuyển đổi kỹ thuật số Chiến lược Blockchain Tạo mẫu &amp; Bằng chứng về Kh&aacute;i niệm Lộ tr&igrave;nh C&ocirc;ng nghệ &amp; Sản phẩm</p>
', 5, 3, CAST(N'2020-10-20 00:00:00.000' AS DateTime), CAST(N'2020-10-20 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [TITLE], [TITLE_EN], [SUB_TITLE], [SUB_TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [CATEGORY_ID], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (23, N'Infrastructure and Security', N'Cơ sở hạ tầng và An ninh', N'Infrastructure and Security', N'Infrastructure and Security', N'infrastructure-and-security', N'co-so-ha-tang-va-an-ninh', N'/Content/uploads/product/service4.png', N'<p>Turnkey Cloud Infrastructure<br />
DevOps as a Service<br />
Scalability, Reliability, Securit</p>
', N'<p>Cơ sở hạ tầng đ&aacute;m m&acirc;y ch&igrave;a kh&oacute;a trao tay<br />
DevOps như một dịch vụ<br />
Khả năng mở rộng, Độ tin cậy, Bảo mật</p>
', 5, 4, CAST(N'2020-10-20 00:00:00.000' AS DateTime), CAST(N'2020-10-20 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [TITLE], [TITLE_EN], [SUB_TITLE], [SUB_TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [CATEGORY_ID], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (24, N'Economics', N'Kinh tế học', N'Economics', N'Economics', N'economics', N'kinh-te-hoc', N'/Content/uploads/product/service5.png', N'<p>Game Theory &amp; Incentive Design Network Effect Design Economic Modelling</p>
', N'<p>L&yacute; thuyết tr&ograve; chơi &amp; Thiết kế khuyến kh&iacute;ch Thiết kế Hiệu ứng Mạng M&ocirc; h&igrave;nh Kinh tế</p>
', 5, 5, CAST(N'2020-10-20 00:00:00.000' AS DateTime), CAST(N'2020-10-20 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [TITLE], [TITLE_EN], [SUB_TITLE], [SUB_TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [CATEGORY_ID], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (32, N'ABCXYZ', N'ABCXYZ', N'color-block gradient-blue', N'color-block gradient-blue', N'abcxyz', N'abcxyz', N'/Content/uploads/product/partner1.png', N'<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry</p>
', N'<p>Lorem Ipsum chỉ đơn giản l&agrave; văn bản giả của ng&agrave;nh in ấn v&agrave; sắp chữ</p>
', 9, 1, CAST(N'2020-10-20 00:00:00.000' AS DateTime), CAST(N'2020-10-20 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [TITLE], [TITLE_EN], [SUB_TITLE], [SUB_TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [CATEGORY_ID], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (35, N'ABCXYZ', N'ABCXYZ', N'color-block gradient-purple', N'color-block gradient-purple', N'abcxyz', N'abcxyz', N'/Content/uploads/product/partner1.png', N'<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry</p>
', N'<p>Lorem Ipsum chỉ đơn giản l&agrave; văn bản giả của ng&agrave;nh in ấn v&agrave; sắp chữ</p>
', 9, 2, CAST(N'2020-10-20 00:00:00.000' AS DateTime), CAST(N'2020-10-20 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [TITLE], [TITLE_EN], [SUB_TITLE], [SUB_TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [CATEGORY_ID], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (36, N'ABCXYZ', N'ABCXYZ', N'color-block gradient-green', N'color-block gradient-green', N'abcxyz', N'abcxyz', N'/Content/uploads/product/partner1.png', N'<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry</p>
', N'<p>Lorem Ipsum chỉ đơn giản l&agrave; văn bản giả của ng&agrave;nh in ấn v&agrave; sắp chữ</p>
', 9, 3, CAST(N'2020-10-20 00:00:00.000' AS DateTime), CAST(N'2020-10-20 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [TITLE], [TITLE_EN], [SUB_TITLE], [SUB_TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [CATEGORY_ID], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (37, N'Consumer electronics', N'Điện tử dân dụng', N'industries', N'industries', N'consumer-electronics', N'dien-tu-dan-dung', N'/Content/uploads/product/Industries-2.png', N'<p>Unlock new value, build trust and bring transparency across industries and businesses with the power of Blockchain.</p>
', N'<p>Mở kh&oacute;a gi&aacute; trị mới, x&acirc;y dựng niềm tin v&agrave; mang lại sự minh bạch giữa c&aacute;c ng&agrave;nh v&agrave; doanh nghiệp với sức mạnh của Blockchain.</p>
', 11, 1, CAST(N'2020-10-20 00:00:00.000' AS DateTime), CAST(N'2020-10-20 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [TITLE], [TITLE_EN], [SUB_TITLE], [SUB_TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [CATEGORY_ID], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (38, N'Fintech', N'Fintech', N'industries', N'industries', N'fintech', N'fintech', N'/Content/uploads/product/Industries-3.png', N'<p>Unlock new value, build trust and bring transparency across industries and businesses with the power of Blockchain.</p>
', N'<p>Mở kh&oacute;a gi&aacute; trị mới, x&acirc;y dựng niềm tin v&agrave; mang lại sự minh bạch giữa c&aacute;c ng&agrave;nh v&agrave; doanh nghiệp với sức mạnh của Blockchain.</p>
', 11, 2, CAST(N'2020-10-20 00:00:00.000' AS DateTime), CAST(N'2020-10-20 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [TITLE], [TITLE_EN], [SUB_TITLE], [SUB_TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [CATEGORY_ID], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (39, N'Healthcare', N'Chăm sóc sức khỏe', N'industries', N'Lĩnh Vực', N'healthcare', N'cham-soc-suc-khoe', N'/Content/uploads/product/Industries-4.png', N'<p>Unlock new value, build trust and bring transparency across industries and businesses with the power of Blockchain.</p>
', N'<p>Mở kh&oacute;a gi&aacute; trị mới, x&acirc;y dựng niềm tin v&agrave; mang lại sự minh bạch giữa c&aacute;c ng&agrave;nh v&agrave; doanh nghiệp với sức mạnh của Blockchain.</p>
', 11, 3, CAST(N'2020-10-20 00:00:00.000' AS DateTime), CAST(N'2020-10-20 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [TITLE], [TITLE_EN], [SUB_TITLE], [SUB_TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [CATEGORY_ID], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (40, N'Insurance', N'Bảo Hiểm', N'industries', N'Lĩnh Vực', N'insurance', N'bao-hiem', N'/Content/uploads/product/Industries-5.png', N'<p>Unlock new value, build trust and bring transparency across industries and businesses with the power of Blockchain.</p>
', N'<p>Mở kh&oacute;a gi&aacute; trị mới, x&acirc;y dựng niềm tin v&agrave; mang lại sự minh bạch giữa c&aacute;c ng&agrave;nh v&agrave; doanh nghiệp với sức mạnh của Blockchain.</p>
', 11, 4, CAST(N'2020-10-20 00:00:00.000' AS DateTime), CAST(N'2020-10-20 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [TITLE], [TITLE_EN], [SUB_TITLE], [SUB_TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [CATEGORY_ID], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (41, N'Logistic', N'Hậu cần', N'industries', N'Lĩnh Vực', N'logistic', N'hau-can', N'/Content/uploads/product/Industries-6.png', N'<p>Unlock new value, build trust and bring transparency across industries and businesses with the power of Blockchain.</p>
', N'<p>Mở kh&oacute;a gi&aacute; trị mới, x&acirc;y dựng niềm tin v&agrave; mang lại sự minh bạch giữa c&aacute;c ng&agrave;nh v&agrave; doanh nghiệp với sức mạnh của Blockchain.</p>
', 11, 5, CAST(N'2020-10-20 00:00:00.000' AS DateTime), CAST(N'2020-10-20 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [TITLE], [TITLE_EN], [SUB_TITLE], [SUB_TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [CATEGORY_ID], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (42, N'Manufacturing', N'Sản Xuất', N' industries', N'Lĩnh Vực', N'manufacturing', N'san-xuat', N'/Content/uploads/product/Industries-7.png', N'<p>Unlock new value, build trust and bring transparency across industries and businesses with the power of Blockchain.</p>
', N'<p>Mở kh&oacute;a gi&aacute; trị mới, x&acirc;y dựng niềm tin v&agrave; mang lại sự minh bạch giữa c&aacute;c ng&agrave;nh v&agrave; doanh nghiệp với sức mạnh của Blockchain.</p>
', 11, 6, CAST(N'2020-10-20 00:00:00.000' AS DateTime), CAST(N'2020-10-20 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [TITLE], [TITLE_EN], [SUB_TITLE], [SUB_TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [CATEGORY_ID], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (43, N'Travel', N'Điểm Đến', N'industries', N'Lĩnh Vực', N'travel', N'diem-den', N'/Content/uploads/product/Industries-8.png', N'<p>Unlock new value, build trust and bring transparency across industries and businesses with the power of Blockchain.</p>
', N'<p>Mở kh&oacute;a gi&aacute; trị mới, x&acirc;y dựng niềm tin v&agrave; mang lại sự minh bạch giữa c&aacute;c ng&agrave;nh v&agrave; doanh nghiệp với sức mạnh của Blockchain.</p>
', 11, 7, CAST(N'2020-10-20 00:00:00.000' AS DateTime), CAST(N'2020-10-20 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [TITLE], [TITLE_EN], [SUB_TITLE], [SUB_TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [CATEGORY_ID], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (44, N'Startup', N'Khởi Nghiệp', N'industries', N'Lĩnh Vực', N'startup', N'khoi-nghiep', N'/Content/uploads/product/Industries-9.png', N'<p>Unlock new value, build trust and bring transparency across industries and businesses with the power of Blockchain.</p>
', N'<p>Mở kh&oacute;a gi&aacute; trị mới, x&acirc;y dựng niềm tin v&agrave; mang lại sự minh bạch giữa c&aacute;c ng&agrave;nh v&agrave; doanh nghiệp với sức mạnh của Blockchain.</p>
', 11, 8, CAST(N'2020-10-20 00:00:00.000' AS DateTime), CAST(N'2020-10-20 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [TITLE], [TITLE_EN], [SUB_TITLE], [SUB_TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [CATEGORY_ID], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (45, N'A digital ledger that keeps a record of all transactions taking plave on a peer - to - peer network.', N'Một sổ cái kỹ thuật số lưu giữ hồ sơ của tất cả các giao dịch diễn ra trên mạng ngang hàng.', NULL, NULL, N'a-digital-ledger-that-keeps-a-record-of-all-transactions-taking-plave-on-a-peer---to---peer-network-', N'mot-so-cai-ky-thuat-so-luu-giu-ho-so-cua-tat-ca-cac-giao-dich-dien-ra-tren-mang-ngang-hang-', N'/Content/uploads/product/item-1.png', NULL, NULL, 26, 1, CAST(N'2020-10-21 00:00:00.000' AS DateTime), CAST(N'2020-10-21 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [TITLE], [TITLE_EN], [SUB_TITLE], [SUB_TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [CATEGORY_ID], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (46, N'All information transferred via blockchain is encrypted and every occurrence recorded meaning it cannot be altered', N'Tất cả thông tin được chuyển qua blockchain đều được mã hóa và mọi sự kiện được ghi lại có nghĩa là nó không thể bị thay đổi', NULL, NULL, N'all-information-transferred-via-blockchain-is-encrypted-and-every-occurrence-recorded-meaning-it-cannot-be-altered', N'tat-ca-thong-tin-duoc-chuyen-qua-blockchain-deu-duoc-ma-hoa-va-moi-su-kien-duoc-ghi-lai-co-nghia-la-no-khong-the-bi-thay-doi', N'/Content/uploads/product/item-2.png', N'<p>All information transferred via blockchain is encrypted and every occurrence recorded meaning it cannot be altered</p>
', NULL, 26, 2, CAST(N'2020-10-21 00:00:00.000' AS DateTime), CAST(N'2020-10-21 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [TITLE], [TITLE_EN], [SUB_TITLE], [SUB_TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [CATEGORY_ID], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (47, N'It is decentralised, so there’s no need for any central, certifying authority', N'Nó được phân cấp, vì vậy không cần bất kỳ cơ quan trung ương nào chứng nhận', NULL, NULL, N'it-is-decentralised--so-there’s-no-need-for-any-central--certifying-authority', N'no-duoc-phan-cap--vi-vay-khong-can-bat-ky-co-quan-trung-uong-nao-chung-nhan', N'/Content/uploads/product/item-3.png', N'<p>It is decentralised, so there&rsquo;s no need for any central, certifying authority</p>
', NULL, 26, 3, CAST(N'2020-10-21 00:00:00.000' AS DateTime), CAST(N'2020-10-21 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [TITLE], [TITLE_EN], [SUB_TITLE], [SUB_TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [CATEGORY_ID], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (48, N'It can be used for much more than the transfer of currency; contracts, records and other kinds of data can be shared', N'Nó có thể được sử dụng cho nhiều việc hơn là chuyển tiền tệ; hợp đồng, hồ sơ và các loại dữ liệu khác có thể được chia sẻ', N'It can be used for much more than the transfer of currency; contracts, records and other kinds of data can be shared', NULL, N'it-can-be-used-for-much-more-than-the-transfer-of-currency--contracts--records-and-other-kinds-of-data-can-be-shared', N'no-co-the-duoc-su-dung-cho-nhieu-viec-hon-la-chuyen-tien-te--hop-dong--ho-so-va-cac-loai-du-lieu-khac-co-the-duoc-chia-se', N'/Content/uploads/product/item-4.png', NULL, NULL, 26, 4, CAST(N'2020-10-21 00:00:00.000' AS DateTime), CAST(N'2020-10-21 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [TITLE], [TITLE_EN], [SUB_TITLE], [SUB_TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [CATEGORY_ID], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (49, N'Encrypted information can be shared across multiple providers without risk of a privacy breach.', N'Thông tin được mã hóa có thể được chia sẻ giữa nhiều nhà cung cấp mà không có nguy cơ vi phạm quyền riêng tư.', N'Encrypted information can be shared across multiple providers without risk of a privacy breach.', NULL, N'encrypted-information-can-be-shared-across-multiple-providers-without-risk-of-a-privacy-breach-', N'thong-tin-duoc-ma-hoa-co-the-duoc-chia-se-giua-nhieu-nha-cung-cap-ma-khong-co-nguy-co-vi-pham-quyen-rieng-tu-', N'/Content/uploads/product/item-5.png', NULL, NULL, 26, 5, CAST(N'2020-10-21 00:00:00.000' AS DateTime), CAST(N'2020-10-21 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [TITLE], [TITLE_EN], [SUB_TITLE], [SUB_TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [CATEGORY_ID], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (50, N'Reduce Time', N'Tiết Kiệm Thời Gian', N'Improve Legacy Processes', N'Improve Legacy Processes', N'reduce-time', N'tiet-kiem-thoi-gian', N'/Content/uploads/product/item-6.png', N'<p>Eliminate data silos and reconciliation processes Create transparency amongst trusted groups Automate business processes such as billing and settlements</p>
', N'<p>Loại bỏ c&aacute;c silo dữ liệu v&agrave; quy tr&igrave;nh đối chiếu Tạo sự minh bạch giữa c&aacute;c nh&oacute;m đ&aacute;ng tin cậy Tự động h&oacute;a c&aacute;c quy tr&igrave;nh kinh doanh như thanh to&aacute;n v&agrave; thanh to&aacute;n</p>
', 27, 1, CAST(N'2020-10-21 00:00:00.000' AS DateTime), CAST(N'2020-10-21 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [TITLE], [TITLE_EN], [SUB_TITLE], [SUB_TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [CATEGORY_ID], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (51, N'Reduce Cost', N'Giảm chi phí', N'Simplify data sources', N'Simplify data sources', N'reduce-cost', N'giam-chi-phi', N'/Content/uploads/product/item-7.png', N'<p>Improve data accuracy, insight, transparency Automate audit functions Implement smart contracts to manage multi - party workflows</p>
', N'<p>Cải thiện độ ch&iacute;nh x&aacute;c, th&ocirc;ng tin chi tiết, minh bạch của dữ liệu Tự động h&oacute;a c&aacute;c chức năng kiểm to&aacute;n Thực hiện c&aacute;c hợp đồng th&ocirc;ng minh để quản l&yacute; quy tr&igrave;nh l&agrave;m việc của nhiều b&ecirc;n</p>
', 27, 2, CAST(N'2020-10-21 00:00:00.000' AS DateTime), CAST(N'2020-10-21 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [TITLE], [TITLE_EN], [SUB_TITLE], [SUB_TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [CATEGORY_ID], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (52, N'Reduce Risk', N'Giảm rủi ro', N'Make Better Decisions', N'Make Better Decisions', N'reduce-risk', N'giam-rui-ro', N'/Content/uploads/product/item-8.png', N'<p>Explore digital assets with suppliers, customers and competitors Leverage shared industry data systems, such as registers of public info and digital identity</p>
', N'<p>Kh&aacute;m ph&aacute; t&agrave;i sản kỹ thuật số với nh&agrave; cung cấp, kh&aacute;ch h&agrave;ng v&agrave; đối thủ cạnh tranh Tận dụng hệ thống dữ liệu ng&agrave;nh được chia sẻ, chẳng hạn như sổ đăng k&yacute; th&ocirc;ng tin c&ocirc;ng khai v&agrave; danh t&iacute;nh kỹ thuật số</p>
', 27, 3, CAST(N'2020-10-21 00:00:00.000' AS DateTime), CAST(N'2020-10-21 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [TITLE], [TITLE_EN], [SUB_TITLE], [SUB_TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [CATEGORY_ID], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (53, N'Strategy workshop and training', N'Hội thảo chiến lược và đào tạo', NULL, NULL, N'strategy-workshop-and-training', N'hoi-thao-chien-luoc-va-dao-tao', N'/Content/uploads/product/item-9.png', N'<p>We provide you blockchain workshops to better understand blockchain technology and give you the basic knowledge about its potential applications and woekings. We demonstrate how the blockchain can transform your industry with case studies of our projects.</p>
', N'<p>Ch&uacute;ng t&ocirc;i cung cấp cho bạn c&aacute;c hội thảo về blockchain để hiểu r&otilde; hơn về c&ocirc;ng nghệ blockchain v&agrave; cung cấp cho bạn kiến thức cơ bản về c&aacute;c ứng dụng tiềm năng v&agrave; những điều kh&oacute; khăn của n&oacute;. Ch&uacute;ng t&ocirc;i chứng minh c&aacute;ch blockchain c&oacute; thể biến đổi ng&agrave;nh của bạn bằng c&aacute;c nghi&ecirc;n cứu điển h&igrave;nh về c&aacute;c dự &aacute;n của ch&uacute;ng t&ocirc;i.</p>
', 28, 1, CAST(N'2020-10-21 00:00:00.000' AS DateTime), CAST(N'2020-10-21 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [TITLE], [TITLE_EN], [SUB_TITLE], [SUB_TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [CATEGORY_ID], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (54, N'Blockchain Consultancy', N'Tư vấn Blockchain', NULL, NULL, N'blockchain-consultancy', N'tu-van-blockchain', N'/Content/uploads/product/item-10.png', N'<p>We assess your existing solution, identify the need for a blockchain solution for your bussiness case and analyze how blockchain will add value to your business. We suggest the ideal technology and the possible use cases of the proposed project.</p>
', N'<p>Ch&uacute;ng t&ocirc;i đ&aacute;nh gi&aacute; giải ph&aacute;p hiện c&oacute; của bạn, x&aacute;c định nhu cầu về giải ph&aacute;p blockchain cho trường hợp kinh doanh của bạn v&agrave; ph&acirc;n t&iacute;ch c&aacute;ch blockchain sẽ tăng gi&aacute; trị cho doanh nghiệp của bạn. Ch&uacute;ng t&ocirc;i đề xuất c&ocirc;ng nghệ l&yacute; tưởng v&agrave; c&aacute;c trường hợp sử dụng c&oacute; thể c&oacute; của dự &aacute;n được đề xuất.</p>
', 28, 2, CAST(N'2020-10-21 00:00:00.000' AS DateTime), CAST(N'2020-10-21 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [TITLE], [TITLE_EN], [SUB_TITLE], [SUB_TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [CATEGORY_ID], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (55, N'Quick PoC', N'Quick PoC', NULL, NULL, N'quick-poc', N'quick-poc', N'/Content/uploads/product/item-11.png', N'<p>We create a Proof of Concept (PoC) to demonstrase the practical potential of your blockchain project in 4 weeks. PoC done by our team helps clients understand how their blockchain ecosystem will work</p>
', N'<p>Ch&uacute;ng t&ocirc;i tạo Bằng chứng về kh&aacute;i niệm (PoC) để thể hiện tiềm năng thực tế của dự &aacute;n blockchain của bạn trong 4 tuần. PoC do nh&oacute;m của ch&uacute;ng t&ocirc;i thực hiện gi&uacute;p kh&aacute;ch h&agrave;ng hiểu hệ sinh th&aacute;i blockchain của họ sẽ hoạt động như thế n&agrave;o</p>
', 28, 3, CAST(N'2020-10-21 00:00:00.000' AS DateTime), CAST(N'2020-10-21 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [TITLE], [TITLE_EN], [SUB_TITLE], [SUB_TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [CATEGORY_ID], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (56, N'Blockchain Devlopment', N'Phát triển chuỗi khối', NULL, NULL, N'blockchain-devlopment', N'phat-trien-chuoi-khoi', N'/Content/uploads/product/item-12.png', N'<p>Once you understand the blockchain feasibility for your use case, you can move your project into the devemopment. We as a software development company develop and deliver scalable blockchain apps that will innovate your business operations.</p>
', N'<p>Khi bạn hiểu t&iacute;nh khả thi của blockchain đối với trường hợp sử dụng của m&igrave;nh, bạn c&oacute; thể chuyển dự &aacute;n của m&igrave;nh v&agrave;o nghi&ecirc;n cứu. Ch&uacute;ng t&ocirc;i với tư c&aacute;ch l&agrave; một c&ocirc;ng ty ph&aacute;t triển phần mềm ph&aacute;t triển v&agrave; cung cấp c&aacute;c ứng dụng blockchain c&oacute; thể mở rộng sẽ đổi mới hoạt động kinh doanh của bạn.</p>
', 28, 4, CAST(N'2020-10-21 00:00:00.000' AS DateTime), CAST(N'2020-10-21 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [TITLE], [TITLE_EN], [SUB_TITLE], [SUB_TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [CATEGORY_ID], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (57, N'ABCXYZ', N'ABCXYZ', NULL, NULL, N'abcxyz', N'abcxyz', N'/Content/uploads/product/Why-choose-us-5.png', N'<p>From system design, development and operation. Since we are able to carry out all</p>
', N'<p>Từ thiết kế, ph&aacute;t triển v&agrave; vận h&agrave;nh hệ thống. V&igrave; ch&uacute;ng t&ocirc;i c&oacute; thể thực hiện tất cả</p>
', 29, 1, CAST(N'2020-10-21 00:00:00.000' AS DateTime), CAST(N'2020-10-21 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [TITLE], [TITLE_EN], [SUB_TITLE], [SUB_TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [CATEGORY_ID], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (58, N'ABCDEF', N'ABCDEF', NULL, NULL, N'abcdef', N'abcdef', N'/Content/uploads/product/Why-choose-us-6.png', N'<p>From system design, development and operation. Since we are able to carry out all</p>
', N'<p>Từ thiết kế, ph&aacute;t triển v&agrave; vận h&agrave;nh hệ thống. V&igrave; ch&uacute;ng t&ocirc;i c&oacute; thể thực hiện tất cả</p>
', 29, 2, CAST(N'2020-10-21 00:00:00.000' AS DateTime), CAST(N'2020-10-21 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [TITLE], [TITLE_EN], [SUB_TITLE], [SUB_TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [CATEGORY_ID], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (59, N'ABCEFG', N'ABCDEFG', NULL, NULL, N'abcefg', N'abcdefg', N'/Content/uploads/product/Why-choose-us-7.png', N'<p>From system design, development and operation. Since we are able to carry out all</p>
', N'<p>Từ thiết kế, ph&aacute;t triển v&agrave; vận h&agrave;nh hệ thống. V&igrave; ch&uacute;ng t&ocirc;i c&oacute; thể thực hiện tất cả</p>
', 29, 3, CAST(N'2020-10-21 00:00:00.000' AS DateTime), CAST(N'2020-10-21 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [TITLE], [TITLE_EN], [SUB_TITLE], [SUB_TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [CATEGORY_ID], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (60, N'TVM Blockchain is accelerating the development of decentralised applications. We build and grow blockchain companies by leveraging our network, expertise and access to capital.', N'TVM Blockchain đang đẩy nhanh sự phát triển của các ứng dụng phi tập trung. Chúng tôi xây dựng và phát triển các công ty blockchain bằng cách tận dụng mạng lưới, kiến thức chuyên môn và khả năng tiếp cận vốn của chúng tôi.', NULL, NULL, N'tvm-blockchain-is-accelerating-the-development-of-decentralised-applications--we-build-and-grow-blockchain-companies-by-leveraging-our-network--expertise-and-access-to-capital-', N'tvm-blockchain-dang-day-nhanh-su-phat-trien-cua-cac-ung-dung-phi-tap-trung--chung-toi-xay-dung-va-phat-trien-cac-cong-ty-blockchain-bang-cach-tan-dung-mang-luoi--kien-thuc-chuyen-mon-va-kha-nang-tiep-can-von-cua-chung-toi-', N'/Content/uploads/product/Team-4.png', N'<p>TVM Blockchain is accelerating the development of decentralised applications. We build and grow blockchain companies by leveraging our network, expertise and access to capital.</p>
', N'<p>TVM Blockchain đang đẩy nhanh sự ph&aacute;t triển của c&aacute;c ứng dụng phi tập trung. Ch&uacute;ng t&ocirc;i x&acirc;y dựng v&agrave; ph&aacute;t triển c&aacute;c c&ocirc;ng ty blockchain bằng c&aacute;ch tận dụng mạng lưới, kiến thức chuy&ecirc;n m&ocirc;n v&agrave; khả năng tiếp cận vốn của ch&uacute;ng t&ocirc;i.</p>
', 30, 1, CAST(N'2020-10-21 00:00:00.000' AS DateTime), CAST(N'2020-10-21 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [TITLE], [TITLE_EN], [SUB_TITLE], [SUB_TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [CATEGORY_ID], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (61, N'We joint venture with leading companies and domain experts to incubate innovative applications. These applications transform business models and disrupt industries, using blockchain technology.', N'Chúng tôi liên doanh với các công ty hàng đầu và các chuyên gia tên miền để ươm tạo các ứng dụng sáng tạo. Các ứng dụng này chuyển đổi mô hình kinh doanh và phá vỡ các ngành công nghiệp, sử dụng công nghệ blockchain.', NULL, NULL, N'we-joint-venture-with-leading-companies-and-domain-experts-to-incubate-innovative-applications--these-applications-transform-business-models-and-disrupt-industries--using-blockchain-technology-', N'chung-toi-lien-doanh-voi-cac-cong-ty-hang-dau-va-cac-chuyen-gia-ten-mien-de-uom-tao-cac-ung-dung-sang-tao--cac-ung-dung-nay-chuyen-doi-mo-hinh-kinh-doanh-va-pha-vo-cac-nganh-cong-nghiep--su-dung-cong-nghe-blockchain-', N'/Content/uploads/product/Team-5.png', N'<p>We joint venture with leading companies and domain experts to incubate innovative applications. These applications transform business models and disrupt industries, using blockchain technology.</p>
', N'<p>TVM Blockchain đang đẩy nhanh sự ph&aacute;t triển của c&aacute;c ứng dụng phi tập trung. Ch&uacute;ng t&ocirc;i x&acirc;y dựng v&agrave; ph&aacute;t triển c&aacute;c c&ocirc;ng ty blockchain bằng c&aacute;ch tận dụng mạng lưới, kiến thức chuy&ecirc;n m&ocirc;n v&agrave; khả năng tiếp cận vốn của ch&uacute;ng t&ocirc;i.</p>
', 30, 2, CAST(N'2020-10-21 00:00:00.000' AS DateTime), CAST(N'2020-10-21 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [TITLE], [TITLE_EN], [SUB_TITLE], [SUB_TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [CATEGORY_ID], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (62, N'We leverage our deep experience in blockchains and Ethereum smart contracts to architect platforms and applications that creates new digital business models.', N'Chúng tôi tận dụng kinh nghiệm sâu sắc của mình về blockchain và hợp đồng thông minh Ethereum để kiến trúc nền tảng và ứng dụng tạo ra các mô hình kinh doanh kỹ thuật số mới.', NULL, NULL, N'we-leverage-our-deep-experience-in-blockchains-and-ethereum-smart-contracts-to-architect-platforms-and-applications-that-creates-new-digital-business-models-', N'chung-toi-tan-dung-kinh-nghiem-sau-sac-cua-minh-ve-blockchain-va-hop-dong-thong-minh-ethereum-de-kien-truc-nen-tang-va-ung-dung-tao-ra-cac-mo-hinh-kinh-doanh-ky-thuat-so-moi-', N'/Content/uploads/product/Team-7.png', N'<p>We leverage our deep experience in blockchains and Ethereum smart contracts to architect platforms and applications that creates new digital business models.</p>
', N'<p>TVM Blockchain đang đẩy nhanh sự ph&aacute;t triển của c&aacute;c ứng dụng phi tập trung. Ch&uacute;ng t&ocirc;i x&acirc;y dựng v&agrave; ph&aacute;t triển c&aacute;c c&ocirc;ng ty blockchain bằng c&aacute;ch tận dụng mạng lưới, kiến thức chuy&ecirc;n m&ocirc;n v&agrave; khả năng tiếp cận vốn của ch&uacute;ng t&ocirc;i.</p>
', 30, 3, CAST(N'2020-10-21 00:00:00.000' AS DateTime), CAST(N'2020-10-21 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [TITLE], [TITLE_EN], [SUB_TITLE], [SUB_TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [CATEGORY_ID], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (63, N'team', N'team', NULL, NULL, N'team', N'team', N'/Content/uploads/product/welcome1.png', N'team', NULL, 31, 1, CAST(N'2020-10-21 14:24:44.540' AS DateTime), CAST(N'2020-10-21 14:24:44.540' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [TITLE], [TITLE_EN], [SUB_TITLE], [SUB_TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [CATEGORY_ID], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (64, N'team2', N'team2', NULL, NULL, N'team2', N'team2', N'/Content/uploads/product/welcome2.png', NULL, NULL, 31, 2, CAST(N'2020-10-21 14:25:05.693' AS DateTime), CAST(N'2020-10-21 14:25:05.693' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [TITLE], [TITLE_EN], [SUB_TITLE], [SUB_TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [CATEGORY_ID], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (65, N'team', N'team', N'team', NULL, N'team', N'team', N'/Content/uploads/product/welcome3.png', N'team', NULL, 31, 3, CAST(N'2020-10-21 14:25:26.830' AS DateTime), CAST(N'2020-10-21 14:25:26.830' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [TITLE], [TITLE_EN], [SUB_TITLE], [SUB_TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [CATEGORY_ID], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (66, N'team', N'team', NULL, NULL, N'team', N'team', N'/Content/uploads/product/welcome1.png', N'team', NULL, 31, 4, CAST(N'2020-10-21 14:25:43.893' AS DateTime), CAST(N'2020-10-21 14:25:43.893' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [TITLE], [TITLE_EN], [SUB_TITLE], [SUB_TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [CATEGORY_ID], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (67, N'Alan Burt', N'Alan Burt', N'Co-Founder and Chairperson', N'Co-Founder and Chairperson', N'alan-burt', N'alan-burt', N'/Content/uploads/product/Team-12.png', N'Co-Founder and Chairperson', NULL, 32, 1, CAST(N'2020-10-21 16:53:37.350' AS DateTime), CAST(N'2020-10-21 16:53:37.350' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [TITLE], [TITLE_EN], [SUB_TITLE], [SUB_TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [CATEGORY_ID], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (69, N'Blockchain based Pharma Supply Chain Soluution for International Aid Distribution', N'Giải pháp chuỗi cung ứng dược phẩm dựa trên chuỗi khối để phân phối viện trợ quốc tế', N'BlockChain • Supply Chain • Drug Supply', N'BlockChain • Chuỗi cung ứng • Cung cấp thuốc', N'blockchain-based-pharma-supply-chain-soluution-for-international-aid-distribution', N'giai-phap-chuoi-cung-ung-duoc-pham-dua-tren-chuoi-khoi-de-phan-phoi-vien-tro-quoc-te', N'/Content/uploads/product/Work-2.png', N'<p>Blockchain based Pharma Supply Chain Soluution for International Aid Distribution</p>
', N'<p>Giải ph&aacute;p chuỗi cung ứng dược phẩm dựa tr&ecirc;n chuỗi khối để ph&acirc;n phối viện trợ quốc tế</p>
', 33, 1, CAST(N'2020-10-21 00:00:00.000' AS DateTime), CAST(N'2020-10-21 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [TITLE], [TITLE_EN], [SUB_TITLE], [SUB_TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [CATEGORY_ID], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (70, N'Blockchain based Pharma Supply Chain Soluution for International Aid Distribution', N'Giải pháp chuỗi cung ứng dược phẩm dựa trên chuỗi khối để phân phối viện trợ quốc tế', N'BlockChain • Supply Chain • Drug Supply', N'BlockChain • Chuỗi cung ứng • Cung cấp thuốc', N'blockchain-based-pharma-supply-chain-soluution-for-international-aid-distribution', N'giai-phap-chuoi-cung-ung-duoc-pham-dua-tren-chuoi-khoi-de-phan-phoi-vien-tro-quoc-te', N'/Content/uploads/product/Work-3.png', N'<p>Blockchain based Pharma Supply Chain Soluution for International Aid Distribution</p>
', N'<p>Giải ph&aacute;p chuỗi cung ứng dược phẩm dựa tr&ecirc;n chuỗi khối để ph&acirc;n phối viện trợ quốc tế</p>
', 33, 2, CAST(N'2020-10-21 00:00:00.000' AS DateTime), CAST(N'2020-10-21 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [TITLE], [TITLE_EN], [SUB_TITLE], [SUB_TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [CATEGORY_ID], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (71, N'Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy', N'Lorem Ipsum chỉ đơn giản là giả Lorem Ipsum chỉ đơn giản là giả', NULL, NULL, N'lorem-ipsum-is-simply-dummy-lorem-ipsum-is-simply-dummy', N'lorem-ipsum-chi-don-gian-la-gia-lorem-ipsum-chi-don-gian-la-gia', N'/Content/uploads/product/Work-8.png', N'<p>Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy</p>
', NULL, 34, 1, CAST(N'2020-10-21 00:00:00.000' AS DateTime), CAST(N'2020-10-21 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [TITLE], [TITLE_EN], [SUB_TITLE], [SUB_TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [CATEGORY_ID], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (72, N'Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy', N'Lorem Ipsum chỉ đơn giản là giả Lorem Ipsum chỉ đơn giản là giả', NULL, NULL, N'lorem-ipsum-is-simply-dummy-lorem-ipsum-is-simply-dummy', N'lorem-ipsum-chi-don-gian-la-gia-lorem-ipsum-chi-don-gian-la-gia', N'/Content/uploads/product/Work-9.png', N'<p>Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy</p>
', NULL, 34, 2, CAST(N'2020-10-21 00:00:00.000' AS DateTime), CAST(N'2020-10-21 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [TITLE], [TITLE_EN], [SUB_TITLE], [SUB_TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [CATEGORY_ID], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (100, N'RESEARCH', N'NGHIÊN CỨU', N'Digital Innovation', N'Đổi mới Kỹ Thuật Số', N'research', N'nghien-cuu', N'/Content/images/no-image-available-thumb(1349x760-crop).jpg', N'<ul>
	<li>
	<p>Blockchain payment sytems</p>
	</li>
	<li>
	<p>Investment Bank and Blockchain settlement</p>
	</li>
	<li>
	<p>Real Estate Payment and management</p>
	</li>
</ul>
', N'<ul>
	<li>
	<p>Hệ thống thanh to&aacute;n Blockchain</p>
	</li>
	<li>
	<p>Ng&acirc;n h&agrave;ng đầu tư v&agrave; thanh to&aacute;n tr&ecirc;n Blockchain</p>
	</li>
	<li>
	<p>Thanh to&aacute;n v&agrave; quản l&yacute; Bất động sản</p>
	</li>
</ul>
', 6, 1, CAST(N'2020-10-23 00:00:00.000' AS DateTime), CAST(N'2020-10-23 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [TITLE], [TITLE_EN], [SUB_TITLE], [SUB_TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [CATEGORY_ID], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (101, N'DEVELOPMENT', N'PHÁT TRIỂN', N'Consensus for Settlement', N'Đồng thuận để dàn xếp', N'development', N'phat-trien', N'/Content/uploads/product/research1.png', N'<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an type and scrambled specimen book.</p>
', N'<p>Lorem Ipsum chỉ đơn giản l&agrave; văn bản giả của ng&agrave;nh in ấn v&agrave; sắp chữ. Lorem Ipsum đ&atilde; l&agrave; văn bản giả ti&ecirc;u chuẩn của ng&agrave;nh kể từ những năm 1500, khi một cuốn s&aacute;ch mẫu v&agrave; đ&aacute;nh dấu mẫu.</p>
', 6, 2, CAST(N'2020-10-23 00:00:00.000' AS DateTime), CAST(N'2020-10-23 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [TITLE], [TITLE_EN], [SUB_TITLE], [SUB_TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [CATEGORY_ID], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (102, N'Blockchain System Design', N'Thiết kế hệ thống chuỗi khối', N'Trustless System Design  Defining & Tokenising Value  Public & Private Smart Contracts', N'Thiết kế hệ thống đáng tin cậy Xác định & Giá trị mã hóa Hợp đồng Thông minh Công cộng và Tư nhân', N'blockchain-system-design', N'thiet-ke-he-thong-chuoi-khoi', N'/Content/uploads/product/service6.png', N'<p>Trustless System Design</p>

<p>Defining &amp; Tokenising Value</p>

<p>Public &amp; Private Smart Contracts</p>
', N'<p>Thiết kế hệ thống đ&aacute;ng tin cậy</p>

<p>X&aacute;c định &amp; Gi&aacute; trị Tokenising</p>

<p>Hợp đồng th&ocirc;ng minh c&ocirc;ng v&agrave; tư</p>
', 5, 6, CAST(N'2020-10-23 00:00:00.000' AS DateTime), CAST(N'2020-10-23 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [TITLE], [TITLE_EN], [SUB_TITLE], [SUB_TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [CATEGORY_ID], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (103, N'Blockchain based Pharma Supply Chain Soluution for International Aid Distribution', N'Giải pháp chuỗi cung ứng dược phẩm dựa trên chuỗi khối để phân phối viện trợ quốc tế', N'BlockChain • Supply Chain • Drug Supply', N'BlockChain • Chuỗi cung ứng • Cung cấp thuốc', N'blockchain-based-pharma-supply-chain-soluution-for-international-aid-distribution', N'giai-phap-chuoi-cung-ung-duoc-pham-dua-tren-chuoi-khoi-de-phan-phoi-vien-tro-quoc-te', N'/Content/uploads/product/Work-4.png', N'<p>Blockchain based Pharma Supply Chain Soluution for International Aid Distribution</p>
', N'<p>Giải ph&aacute;p chuỗi cung ứng dược phẩm dựa tr&ecirc;n chuỗi khối để ph&acirc;n phối viện trợ quốc tế</p>
', 33, 3, CAST(N'2020-10-23 00:00:00.000' AS DateTime), CAST(N'2020-10-23 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [TITLE], [TITLE_EN], [SUB_TITLE], [SUB_TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [CATEGORY_ID], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (104, N'Blockchain based Pharma Supply Chain Soluution for International Aid Distribution', N'Giải pháp chuỗi cung ứng dược phẩm dựa trên chuỗi khối để phân phối viện trợ quốc tế', N'BlockChain • Supply Chain • Drug Supply', N'BlockChain • Chuỗi cung ứng • Cung cấp thuốc', N'blockchain-based-pharma-supply-chain-soluution-for-international-aid-distribution', N'giai-phap-chuoi-cung-ung-duoc-pham-dua-tren-chuoi-khoi-de-phan-phoi-vien-tro-quoc-te', N'/Content/uploads/product/Work-5.png', N'<p>Blockchain based Pharma Supply Chain Soluution for International Aid Distribution</p>
', N'<p>Giải ph&aacute;p chuỗi cung ứng dược phẩm dựa tr&ecirc;n chuỗi khối để ph&acirc;n phối viện trợ quốc tế</p>
', 33, 4, CAST(N'2020-10-23 00:00:00.000' AS DateTime), CAST(N'2020-10-23 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [TITLE], [TITLE_EN], [SUB_TITLE], [SUB_TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [CATEGORY_ID], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (105, N'Blockchain based Pharma Supply Chain Soluution for International Aid Distribution', N'Giải pháp chuỗi cung ứng dược phẩm dựa trên chuỗi khối để phân phối viện trợ quốc tế', N'BlockChain • Supply Chain • Drug Supply', N'BlockChain • Chuỗi cung ứng • Cung cấp thuốc', N'blockchain-based-pharma-supply-chain-soluution-for-international-aid-distribution', N'giai-phap-chuoi-cung-ung-duoc-pham-dua-tren-chuoi-khoi-de-phan-phoi-vien-tro-quoc-te', N'/Content/uploads/product/Work-6.png', N'<p>Blockchain based Pharma Supply Chain Soluution for International Aid Distribution</p>
', N'<p>Giải ph&aacute;p chuỗi cung ứng dược phẩm dựa tr&ecirc;n chuỗi khối để ph&acirc;n phối viện trợ quốc tế</p>
', 33, 5, CAST(N'2020-10-23 00:00:00.000' AS DateTime), CAST(N'2020-10-23 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [TITLE], [TITLE_EN], [SUB_TITLE], [SUB_TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [CATEGORY_ID], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (106, N'Blockchain based Pharma Supply Chain Soluution for International Aid Distribution', N'Giải pháp chuỗi cung ứng dược phẩm dựa trên chuỗi khối để phân phối viện trợ quốc tế', N'BlockChain • Supply Chain • Drug Supply', N'BlockChain • Chuỗi cung ứng • Cung cấp thuốc', N'blockchain-based-pharma-supply-chain-soluution-for-international-aid-distribution', N'giai-phap-chuoi-cung-ung-duoc-pham-dua-tren-chuoi-khoi-de-phan-phoi-vien-tro-quoc-te', N'/Content/uploads/product/Work-7.png', N'<p>Blockchain based Pharma Supply Chain Soluution for International Aid Distribution</p>
', N'<p>Giải ph&aacute;p chuỗi cung ứng dược phẩm dựa tr&ecirc;n chuỗi khối để ph&acirc;n phối viện trợ quốc tế</p>
', 33, 6, CAST(N'2020-10-23 00:00:00.000' AS DateTime), CAST(N'2020-10-23 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [TITLE], [TITLE_EN], [SUB_TITLE], [SUB_TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [CATEGORY_ID], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (107, N'Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy', N'Lorem Ipsum chỉ đơn giản là giả Lorem Ipsum chỉ đơn giản là giả', N'Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy', N'Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy', N'lorem-ipsum-is-simply-dummy-lorem-ipsum-is-simply-dummy', N'lorem-ipsum-chi-don-gian-la-gia-lorem-ipsum-chi-don-gian-la-gia', N'/Content/uploads/product/Work-10.png', N'<p>Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy</p>
', N'<p>Giải ph&aacute;p chuỗi cung ứng dược phẩm dựa tr&ecirc;n chuỗi khối để ph&acirc;n phối viện trợ quốc tế</p>
', 34, 3, CAST(N'2020-10-23 00:00:00.000' AS DateTime), CAST(N'2020-10-23 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [TITLE], [TITLE_EN], [SUB_TITLE], [SUB_TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [CATEGORY_ID], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (108, N'Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy', N'Lorem Ipsum chỉ đơn giản là giả Lorem Ipsum chỉ đơn giản là giả', N'Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy', N'Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy', N'lorem-ipsum-is-simply-dummy-lorem-ipsum-is-simply-dummy', N'lorem-ipsum-chi-don-gian-la-gia-lorem-ipsum-chi-don-gian-la-gia', N'/Content/uploads/product/Work-11.png', N'<p>Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy</p>
', N'<p>Lorem Ipsum chỉ đơn giản l&agrave; giả Lorem Ipsum chỉ đơn giản l&agrave; giả</p>
', 34, 4, CAST(N'2020-10-23 00:00:00.000' AS DateTime), CAST(N'2020-10-23 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [TITLE], [TITLE_EN], [SUB_TITLE], [SUB_TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [CATEGORY_ID], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (109, N'Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy', N'Lorem Ipsum chỉ đơn giản là giả Lorem Ipsum chỉ đơn giản là giả', N'Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy', N'Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy', N'lorem-ipsum-is-simply-dummy-lorem-ipsum-is-simply-dummy', N'lorem-ipsum-chi-don-gian-la-gia-lorem-ipsum-chi-don-gian-la-gia', N'/Content/uploads/product/Work-12.png', N'<p>Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy</p>
', N'<p>Lorem Ipsum chỉ đơn giản l&agrave; giả Lorem Ipsum chỉ đơn giản l&agrave; giả</p>
', 34, 4, CAST(N'2020-10-23 00:00:00.000' AS DateTime), CAST(N'2020-10-23 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [TITLE], [TITLE_EN], [SUB_TITLE], [SUB_TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [CATEGORY_ID], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (111, N'Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy', N'Lorem Ipsum chỉ đơn giản là giả Lorem Ipsum chỉ đơn giản là giả', N'Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy', N'Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy', N'lorem-ipsum-is-simply-dummy-lorem-ipsum-is-simply-dummy', N'lorem-ipsum-chi-don-gian-la-gia-lorem-ipsum-chi-don-gian-la-gia', N'/Content/uploads/product/Work-13.png', N'<p>Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy</p>
', N'<p>Lorem Ipsum chỉ đơn giản l&agrave; giả Lorem Ipsum chỉ đơn giản l&agrave; giả</p>
', 34, 6, CAST(N'2020-10-23 00:00:00.000' AS DateTime), CAST(N'2020-10-23 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [TITLE], [TITLE_EN], [SUB_TITLE], [SUB_TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [CATEGORY_ID], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (112, N'Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy', N'Lorem Ipsum chỉ đơn giản là giả Lorem Ipsum chỉ đơn giản là giả', N'Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy', N'Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy', N'lorem-ipsum-is-simply-dummy-lorem-ipsum-is-simply-dummy', N'lorem-ipsum-chi-don-gian-la-gia-lorem-ipsum-chi-don-gian-la-gia', N'/Content/uploads/product/Work-14.png', N'<p>Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy</p>
', N'<p>Lorem Ipsum chỉ đơn giản l&agrave; giả Lorem Ipsum chỉ đơn giản l&agrave; giả</p>
', 34, 7, CAST(N'2020-10-23 00:00:00.000' AS DateTime), CAST(N'2020-10-23 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [TITLE], [TITLE_EN], [SUB_TITLE], [SUB_TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [CATEGORY_ID], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (113, N'Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy', N'Lorem Ipsum chỉ đơn giản là giả Lorem Ipsum chỉ đơn giản là giả', N'Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy', N'Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy', N'lorem-ipsum-is-simply-dummy-lorem-ipsum-is-simply-dummy', N'lorem-ipsum-chi-don-gian-la-gia-lorem-ipsum-chi-don-gian-la-gia', N'/Content/uploads/product/Work-15.png', N'<p>Lorem Ipsum is simply dummy Lorem Ipsum is simply dummy</p>
', N'<p>Lorem Ipsum chỉ đơn giản l&agrave; giả Lorem Ipsum chỉ đơn giản l&agrave; giả</p>
', 34, 8, CAST(N'2020-10-23 00:00:00.000' AS DateTime), CAST(N'2020-10-23 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [TITLE], [TITLE_EN], [SUB_TITLE], [SUB_TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [CATEGORY_ID], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (114, N'Nguyen Duc', N'Nguyen Duc', N'CEO', N'CEO', N'nguyen-duc', N'nguyen-duc', N'/Content/uploads/product/Team-12.png', N'<p>devmaster&nbsp;</p>
', N'devmaster ', 32, 2, CAST(N'2020-10-23 16:53:39.717' AS DateTime), CAST(N'2020-10-23 16:53:39.717' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [TITLE], [TITLE_EN], [SUB_TITLE], [SUB_TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [CATEGORY_ID], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (115, N'Pham Dung', N'Pham Dung', N'CEO', N'CEO', N'pham-dung', N'pham-dung', N'/Content/uploads/product/Team-12.png', N'<p>devmaster&nbsp;</p>
', N'devmaster ', 32, 3, CAST(N'2020-10-23 16:54:15.207' AS DateTime), CAST(N'2020-10-23 16:54:15.207' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [TITLE], [TITLE_EN], [SUB_TITLE], [SUB_TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [CATEGORY_ID], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (116, N'Khuat Chung', N'Khuat Chung', N'CEO', N'CEO', N'khuat-chung', N'khuat-chung', N'/Content/uploads/product/Team-12.png', N'<p>devmaster&nbsp;</p>
', N'devmaster ', 32, 4, CAST(N'2020-10-23 16:54:46.883' AS DateTime), CAST(N'2020-10-23 16:54:46.883' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [TITLE], [TITLE_EN], [SUB_TITLE], [SUB_TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [CATEGORY_ID], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (117, N'Alan Burt', N'Alan Burt', N'CEO', N'CEO', N'alan-burt', N'alan-burt', N'/Content/uploads/product/Team-12.png', N'<p>devmaster&nbsp;</p>
', N'devmaster', 32, 5, CAST(N'2020-10-23 16:57:05.563' AS DateTime), CAST(N'2020-10-23 16:57:05.563' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [TITLE], [TITLE_EN], [SUB_TITLE], [SUB_TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [CATEGORY_ID], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (118, N'Alan Burt', N'Alan Burt', N'Co-Founder and Chairperson', N'Co-Founder and Chairperson', N'alan-burt', N'alan-burt', N'/Content/uploads/product/Team-12.png', N'<p>devmaster&nbsp;</p>
', NULL, 32, 6, CAST(N'2020-10-23 00:00:00.000' AS DateTime), CAST(N'2020-10-23 00:00:00.000' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [TITLE], [TITLE_EN], [SUB_TITLE], [SUB_TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [CATEGORY_ID], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (119, N'BERRY', N'BERRY', N'Co-Founder and Chairperson', N'Co-Founder and Chairperson', N'berry', N'berry', N'/Content/uploads/product/Team-12.png', N'<p>devmaster&nbsp;</p>
', N'devmaster', 32, 7, CAST(N'2020-10-23 16:58:33.967' AS DateTime), CAST(N'2020-10-23 16:58:33.967' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [TITLE], [TITLE_EN], [SUB_TITLE], [SUB_TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [CATEGORY_ID], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (120, N'AAAA', N'AAAA', N'Co-Founder and Chairperson', N'Co-Founder and Chairperson', N'aaaa', N'aaaa', N'/Content/uploads/product/Team-12.png', N'<p>devmaster&nbsp;</p>
', N'devmaster', 32, 8, CAST(N'2020-10-23 16:59:01.290' AS DateTime), CAST(N'2020-10-23 16:59:01.290' AS DateTime), NULL, NULL, 1, NULL)
INSERT [dbo].[NEWS] ([ID], [TITLE], [TITLE_EN], [SUB_TITLE], [SUB_TITLE_EN], [SLUG], [SLUG_EN], [IMAGE], [DESCRIPTION], [DESCRIPTION_EN], [CATEGORY_ID], [ORDER], [CREATED_DATE], [UPDATED_DATE], [ADMIN_CREATED], [ADMIN_UPDATED], [STATUS], [ISDELETE]) VALUES (121, N'adasd', N'ada', NULL, NULL, N'adasd', N'ada', N'/Content/images/no-image-available-thumb(1349x760-crop).jpg', NULL, N'<p>asadsd</p>
', 37, 1, CAST(N'2020-10-29 22:25:32.000' AS DateTime), CAST(N'2020-10-29 22:26:03.407' AS DateTime), NULL, NULL, 1, NULL)
SET IDENTITY_INSERT [dbo].[NEWS] OFF
SET IDENTITY_INSERT [dbo].[POSITION] ON 

INSERT [dbo].[POSITION] ([ID], [CODE], [TITLE], [DESC], [STATUS]) VALUES (9, N'1', N'HOME', N'HOME', NULL)
INSERT [dbo].[POSITION] ([ID], [CODE], [TITLE], [DESC], [STATUS]) VALUES (10, N'2', N'ENTERPRISE BLOCKCHAIN', N'ENTERPRISE BLOCKCHAIN', NULL)
INSERT [dbo].[POSITION] ([ID], [CODE], [TITLE], [DESC], [STATUS]) VALUES (11, N'3', N'INDUSTRIES', N'INDUSTRIES', NULL)
INSERT [dbo].[POSITION] ([ID], [CODE], [TITLE], [DESC], [STATUS]) VALUES (12, N'4', N'WORKS', N'WORKS', NULL)
INSERT [dbo].[POSITION] ([ID], [CODE], [TITLE], [DESC], [STATUS]) VALUES (13, N'5', N'OUR TEAM', N'OUR TEAM', NULL)
INSERT [dbo].[POSITION] ([ID], [CODE], [TITLE], [DESC], [STATUS]) VALUES (14, N'6', N'CONTACT', N'CONTACT', NULL)
SET IDENTITY_INSERT [dbo].[POSITION] OFF
USE [master]
GO
ALTER DATABASE [BLOCKCHAIN] SET  READ_WRITE 
GO
