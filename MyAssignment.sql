USE [FPTU]
GO
/****** Object:  Table [dbo].[Attendance]    Script Date: 04/06/2022 15:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attendance](
	[SID] [int] NOT NULL,
	[SessionID] [int] NOT NULL,
	[Status] [varchar](50) NOT NULL,
	[Comment] [varchar](150) NOT NULL,
	[EditDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Attendance] PRIMARY KEY CLUSTERED 
(
	[SID] ASC,
	[SessionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dept]    Script Date: 04/06/2022 15:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dept](
	[DID] [int] IDENTITY(1,1) NOT NULL,
	[DName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Dept] PRIMARY KEY CLUSTERED 
(
	[DID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 04/06/2022 15:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[GID] [int] IDENTITY(1,1) NOT NULL,
	[GName] [varchar](50) NOT NULL,
	[SubjectID] [int] NOT NULL,
	[LecturerID] [int] NOT NULL,
	[RoomID] [int] NOT NULL,
	[SlotID] [int] NOT NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[GID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group_Enroll]    Script Date: 04/06/2022 15:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group_Enroll](
	[GID] [int] NOT NULL,
	[SID] [int] NOT NULL,
 CONSTRAINT [PK_Group_Enroll] PRIMARY KEY CLUSTERED 
(
	[GID] ASC,
	[SID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lecturer]    Script Date: 04/06/2022 15:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lecturer](
	[LID] [int] IDENTITY(1,1) NOT NULL,
	[LName] [nvarchar](50) NOT NULL,
	[gender] [bit] NOT NULL,
	[dob] [date] NOT NULL,
	[email] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[DID] [int] NOT NULL,
 CONSTRAINT [PK_Lecturer] PRIMARY KEY CLUSTERED 
(
	[LID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Major]    Script Date: 04/06/2022 15:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Major](
	[MID] [int] IDENTITY(1,1) NOT NULL,
	[MName] [varchar](50) NOT NULL,
	[MCode] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Major] PRIMARY KEY CLUSTERED 
(
	[MID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 04/06/2022 15:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[RID] [int] NOT NULL,
	[RName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED 
(
	[RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Session]    Script Date: 04/06/2022 15:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Session](
	[SessionID] [int] NOT NULL,
	[SessionName] [varchar](50) NOT NULL,
	[SessionDetail] [varchar](150) NOT NULL,
	[GID] [int] NOT NULL,
 CONSTRAINT [PK_Session] PRIMARY KEY CLUSTERED 
(
	[SessionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slot]    Script Date: 04/06/2022 15:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slot](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[TimeStart] [time](7) NOT NULL,
	[TimeEnd] [time](7) NOT NULL,
 CONSTRAINT [PK_Slot] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 04/06/2022 15:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[SID] [int] IDENTITY(1,1) NOT NULL,
	[SName] [nvarchar](50) NOT NULL,
	[gender] [bit] NOT NULL,
	[dob] [date] NOT NULL,
	[email] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[YearNo] [int] NOT NULL,
	[MID] [int] NOT NULL,
	[SCode] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[SID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 04/06/2022 15:45:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Room] ([RID], [RName]) VALUES (1, N'AL-101L')
GO
INSERT [dbo].[Room] ([RID], [RName]) VALUES (2, N'AL-102L')
GO
INSERT [dbo].[Room] ([RID], [RName]) VALUES (3, N'AL-103L')
GO
INSERT [dbo].[Room] ([RID], [RName]) VALUES (4, N'AL-104L')
GO
INSERT [dbo].[Room] ([RID], [RName]) VALUES (5, N'AL-105L')
GO
INSERT [dbo].[Room] ([RID], [RName]) VALUES (6, N'AL-106L')
GO
INSERT [dbo].[Room] ([RID], [RName]) VALUES (7, N'AL-101R')
GO
INSERT [dbo].[Room] ([RID], [RName]) VALUES (8, N'AL-102R')
GO
INSERT [dbo].[Room] ([RID], [RName]) VALUES (9, N'AL-103R')
GO
INSERT [dbo].[Room] ([RID], [RName]) VALUES (10, N'AL-104R')
GO
INSERT [dbo].[Room] ([RID], [RName]) VALUES (11, N'AL-105R')
GO
INSERT [dbo].[Room] ([RID], [RName]) VALUES (12, N'AL-106R')
GO
INSERT [dbo].[Room] ([RID], [RName]) VALUES (13, N'AL-201L')
GO
INSERT [dbo].[Room] ([RID], [RName]) VALUES (14, N'AL-202L')
GO
INSERT [dbo].[Room] ([RID], [RName]) VALUES (15, N'AL-203L')
GO
INSERT [dbo].[Room] ([RID], [RName]) VALUES (16, N'AL-204L')
GO
INSERT [dbo].[Room] ([RID], [RName]) VALUES (17, N'AL-205L')
GO
INSERT [dbo].[Room] ([RID], [RName]) VALUES (18, N'AL-206L')
GO
INSERT [dbo].[Room] ([RID], [RName]) VALUES (19, N'AL-201R')
GO
INSERT [dbo].[Room] ([RID], [RName]) VALUES (20, N'AL-202R')
GO
INSERT [dbo].[Room] ([RID], [RName]) VALUES (21, N'AL-203R')
GO
INSERT [dbo].[Room] ([RID], [RName]) VALUES (22, N'AL-204R')
GO
INSERT [dbo].[Room] ([RID], [RName]) VALUES (23, N'AL-205R')
GO
INSERT [dbo].[Room] ([RID], [RName]) VALUES (24, N'AL-206R')
GO
SET IDENTITY_INSERT [dbo].[Slot] ON 
GO
INSERT [dbo].[Slot] ([id], [name], [TimeStart], [TimeEnd]) VALUES (1, N'Slot1', CAST(N'07:30:00' AS Time), CAST(N'09:00:00' AS Time))
GO
INSERT [dbo].[Slot] ([id], [name], [TimeStart], [TimeEnd]) VALUES (2, N'Slot2', CAST(N'09:10:00' AS Time), CAST(N'10:40:00' AS Time))
GO
INSERT [dbo].[Slot] ([id], [name], [TimeStart], [TimeEnd]) VALUES (3, N'Slot3', CAST(N'10:50:00' AS Time), CAST(N'12:20:00' AS Time))
GO
INSERT [dbo].[Slot] ([id], [name], [TimeStart], [TimeEnd]) VALUES (4, N'Slot4', CAST(N'12:50:00' AS Time), CAST(N'14:20:00' AS Time))
GO
INSERT [dbo].[Slot] ([id], [name], [TimeStart], [TimeEnd]) VALUES (5, N'Slot5', CAST(N'14:30:00' AS Time), CAST(N'16:00:00' AS Time))
GO
INSERT [dbo].[Slot] ([id], [name], [TimeStart], [TimeEnd]) VALUES (6, N'Slot6', CAST(N'16:10:00' AS Time), CAST(N'17:40:00' AS Time))
GO
INSERT [dbo].[Slot] ([id], [name], [TimeStart], [TimeEnd]) VALUES (7, N'Slot7', CAST(N'17:50:00' AS Time), CAST(N'19:20:00' AS Time))
GO
INSERT [dbo].[Slot] ([id], [name], [TimeStart], [TimeEnd]) VALUES (8, N'Slot8', CAST(N'19:30:00' AS Time), CAST(N'21:00:00' AS Time))
GO
SET IDENTITY_INSERT [dbo].[Slot] OFF
GO
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD  CONSTRAINT [FK_Attendance_Session] FOREIGN KEY([SessionID])
REFERENCES [dbo].[Session] ([SessionID])
GO
ALTER TABLE [dbo].[Attendance] CHECK CONSTRAINT [FK_Attendance_Session]
GO
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD  CONSTRAINT [FK_Attendance_Student] FOREIGN KEY([SID])
REFERENCES [dbo].[Student] ([SID])
GO
ALTER TABLE [dbo].[Attendance] CHECK CONSTRAINT [FK_Attendance_Student]
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [FK_Group_Lecturer] FOREIGN KEY([LecturerID])
REFERENCES [dbo].[Lecturer] ([LID])
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [FK_Group_Lecturer]
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [FK_Group_Room] FOREIGN KEY([RoomID])
REFERENCES [dbo].[Room] ([RID])
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [FK_Group_Room]
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [FK_Group_Subject] FOREIGN KEY([SubjectID])
REFERENCES [dbo].[Subject] ([id])
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [FK_Group_Subject]
GO
ALTER TABLE [dbo].[Group_Enroll]  WITH CHECK ADD  CONSTRAINT [FK_Group_Enroll_Group] FOREIGN KEY([GID])
REFERENCES [dbo].[Group] ([GID])
GO
ALTER TABLE [dbo].[Group_Enroll] CHECK CONSTRAINT [FK_Group_Enroll_Group]
GO
ALTER TABLE [dbo].[Group_Enroll]  WITH CHECK ADD  CONSTRAINT [FK_Group_Enroll_Student] FOREIGN KEY([SID])
REFERENCES [dbo].[Student] ([SID])
GO
ALTER TABLE [dbo].[Group_Enroll] CHECK CONSTRAINT [FK_Group_Enroll_Student]
GO
ALTER TABLE [dbo].[Lecturer]  WITH CHECK ADD  CONSTRAINT [FK_Lecturer_Dept] FOREIGN KEY([DID])
REFERENCES [dbo].[Dept] ([DID])
GO
ALTER TABLE [dbo].[Lecturer] CHECK CONSTRAINT [FK_Lecturer_Dept]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_Group] FOREIGN KEY([GID])
REFERENCES [dbo].[Group] ([GID])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_Group]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Major] FOREIGN KEY([MID])
REFERENCES [dbo].[Major] ([MID])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Major]
GO
