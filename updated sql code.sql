CREATE TABLE [dbo].[adminData](
	[adminID] [int] IDENTITY(1,1) NOT NULL,
	[adminEmail] [nvarchar](255) NULL,
	[adminPassword] [nvarchar](255) NULL,
	[adminName] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[adminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Campus]    Script Date: 04/10/2022 10:15:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Campus](
	[campusID] [int] IDENTITY(1,1) NOT NULL,
	[campusLoc] [nvarchar](255) NULL,
	[campusImg] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[campusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[campusAchievment]    Script Date: 04/10/2022 10:15:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[campusAchievment](
	[achievID] [int] IDENTITY(1,1) NOT NULL,
	[acheivName] [nvarchar](255) NOT NULL,
	[acheivImage] [nvarchar](max) NULL,
	[achievType] [nvarchar](255) NULL,
	[timeEarned] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[achievID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[campusEvent]    Script Date: 04/10/2022 10:15:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[campusEvent](
	[eventID] [int] IDENTITY(1,1) NOT NULL,
	[eventName] [nvarchar](255) NOT NULL,
	[eventImage] [nvarchar](max) NULL,
	[eventDesc] [nvarchar](255) NULL,
	[eventType] [nvarchar](255) NULL,
	[eventDate] [date] NULL,
	[eventBeginTime] [time](7) NULL,
	[eventEndTime] [time](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[eventID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[campusFacility]    Script Date: 04/10/2022 10:15:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[campusFacility](
	[facilityID] [int] IDENTITY(1,1) NOT NULL,
	[facilityName] [nvarchar](255) NULL,
	[FacilityDesc][nvarchar](max) NULL,
	[FacilityPict][nvarchar](max) NULL
PRIMARY KEY CLUSTERED 
(
	[facilityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[club]    Script Date: 04/10/2022 10:15:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE TABLE [dbo].[localFood](
	[foodID] [int] IDENTITY(1,1) NOT NULL,
	[foodName] [nvarchar](255) NULL,
	[foodImage] [varbinary](max) NULL,
	[foodLoc] [nvarchar](255) NULL,
	[foodRecLvl] [nvarchar](255) NULL,
	[foodPrice] [nvarchar](255) NULL,
	[foodDesc] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[foodID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[seminar]    Script Date: 04/10/2022 10:15:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[seminar](
	[seminarID] [int] IDENTITY(1,1) NOT NULL,
	[seminarImage] [nvarchar](max) NULL,
	[seminarDate] [date] NULL,
	[seminarName] [nvarchar](255) NULL,
	[seminarDesc] [nvarchar](255) NULL,
	[seminarLoc] [nvarchar](255) NULL,
	[seminarStartTime] [time](7) NULL,
	[seminarEndTime] [time](7) NULL,
	[seminarOpenTo] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[seminarID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sport]    Script Date: 04/10/2022 10:15:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sport](
	[sportID] [int] IDENTITY(1,1) NOT NULL,
	[sportName] [nvarchar](255) NULL,
	[sportImage][nvarchar](max) NULL,
	[sportDesc] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[sportID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[studentFeedback]    Script Date: 04/10/2022 10:15:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[studentFeedback](
	[feedbackID] [int] IDENTITY(1,1) NOT NULL,
	[studentID] [nvarchar](255) NULL,
	[studentName] [nvarchar](255) NULL,
	[studentFeedback] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[feedbackID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tutorialGuideCategory](
	[gdeCatID][int] identity (1,1) Primary KEY not null,
	[gdeCatName][nvarchar](255) null
)
GO

CREATE TABLE [dbo].[tutorialGuide](
	[gdeID] [int] identity (1,1) PRIMARY KEY NOT NULL,
	[gdeCatID][int] null,
	[gdeTitle][nvarchar](255) null,
	[gdeDesc][nvarchar](max) null,
	[gdeThumbnail][nvarchar](max) null
	FOREIGN KEY (gdeCatID) References [tutorialGuideCategory](gdeCatID)

)