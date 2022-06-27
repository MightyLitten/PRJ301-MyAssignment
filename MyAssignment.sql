USE +AFs-FPTU+AF0-
GO
/+ACoAKgAqACoAKgAq- Object:  Table +AFs-dbo+AF0-.+AFs-Attendance+AF0-    Script Date: 27/06/2022 16:49:24 +ACoAKgAqACoAKgAq-/
SET ANSI+AF8-NULLS ON
GO
SET QUOTED+AF8-IDENTIFIER ON
GO
CREATE TABLE +AFs-dbo+AF0-.+AFs-Attendance+AF0-(
	+AFs-SID+AF0- +AFs-int+AF0- NOT NULL,
	+AFs-SessionID+AF0- +AFs-int+AF0- NOT NULL,
	+AFs-Status+AF0- +AFs-varchar+AF0-(50) NOT NULL,
	+AFs-Comment+AF0- +AFs-varchar+AF0-(150) NOT NULL,
	+AFs-EditDate+AF0- +AFs-datetime+AF0- NOT NULL,
	+AFs-LID+AF0- +AFs-int+AF0- NULL,
 CONSTRAINT +AFs-PK+AF8-Attendance+AF0- PRIMARY KEY CLUSTERED 
(
	+AFs-SID+AF0- ASC,
	+AFs-SessionID+AF0- ASC
)WITH (PAD+AF8-INDEX +AD0- OFF, STATISTICS+AF8-NORECOMPUTE +AD0- OFF, IGNORE+AF8-DUP+AF8-KEY +AD0- OFF, ALLOW+AF8-ROW+AF8-LOCKS +AD0- ON, ALLOW+AF8-PAGE+AF8-LOCKS +AD0- ON, OPTIMIZE+AF8-FOR+AF8-SEQUENTIAL+AF8-KEY +AD0- OFF) ON +AFs-PRIMARY+AF0-
) ON +AFs-PRIMARY+AF0-
GO
/+ACoAKgAqACoAKgAq- Object:  Table +AFs-dbo+AF0-.+AFs-Dept+AF0-    Script Date: 27/06/2022 16:49:25 +ACoAKgAqACoAKgAq-/
SET ANSI+AF8-NULLS ON
GO
SET QUOTED+AF8-IDENTIFIER ON
GO
CREATE TABLE +AFs-dbo+AF0-.+AFs-Dept+AF0-(
	+AFs-DID+AF0- +AFs-int+AF0- IDENTITY(1,1) NOT NULL,
	+AFs-DName+AF0- +AFs-varchar+AF0-(50) NOT NULL,
 CONSTRAINT +AFs-PK+AF8-Dept+AF0- PRIMARY KEY CLUSTERED 
(
	+AFs-DID+AF0- ASC
)WITH (PAD+AF8-INDEX +AD0- OFF, STATISTICS+AF8-NORECOMPUTE +AD0- OFF, IGNORE+AF8-DUP+AF8-KEY +AD0- OFF, ALLOW+AF8-ROW+AF8-LOCKS +AD0- ON, ALLOW+AF8-PAGE+AF8-LOCKS +AD0- ON, OPTIMIZE+AF8-FOR+AF8-SEQUENTIAL+AF8-KEY +AD0- OFF) ON +AFs-PRIMARY+AF0-
) ON +AFs-PRIMARY+AF0-
GO
/+ACoAKgAqACoAKgAq- Object:  Table +AFs-dbo+AF0-.+AFs-Group+AF0-    Script Date: 27/06/2022 16:49:25 +ACoAKgAqACoAKgAq-/
SET ANSI+AF8-NULLS ON
GO
SET QUOTED+AF8-IDENTIFIER ON
GO
CREATE TABLE +AFs-dbo+AF0-.+AFs-Group+AF0-(
	+AFs-GID+AF0- +AFs-int+AF0- IDENTITY(1,1) NOT NULL,
	+AFs-Gname+AF0- +AFs-varchar+AF0-(50) NOT NULL,
	+AFs-SubjectID+AF0- +AFs-int+AF0- NOT NULL,
	+AFs-LecturerID+AF0- +AFs-int+AF0- NOT NULL,
 CONSTRAINT +AFs-PK+AF8-Table+AF8-1+AF0- PRIMARY KEY CLUSTERED 
(
	+AFs-GID+AF0- ASC
)WITH (PAD+AF8-INDEX +AD0- OFF, STATISTICS+AF8-NORECOMPUTE +AD0- OFF, IGNORE+AF8-DUP+AF8-KEY +AD0- OFF, ALLOW+AF8-ROW+AF8-LOCKS +AD0- ON, ALLOW+AF8-PAGE+AF8-LOCKS +AD0- ON, OPTIMIZE+AF8-FOR+AF8-SEQUENTIAL+AF8-KEY +AD0- OFF) ON +AFs-PRIMARY+AF0-
) ON +AFs-PRIMARY+AF0-
GO
/+ACoAKgAqACoAKgAq- Object:  Table +AFs-dbo+AF0-.+AFs-Group+AF8-Enroll+AF0-    Script Date: 27/06/2022 16:49:25 +ACoAKgAqACoAKgAq-/
SET ANSI+AF8-NULLS ON
GO
SET QUOTED+AF8-IDENTIFIER ON
GO
CREATE TABLE +AFs-dbo+AF0-.+AFs-Group+AF8-Enroll+AF0-(
	+AFs-GID+AF0- +AFs-int+AF0- NOT NULL,
	+AFs-SID+AF0- +AFs-int+AF0- NOT NULL,
 CONSTRAINT +AFs-PK+AF8-Group+AF8-Enroll+AF0- PRIMARY KEY CLUSTERED 
(
	+AFs-GID+AF0- ASC,
	+AFs-SID+AF0- ASC
)WITH (PAD+AF8-INDEX +AD0- OFF, STATISTICS+AF8-NORECOMPUTE +AD0- OFF, IGNORE+AF8-DUP+AF8-KEY +AD0- OFF, ALLOW+AF8-ROW+AF8-LOCKS +AD0- ON, ALLOW+AF8-PAGE+AF8-LOCKS +AD0- ON, OPTIMIZE+AF8-FOR+AF8-SEQUENTIAL+AF8-KEY +AD0- OFF) ON +AFs-PRIMARY+AF0-
) ON +AFs-PRIMARY+AF0-
GO
/+ACoAKgAqACoAKgAq- Object:  Table +AFs-dbo+AF0-.+AFs-Lecturer+AF0-    Script Date: 27/06/2022 16:49:25 +ACoAKgAqACoAKgAq-/
SET ANSI+AF8-NULLS ON
GO
SET QUOTED+AF8-IDENTIFIER ON
GO
CREATE TABLE +AFs-dbo+AF0-.+AFs-Lecturer+AF0-(
	+AFs-LID+AF0- +AFs-int+AF0- IDENTITY(1,1) NOT NULL,
	+AFs-LName+AF0- +AFs-nvarchar+AF0-(50) NOT NULL,
	+AFs-gender+AF0- +AFs-bit+AF0- NOT NULL,
	+AFs-dob+AF0- +AFs-date+AF0- NOT NULL,
	+AFs-email+AF0- +AFs-varchar+AF0-(50) NOT NULL,
	+AFs-password+AF0- +AFs-varchar+AF0-(50) NOT NULL,
	+AFs-DID+AF0- +AFs-int+AF0- NOT NULL,
	+AFs-Img+AF0- +AFs-varchar+AF0-(150) NOT NULL,
 CONSTRAINT +AFs-PK+AF8-Lecturer+AF0- PRIMARY KEY CLUSTERED 
(
	+AFs-LID+AF0- ASC
)WITH (PAD+AF8-INDEX +AD0- OFF, STATISTICS+AF8-NORECOMPUTE +AD0- OFF, IGNORE+AF8-DUP+AF8-KEY +AD0- OFF, ALLOW+AF8-ROW+AF8-LOCKS +AD0- ON, ALLOW+AF8-PAGE+AF8-LOCKS +AD0- ON, OPTIMIZE+AF8-FOR+AF8-SEQUENTIAL+AF8-KEY +AD0- OFF) ON +AFs-PRIMARY+AF0-
) ON +AFs-PRIMARY+AF0-
GO
/+ACoAKgAqACoAKgAq- Object:  Table +AFs-dbo+AF0-.+AFs-Major+AF0-    Script Date: 27/06/2022 16:49:25 +ACoAKgAqACoAKgAq-/
SET ANSI+AF8-NULLS ON
GO
SET QUOTED+AF8-IDENTIFIER ON
GO
CREATE TABLE +AFs-dbo+AF0-.+AFs-Major+AF0-(
	+AFs-MID+AF0- +AFs-int+AF0- IDENTITY(1,1) NOT NULL,
	+AFs-MName+AF0- +AFs-varchar+AF0-(50) NOT NULL,
	+AFs-MCode+AF0- +AFs-varchar+AF0-(50) NOT NULL,
 CONSTRAINT +AFs-PK+AF8-Major+AF0- PRIMARY KEY CLUSTERED 
(
	+AFs-MID+AF0- ASC
)WITH (PAD+AF8-INDEX +AD0- OFF, STATISTICS+AF8-NORECOMPUTE +AD0- OFF, IGNORE+AF8-DUP+AF8-KEY +AD0- OFF, ALLOW+AF8-ROW+AF8-LOCKS +AD0- ON, ALLOW+AF8-PAGE+AF8-LOCKS +AD0- ON, OPTIMIZE+AF8-FOR+AF8-SEQUENTIAL+AF8-KEY +AD0- OFF) ON +AFs-PRIMARY+AF0-
) ON +AFs-PRIMARY+AF0-
GO
/+ACoAKgAqACoAKgAq- Object:  Table +AFs-dbo+AF0-.+AFs-Room+AF0-    Script Date: 27/06/2022 16:49:25 +ACoAKgAqACoAKgAq-/
SET ANSI+AF8-NULLS ON
GO
SET QUOTED+AF8-IDENTIFIER ON
GO
CREATE TABLE +AFs-dbo+AF0-.+AFs-Room+AF0-(
	+AFs-RID+AF0- +AFs-int+AF0- NOT NULL,
	+AFs-RName+AF0- +AFs-varchar+AF0-(50) NOT NULL,
 CONSTRAINT +AFs-PK+AF8-Room+AF0- PRIMARY KEY CLUSTERED 
(
	+AFs-RID+AF0- ASC
)WITH (PAD+AF8-INDEX +AD0- OFF, STATISTICS+AF8-NORECOMPUTE +AD0- OFF, IGNORE+AF8-DUP+AF8-KEY +AD0- OFF, ALLOW+AF8-ROW+AF8-LOCKS +AD0- ON, ALLOW+AF8-PAGE+AF8-LOCKS +AD0- ON, OPTIMIZE+AF8-FOR+AF8-SEQUENTIAL+AF8-KEY +AD0- OFF) ON +AFs-PRIMARY+AF0-
) ON +AFs-PRIMARY+AF0-
GO
/+ACoAKgAqACoAKgAq- Object:  Table +AFs-dbo+AF0-.+AFs-Session+AF0-    Script Date: 27/06/2022 16:49:25 +ACoAKgAqACoAKgAq-/
SET ANSI+AF8-NULLS ON
GO
SET QUOTED+AF8-IDENTIFIER ON
GO
CREATE TABLE +AFs-dbo+AF0-.+AFs-Session+AF0-(
	+AFs-SessionID+AF0- +AFs-int+AF0- IDENTITY(1,1) NOT NULL,
	+AFs-SessionName+AF0- +AFs-varchar+AF0-(50) NOT NULL,
	+AFs-SessionDetail+AF0- +AFs-varchar+AF0-(150) NOT NULL,
	+AFs-GID+AF0- +AFs-int+AF0- NOT NULL,
	+AFs-SlotID+AF0- +AFs-int+AF0- NOT NULL,
	+AFs-RoomID+AF0- +AFs-int+AF0- NOT NULL,
	+AFs-DateApply+AF0- +AFs-date+AF0- NOT NULL,
 CONSTRAINT +AFs-PK+AF8-Session+AF8-1+AF0- PRIMARY KEY CLUSTERED 
(
	+AFs-SessionID+AF0- ASC
)WITH (PAD+AF8-INDEX +AD0- OFF, STATISTICS+AF8-NORECOMPUTE +AD0- OFF, IGNORE+AF8-DUP+AF8-KEY +AD0- OFF, ALLOW+AF8-ROW+AF8-LOCKS +AD0- ON, ALLOW+AF8-PAGE+AF8-LOCKS +AD0- ON, OPTIMIZE+AF8-FOR+AF8-SEQUENTIAL+AF8-KEY +AD0- OFF) ON +AFs-PRIMARY+AF0-
) ON +AFs-PRIMARY+AF0-
GO
/+ACoAKgAqACoAKgAq- Object:  Table +AFs-dbo+AF0-.+AFs-Slot+AF0-    Script Date: 27/06/2022 16:49:25 +ACoAKgAqACoAKgAq-/
SET ANSI+AF8-NULLS ON
GO
SET QUOTED+AF8-IDENTIFIER ON
GO
CREATE TABLE +AFs-dbo+AF0-.+AFs-Slot+AF0-(
	+AFs-id+AF0- +AFs-int+AF0- IDENTITY(1,1) NOT NULL,
	+AFs-name+AF0- +AFs-varchar+AF0-(50) NOT NULL,
	+AFs-TimeStart+AF0- +AFs-time+AF0-(7) NOT NULL,
	+AFs-TimeEnd+AF0- +AFs-time+AF0-(7) NOT NULL,
 CONSTRAINT +AFs-PK+AF8-Slot+AF0- PRIMARY KEY CLUSTERED 
(
	+AFs-id+AF0- ASC
)WITH (PAD+AF8-INDEX +AD0- OFF, STATISTICS+AF8-NORECOMPUTE +AD0- OFF, IGNORE+AF8-DUP+AF8-KEY +AD0- OFF, ALLOW+AF8-ROW+AF8-LOCKS +AD0- ON, ALLOW+AF8-PAGE+AF8-LOCKS +AD0- ON, OPTIMIZE+AF8-FOR+AF8-SEQUENTIAL+AF8-KEY +AD0- OFF) ON +AFs-PRIMARY+AF0-
) ON +AFs-PRIMARY+AF0-
GO
/+ACoAKgAqACoAKgAq- Object:  Table +AFs-dbo+AF0-.+AFs-Student+AF0-    Script Date: 27/06/2022 16:49:25 +ACoAKgAqACoAKgAq-/
SET ANSI+AF8-NULLS ON
GO
SET QUOTED+AF8-IDENTIFIER ON
GO
CREATE TABLE +AFs-dbo+AF0-.+AFs-Student+AF0-(
	+AFs-SID+AF0- +AFs-int+AF0- IDENTITY(1,1) NOT NULL,
	+AFs-SName+AF0- +AFs-nvarchar+AF0-(50) NOT NULL,
	+AFs-gender+AF0- +AFs-bit+AF0- NOT NULL,
	+AFs-dob+AF0- +AFs-date+AF0- NOT NULL,
	+AFs-email+AF0- +AFs-varchar+AF0-(50) NOT NULL,
	+AFs-password+AF0- +AFs-varchar+AF0-(50) NOT NULL,
	+AFs-YearNo+AF0- +AFs-int+AF0- NOT NULL,
	+AFs-MID+AF0- +AFs-int+AF0- NOT NULL,
	+AFs-Img+AF0- +AFs-varchar+AF0-(150) NOT NULL,
	+AFs-SCode+AF0- +AFs-varchar+AF0-(10) NOT NULL,
 CONSTRAINT +AFs-PK+AF8-Student+AF0- PRIMARY KEY CLUSTERED 
(
	+AFs-SID+AF0- ASC
)WITH (PAD+AF8-INDEX +AD0- OFF, STATISTICS+AF8-NORECOMPUTE +AD0- OFF, IGNORE+AF8-DUP+AF8-KEY +AD0- OFF, ALLOW+AF8-ROW+AF8-LOCKS +AD0- ON, ALLOW+AF8-PAGE+AF8-LOCKS +AD0- ON, OPTIMIZE+AF8-FOR+AF8-SEQUENTIAL+AF8-KEY +AD0- OFF) ON +AFs-PRIMARY+AF0-
) ON +AFs-PRIMARY+AF0-
GO
/+ACoAKgAqACoAKgAq- Object:  Table +AFs-dbo+AF0-.+AFs-Subject+AF0-    Script Date: 27/06/2022 16:49:25 +ACoAKgAqACoAKgAq-/
SET ANSI+AF8-NULLS ON
GO
SET QUOTED+AF8-IDENTIFIER ON
GO
CREATE TABLE +AFs-dbo+AF0-.+AFs-Subject+AF0-(
	+AFs-id+AF0- +AFs-int+AF0- IDENTITY(1,1) NOT NULL,
	+AFs-name+AF0- +AFs-varchar+AF0-(50) NOT NULL,
	+AFs-code+AF0- +AFs-varchar+AF0-(50) NOT NULL,
 CONSTRAINT +AFs-PK+AF8-Subject+AF0- PRIMARY KEY CLUSTERED 
(
	+AFs-id+AF0- ASC
)WITH (PAD+AF8-INDEX +AD0- OFF, STATISTICS+AF8-NORECOMPUTE +AD0- OFF, IGNORE+AF8-DUP+AF8-KEY +AD0- OFF, ALLOW+AF8-ROW+AF8-LOCKS +AD0- ON, ALLOW+AF8-PAGE+AF8-LOCKS +AD0- ON, OPTIMIZE+AF8-FOR+AF8-SEQUENTIAL+AF8-KEY +AD0- OFF) ON +AFs-PRIMARY+AF0-
) ON +AFs-PRIMARY+AF0-
GO
SET IDENTITY+AF8-INSERT +AFs-dbo+AF0-.+AFs-Dept+AF0- ON 
GO
INSERT +AFs-dbo+AF0-.+AFs-Dept+AF0- (+AFs-DID+AF0-, +AFs-DName+AF0-) VALUES (1, N'Artificial Intelligence')
GO
INSERT +AFs-dbo+AF0-.+AFs-Dept+AF0- (+AFs-DID+AF0-, +AFs-DName+AF0-) VALUES (2, N'Business Administration')
GO
INSERT +AFs-dbo+AF0-.+AFs-Dept+AF0- (+AFs-DID+AF0-, +AFs-DName+AF0-) VALUES (3, N'Computer Science')
GO
INSERT +AFs-dbo+AF0-.+AFs-Dept+AF0- (+AFs-DID+AF0-, +AFs-DName+AF0-) VALUES (4, N'Computing Fundamental')
GO
INSERT +AFs-dbo+AF0-.+AFs-Dept+AF0- (+AFs-DID+AF0-, +AFs-DName+AF0-) VALUES (5, N'English')
GO
INSERT +AFs-dbo+AF0-.+AFs-Dept+AF0- (+AFs-DID+AF0-, +AFs-DName+AF0-) VALUES (6, N'Finance')
GO
INSERT +AFs-dbo+AF0-.+AFs-Dept+AF0- (+AFs-DID+AF0-, +AFs-DName+AF0-) VALUES (7, N'Graphic Design')
GO
INSERT +AFs-dbo+AF0-.+AFs-Dept+AF0- (+AFs-DID+AF0-, +AFs-DName+AF0-) VALUES (8, N'Information Assurance')
GO
INSERT +AFs-dbo+AF0-.+AFs-Dept+AF0- (+AFs-DID+AF0-, +AFs-DName+AF0-) VALUES (9, N'Japanese')
GO
INSERT +AFs-dbo+AF0-.+AFs-Dept+AF0- (+AFs-DID+AF0-, +AFs-DName+AF0-) VALUES (10, N'Korean')
GO
INSERT +AFs-dbo+AF0-.+AFs-Dept+AF0- (+AFs-DID+AF0-, +AFs-DName+AF0-) VALUES (11, N'Mathematics')
GO
INSERT +AFs-dbo+AF0-.+AFs-Dept+AF0- (+AFs-DID+AF0-, +AFs-DName+AF0-) VALUES (12, N'Multimedia Communications')
GO
INSERT +AFs-dbo+AF0-.+AFs-Dept+AF0- (+AFs-DID+AF0-, +AFs-DName+AF0-) VALUES (13, N'Physical Training')
GO
INSERT +AFs-dbo+AF0-.+AFs-Dept+AF0- (+AFs-DID+AF0-, +AFs-DName+AF0-) VALUES (14, N'Software Engineering')
GO
INSERT +AFs-dbo+AF0-.+AFs-Dept+AF0- (+AFs-DID+AF0-, +AFs-DName+AF0-) VALUES (15, N'Traditional Instrument')
GO
INSERT +AFs-dbo+AF0-.+AFs-Dept+AF0- (+AFs-DID+AF0-, +AFs-DName+AF0-) VALUES (16, N'Vietnamese')
GO
SET IDENTITY+AF8-INSERT +AFs-dbo+AF0-.+AFs-Dept+AF0- OFF
GO
SET IDENTITY+AF8-INSERT +AFs-dbo+AF0-.+AFs-Group+AF0- ON 
GO
INSERT +AFs-dbo+AF0-.+AFs-Group+AF0- (+AFs-GID+AF0-, +AFs-Gname+AF0-, +AFs-SubjectID+AF0-, +AFs-LecturerID+AF0-) VALUES (1, N'PRJ301.M4', 1, 1)
GO
INSERT +AFs-dbo+AF0-.+AFs-Group+AF0- (+AFs-GID+AF0-, +AFs-Gname+AF0-, +AFs-SubjectID+AF0-, +AFs-LecturerID+AF0-) VALUES (3, N'PRJ301.M1', 1, 1)
GO
INSERT +AFs-dbo+AF0-.+AFs-Group+AF0- (+AFs-GID+AF0-, +AFs-Gname+AF0-, +AFs-SubjectID+AF0-, +AFs-LecturerID+AF0-) VALUES (4, N'PRJ301.M2', 1, 1)
GO
INSERT +AFs-dbo+AF0-.+AFs-Group+AF0- (+AFs-GID+AF0-, +AFs-Gname+AF0-, +AFs-SubjectID+AF0-, +AFs-LecturerID+AF0-) VALUES (5, N'PRJ301.M3', 1, 1)
GO
INSERT +AFs-dbo+AF0-.+AFs-Group+AF0- (+AFs-GID+AF0-, +AFs-Gname+AF0-, +AFs-SubjectID+AF0-, +AFs-LecturerID+AF0-) VALUES (6, N'DBI202.M1', 4, 3)
GO
INSERT +AFs-dbo+AF0-.+AFs-Group+AF0- (+AFs-GID+AF0-, +AFs-Gname+AF0-, +AFs-SubjectID+AF0-, +AFs-LecturerID+AF0-) VALUES (7, N'DBI202.M2', 4, 3)
GO
INSERT +AFs-dbo+AF0-.+AFs-Group+AF0- (+AFs-GID+AF0-, +AFs-Gname+AF0-, +AFs-SubjectID+AF0-, +AFs-LecturerID+AF0-) VALUES (9, N'DBI202.M3', 4, 3)
GO
INSERT +AFs-dbo+AF0-.+AFs-Group+AF0- (+AFs-GID+AF0-, +AFs-Gname+AF0-, +AFs-SubjectID+AF0-, +AFs-LecturerID+AF0-) VALUES (10, N'DBI202.M2', 4, 3)
GO
SET IDENTITY+AF8-INSERT +AFs-dbo+AF0-.+AFs-Group+AF0- OFF
GO
INSERT +AFs-dbo+AF0-.+AFs-Group+AF8-Enroll+AF0- (+AFs-GID+AF0-, +AFs-SID+AF0-) VALUES (1, 1)
GO
INSERT +AFs-dbo+AF0-.+AFs-Group+AF8-Enroll+AF0- (+AFs-GID+AF0-, +AFs-SID+AF0-) VALUES (1, 4)
GO
INSERT +AFs-dbo+AF0-.+AFs-Group+AF8-Enroll+AF0- (+AFs-GID+AF0-, +AFs-SID+AF0-) VALUES (1, 5)
GO
INSERT +AFs-dbo+AF0-.+AFs-Group+AF8-Enroll+AF0- (+AFs-GID+AF0-, +AFs-SID+AF0-) VALUES (1, 6)
GO
INSERT +AFs-dbo+AF0-.+AFs-Group+AF8-Enroll+AF0- (+AFs-GID+AF0-, +AFs-SID+AF0-) VALUES (1, 7)
GO
INSERT +AFs-dbo+AF0-.+AFs-Group+AF8-Enroll+AF0- (+AFs-GID+AF0-, +AFs-SID+AF0-) VALUES (1, 8)
GO
INSERT +AFs-dbo+AF0-.+AFs-Group+AF8-Enroll+AF0- (+AFs-GID+AF0-, +AFs-SID+AF0-) VALUES (1, 9)
GO
INSERT +AFs-dbo+AF0-.+AFs-Group+AF8-Enroll+AF0- (+AFs-GID+AF0-, +AFs-SID+AF0-) VALUES (1, 10)
GO
INSERT +AFs-dbo+AF0-.+AFs-Group+AF8-Enroll+AF0- (+AFs-GID+AF0-, +AFs-SID+AF0-) VALUES (1, 11)
GO
INSERT +AFs-dbo+AF0-.+AFs-Group+AF8-Enroll+AF0- (+AFs-GID+AF0-, +AFs-SID+AF0-) VALUES (1, 12)
GO
INSERT +AFs-dbo+AF0-.+AFs-Group+AF8-Enroll+AF0- (+AFs-GID+AF0-, +AFs-SID+AF0-) VALUES (1, 13)
GO
INSERT +AFs-dbo+AF0-.+AFs-Group+AF8-Enroll+AF0- (+AFs-GID+AF0-, +AFs-SID+AF0-) VALUES (1, 14)
GO
INSERT +AFs-dbo+AF0-.+AFs-Group+AF8-Enroll+AF0- (+AFs-GID+AF0-, +AFs-SID+AF0-) VALUES (1, 15)
GO
INSERT +AFs-dbo+AF0-.+AFs-Group+AF8-Enroll+AF0- (+AFs-GID+AF0-, +AFs-SID+AF0-) VALUES (1, 16)
GO
INSERT +AFs-dbo+AF0-.+AFs-Group+AF8-Enroll+AF0- (+AFs-GID+AF0-, +AFs-SID+AF0-) VALUES (1, 17)
GO
INSERT +AFs-dbo+AF0-.+AFs-Group+AF8-Enroll+AF0- (+AFs-GID+AF0-, +AFs-SID+AF0-) VALUES (1, 18)
GO
INSERT +AFs-dbo+AF0-.+AFs-Group+AF8-Enroll+AF0- (+AFs-GID+AF0-, +AFs-SID+AF0-) VALUES (1, 19)
GO
INSERT +AFs-dbo+AF0-.+AFs-Group+AF8-Enroll+AF0- (+AFs-GID+AF0-, +AFs-SID+AF0-) VALUES (1, 20)
GO
INSERT +AFs-dbo+AF0-.+AFs-Group+AF8-Enroll+AF0- (+AFs-GID+AF0-, +AFs-SID+AF0-) VALUES (1, 21)
GO
INSERT +AFs-dbo+AF0-.+AFs-Group+AF8-Enroll+AF0- (+AFs-GID+AF0-, +AFs-SID+AF0-) VALUES (1, 22)
GO
INSERT +AFs-dbo+AF0-.+AFs-Group+AF8-Enroll+AF0- (+AFs-GID+AF0-, +AFs-SID+AF0-) VALUES (1, 23)
GO
INSERT +AFs-dbo+AF0-.+AFs-Group+AF8-Enroll+AF0- (+AFs-GID+AF0-, +AFs-SID+AF0-) VALUES (1, 24)
GO
INSERT +AFs-dbo+AF0-.+AFs-Group+AF8-Enroll+AF0- (+AFs-GID+AF0-, +AFs-SID+AF0-) VALUES (1, 25)
GO
INSERT +AFs-dbo+AF0-.+AFs-Group+AF8-Enroll+AF0- (+AFs-GID+AF0-, +AFs-SID+AF0-) VALUES (1, 26)
GO
INSERT +AFs-dbo+AF0-.+AFs-Group+AF8-Enroll+AF0- (+AFs-GID+AF0-, +AFs-SID+AF0-) VALUES (1, 27)
GO
INSERT +AFs-dbo+AF0-.+AFs-Group+AF8-Enroll+AF0- (+AFs-GID+AF0-, +AFs-SID+AF0-) VALUES (1, 28)
GO
INSERT +AFs-dbo+AF0-.+AFs-Group+AF8-Enroll+AF0- (+AFs-GID+AF0-, +AFs-SID+AF0-) VALUES (1, 29)
GO
INSERT +AFs-dbo+AF0-.+AFs-Group+AF8-Enroll+AF0- (+AFs-GID+AF0-, +AFs-SID+AF0-) VALUES (1, 30)
GO
INSERT +AFs-dbo+AF0-.+AFs-Group+AF8-Enroll+AF0- (+AFs-GID+AF0-, +AFs-SID+AF0-) VALUES (1, 31)
GO
INSERT +AFs-dbo+AF0-.+AFs-Group+AF8-Enroll+AF0- (+AFs-GID+AF0-, +AFs-SID+AF0-) VALUES (1, 32)
GO
INSERT +AFs-dbo+AF0-.+AFs-Group+AF8-Enroll+AF0- (+AFs-GID+AF0-, +AFs-SID+AF0-) VALUES (3, 10)
GO
INSERT +AFs-dbo+AF0-.+AFs-Group+AF8-Enroll+AF0- (+AFs-GID+AF0-, +AFs-SID+AF0-) VALUES (3, 11)
GO
INSERT +AFs-dbo+AF0-.+AFs-Group+AF8-Enroll+AF0- (+AFs-GID+AF0-, +AFs-SID+AF0-) VALUES (3, 12)
GO
INSERT +AFs-dbo+AF0-.+AFs-Group+AF8-Enroll+AF0- (+AFs-GID+AF0-, +AFs-SID+AF0-) VALUES (3, 13)
GO
INSERT +AFs-dbo+AF0-.+AFs-Group+AF8-Enroll+AF0- (+AFs-GID+AF0-, +AFs-SID+AF0-) VALUES (3, 14)
GO
INSERT +AFs-dbo+AF0-.+AFs-Group+AF8-Enroll+AF0- (+AFs-GID+AF0-, +AFs-SID+AF0-) VALUES (3, 15)
GO
INSERT +AFs-dbo+AF0-.+AFs-Group+AF8-Enroll+AF0- (+AFs-GID+AF0-, +AFs-SID+AF0-) VALUES (3, 16)
GO
INSERT +AFs-dbo+AF0-.+AFs-Group+AF8-Enroll+AF0- (+AFs-GID+AF0-, +AFs-SID+AF0-) VALUES (3, 17)
GO
INSERT +AFs-dbo+AF0-.+AFs-Group+AF8-Enroll+AF0- (+AFs-GID+AF0-, +AFs-SID+AF0-) VALUES (3, 18)
GO
INSERT +AFs-dbo+AF0-.+AFs-Group+AF8-Enroll+AF0- (+AFs-GID+AF0-, +AFs-SID+AF0-) VALUES (3, 19)
GO
INSERT +AFs-dbo+AF0-.+AFs-Group+AF8-Enroll+AF0- (+AFs-GID+AF0-, +AFs-SID+AF0-) VALUES (3, 20)
GO
INSERT +AFs-dbo+AF0-.+AFs-Group+AF8-Enroll+AF0- (+AFs-GID+AF0-, +AFs-SID+AF0-) VALUES (3, 21)
GO
INSERT +AFs-dbo+AF0-.+AFs-Group+AF8-Enroll+AF0- (+AFs-GID+AF0-, +AFs-SID+AF0-) VALUES (3, 22)
GO
INSERT +AFs-dbo+AF0-.+AFs-Group+AF8-Enroll+AF0- (+AFs-GID+AF0-, +AFs-SID+AF0-) VALUES (3, 23)
GO
INSERT +AFs-dbo+AF0-.+AFs-Group+AF8-Enroll+AF0- (+AFs-GID+AF0-, +AFs-SID+AF0-) VALUES (3, 24)
GO
INSERT +AFs-dbo+AF0-.+AFs-Group+AF8-Enroll+AF0- (+AFs-GID+AF0-, +AFs-SID+AF0-) VALUES (3, 25)
GO
INSERT +AFs-dbo+AF0-.+AFs-Group+AF8-Enroll+AF0- (+AFs-GID+AF0-, +AFs-SID+AF0-) VALUES (3, 26)
GO
INSERT +AFs-dbo+AF0-.+AFs-Group+AF8-Enroll+AF0- (+AFs-GID+AF0-, +AFs-SID+AF0-) VALUES (3, 27)
GO
INSERT +AFs-dbo+AF0-.+AFs-Group+AF8-Enroll+AF0- (+AFs-GID+AF0-, +AFs-SID+AF0-) VALUES (3, 28)
GO
INSERT +AFs-dbo+AF0-.+AFs-Group+AF8-Enroll+AF0- (+AFs-GID+AF0-, +AFs-SID+AF0-) VALUES (3, 29)
GO
INSERT +AFs-dbo+AF0-.+AFs-Group+AF8-Enroll+AF0- (+AFs-GID+AF0-, +AFs-SID+AF0-) VALUES (3, 30)
GO
INSERT +AFs-dbo+AF0-.+AFs-Group+AF8-Enroll+AF0- (+AFs-GID+AF0-, +AFs-SID+AF0-) VALUES (3, 31)
GO
INSERT +AFs-dbo+AF0-.+AFs-Group+AF8-Enroll+AF0- (+AFs-GID+AF0-, +AFs-SID+AF0-) VALUES (3, 32)
GO
SET IDENTITY+AF8-INSERT +AFs-dbo+AF0-.+AFs-Lecturer+AF0- ON 
GO
INSERT +AFs-dbo+AF0-.+AFs-Lecturer+AF0- (+AFs-LID+AF0-, +AFs-LName+AF0-, +AFs-gender+AF0-, +AFs-dob+AF0-, +AFs-email+AF0-, +AFs-password+AF0-, +AFs-DID+AF0-, +AFs-Img+AF0-) VALUES (1, N'Ng+APQ- T+APk-ng S+AaE-n', 1, CAST(N'1988-02-14' AS Date), N'sonnt5+AEA-fe.edu.vn', N'123456', 4, N'../img/Male+AF8-Avatar.png')
GO
INSERT +AFs-dbo+AF0-.+AFs-Lecturer+AF0- (+AFs-LID+AF0-, +AFs-LName+AF0-, +AFs-gender+AF0-, +AFs-dob+AF0-, +AFs-email+AF0-, +AFs-password+AF0-, +AFs-DID+AF0-, +AFs-Img+AF0-) VALUES (3, N'L+AOo- Ph+AbABoQ-ng Chi', 0, CAST(N'1988-02-14' AS Date), N'chilp14+AEA-fe.edu.vn', N'123456', 4, N'../img/Female+AF8-Avatar.png')
GO
INSERT +AFs-dbo+AF0-.+AFs-Lecturer+AF0- (+AFs-LID+AF0-, +AFs-LName+AF0-, +AFs-gender+AF0-, +AFs-dob+AF0-, +AFs-email+AF0-, +AFs-password+AF0-, +AFs-DID+AF0-, +AFs-Img+AF0-) VALUES (4, N'V+AWk- M+HqE-nh Tu+HqU-n', 1, CAST(N'1988-02-14' AS Date), N'tuanvm2+AEA-fe.edu.vn', N'123456', 4, N'../img/Male+AF8-Avatar.png')
GO
INSERT +AFs-dbo+AF0-.+AFs-Lecturer+AF0- (+AFs-LID+AF0-, +AFs-LName+AF0-, +AFs-gender+AF0-, +AFs-dob+AF0-, +AFs-email+AF0-, +AFs-password+AF0-, +AFs-DID+AF0-, +AFs-Img+AF0-) VALUES (5, N'L+AOo- Thanh H+HqM-i', 1, CAST(N'1988-02-14' AS Date), N'hailt+AEA-fe.edu.vn', N'123456', 4, N'../img/Male+AF8-Avatar.png')
GO
SET IDENTITY+AF8-INSERT +AFs-dbo+AF0-.+AFs-Lecturer+AF0- OFF
GO
SET IDENTITY+AF8-INSERT +AFs-dbo+AF0-.+AFs-Major+AF0- ON 
GO
INSERT +AFs-dbo+AF0-.+AFs-Major+AF0- (+AFs-MID+AF0-, +AFs-MName+AF0-, +AFs-MCode+AF0-) VALUES (1, N'Software Engineering', N'SE')
GO
INSERT +AFs-dbo+AF0-.+AFs-Major+AF0- (+AFs-MID+AF0-, +AFs-MName+AF0-, +AFs-MCode+AF0-) VALUES (2, N'Information Assurance', N'IA')
GO
INSERT +AFs-dbo+AF0-.+AFs-Major+AF0- (+AFs-MID+AF0-, +AFs-MName+AF0-, +AFs-MCode+AF0-) VALUES (3, N'Finance', N'FI')
GO
INSERT +AFs-dbo+AF0-.+AFs-Major+AF0- (+AFs-MID+AF0-, +AFs-MName+AF0-, +AFs-MCode+AF0-) VALUES (4, N'Graphic Design', N'GD')
GO
INSERT +AFs-dbo+AF0-.+AFs-Major+AF0- (+AFs-MID+AF0-, +AFs-MName+AF0-, +AFs-MCode+AF0-) VALUES (5, N'Economic', N'EC')
GO
INSERT +AFs-dbo+AF0-.+AFs-Major+AF0- (+AFs-MID+AF0-, +AFs-MName+AF0-, +AFs-MCode+AF0-) VALUES (6, N'English', N'EN')
GO
INSERT +AFs-dbo+AF0-.+AFs-Major+AF0- (+AFs-MID+AF0-, +AFs-MName+AF0-, +AFs-MCode+AF0-) VALUES (7, N'Japanish', N'JP')
GO
INSERT +AFs-dbo+AF0-.+AFs-Major+AF0- (+AFs-MID+AF0-, +AFs-MName+AF0-, +AFs-MCode+AF0-) VALUES (8, N'Artificial Intelligence', N'AI')
GO
INSERT +AFs-dbo+AF0-.+AFs-Major+AF0- (+AFs-MID+AF0-, +AFs-MName+AF0-, +AFs-MCode+AF0-) VALUES (9, N'Korean', N'KO')
GO
INSERT +AFs-dbo+AF0-.+AFs-Major+AF0- (+AFs-MID+AF0-, +AFs-MName+AF0-, +AFs-MCode+AF0-) VALUES (10, N'Multimedia Communication', N'MC')
GO
INSERT +AFs-dbo+AF0-.+AFs-Major+AF0- (+AFs-MID+AF0-, +AFs-MName+AF0-, +AFs-MCode+AF0-) VALUES (14, N'Hotel Management', N'HM')
GO
SET IDENTITY+AF8-INSERT +AFs-dbo+AF0-.+AFs-Major+AF0- OFF
GO
INSERT +AFs-dbo+AF0-.+AFs-Room+AF0- (+AFs-RID+AF0-, +AFs-RName+AF0-) VALUES (1, N'AL-101L')
GO
INSERT +AFs-dbo+AF0-.+AFs-Room+AF0- (+AFs-RID+AF0-, +AFs-RName+AF0-) VALUES (2, N'AL-102L')
GO
INSERT +AFs-dbo+AF0-.+AFs-Room+AF0- (+AFs-RID+AF0-, +AFs-RName+AF0-) VALUES (3, N'AL-103L')
GO
INSERT +AFs-dbo+AF0-.+AFs-Room+AF0- (+AFs-RID+AF0-, +AFs-RName+AF0-) VALUES (4, N'AL-104L')
GO
INSERT +AFs-dbo+AF0-.+AFs-Room+AF0- (+AFs-RID+AF0-, +AFs-RName+AF0-) VALUES (5, N'AL-105L')
GO
INSERT +AFs-dbo+AF0-.+AFs-Room+AF0- (+AFs-RID+AF0-, +AFs-RName+AF0-) VALUES (6, N'AL-106L')
GO
INSERT +AFs-dbo+AF0-.+AFs-Room+AF0- (+AFs-RID+AF0-, +AFs-RName+AF0-) VALUES (7, N'AL-101R')
GO
INSERT +AFs-dbo+AF0-.+AFs-Room+AF0- (+AFs-RID+AF0-, +AFs-RName+AF0-) VALUES (8, N'AL-102R')
GO
INSERT +AFs-dbo+AF0-.+AFs-Room+AF0- (+AFs-RID+AF0-, +AFs-RName+AF0-) VALUES (9, N'AL-103R')
GO
INSERT +AFs-dbo+AF0-.+AFs-Room+AF0- (+AFs-RID+AF0-, +AFs-RName+AF0-) VALUES (10, N'AL-104R')
GO
INSERT +AFs-dbo+AF0-.+AFs-Room+AF0- (+AFs-RID+AF0-, +AFs-RName+AF0-) VALUES (11, N'AL-105R')
GO
INSERT +AFs-dbo+AF0-.+AFs-Room+AF0- (+AFs-RID+AF0-, +AFs-RName+AF0-) VALUES (12, N'AL-106R')
GO
INSERT +AFs-dbo+AF0-.+AFs-Room+AF0- (+AFs-RID+AF0-, +AFs-RName+AF0-) VALUES (13, N'AL-201L')
GO
INSERT +AFs-dbo+AF0-.+AFs-Room+AF0- (+AFs-RID+AF0-, +AFs-RName+AF0-) VALUES (14, N'AL-202L')
GO
INSERT +AFs-dbo+AF0-.+AFs-Room+AF0- (+AFs-RID+AF0-, +AFs-RName+AF0-) VALUES (15, N'AL-203L')
GO
INSERT +AFs-dbo+AF0-.+AFs-Room+AF0- (+AFs-RID+AF0-, +AFs-RName+AF0-) VALUES (16, N'AL-204L')
GO
INSERT +AFs-dbo+AF0-.+AFs-Room+AF0- (+AFs-RID+AF0-, +AFs-RName+AF0-) VALUES (17, N'AL-205L')
GO
INSERT +AFs-dbo+AF0-.+AFs-Room+AF0- (+AFs-RID+AF0-, +AFs-RName+AF0-) VALUES (18, N'AL-206L')
GO
INSERT +AFs-dbo+AF0-.+AFs-Room+AF0- (+AFs-RID+AF0-, +AFs-RName+AF0-) VALUES (19, N'AL-201R')
GO
INSERT +AFs-dbo+AF0-.+AFs-Room+AF0- (+AFs-RID+AF0-, +AFs-RName+AF0-) VALUES (20, N'AL-202R')
GO
INSERT +AFs-dbo+AF0-.+AFs-Room+AF0- (+AFs-RID+AF0-, +AFs-RName+AF0-) VALUES (21, N'AL-203R')
GO
INSERT +AFs-dbo+AF0-.+AFs-Room+AF0- (+AFs-RID+AF0-, +AFs-RName+AF0-) VALUES (22, N'AL-204R')
GO
INSERT +AFs-dbo+AF0-.+AFs-Room+AF0- (+AFs-RID+AF0-, +AFs-RName+AF0-) VALUES (23, N'AL-205R')
GO
INSERT +AFs-dbo+AF0-.+AFs-Room+AF0- (+AFs-RID+AF0-, +AFs-RName+AF0-) VALUES (24, N'AL-206R')
GO
SET IDENTITY+AF8-INSERT +AFs-dbo+AF0-.+AFs-Session+AF0- ON 
GO
INSERT +AFs-dbo+AF0-.+AFs-Session+AF0- (+AFs-SessionID+AF0-, +AFs-SessionName+AF0-, +AFs-SessionDetail+AF0-, +AFs-GID+AF0-, +AFs-SlotID+AF0-, +AFs-RoomID+AF0-, +AFs-DateApply+AF0-) VALUES (1, N'1', N'1', 1, 1, 1, CAST(N'2022-06-27' AS Date))
GO
INSERT +AFs-dbo+AF0-.+AFs-Session+AF0- (+AFs-SessionID+AF0-, +AFs-SessionName+AF0-, +AFs-SessionDetail+AF0-, +AFs-GID+AF0-, +AFs-SlotID+AF0-, +AFs-RoomID+AF0-, +AFs-DateApply+AF0-) VALUES (2, N'2', N'2', 1, 2, 1, CAST(N'2022-06-27' AS Date))
GO
INSERT +AFs-dbo+AF0-.+AFs-Session+AF0- (+AFs-SessionID+AF0-, +AFs-SessionName+AF0-, +AFs-SessionDetail+AF0-, +AFs-GID+AF0-, +AFs-SlotID+AF0-, +AFs-RoomID+AF0-, +AFs-DateApply+AF0-) VALUES (3, N'3', N'3', 1, 3, 1, CAST(N'2022-06-27' AS Date))
GO
INSERT +AFs-dbo+AF0-.+AFs-Session+AF0- (+AFs-SessionID+AF0-, +AFs-SessionName+AF0-, +AFs-SessionDetail+AF0-, +AFs-GID+AF0-, +AFs-SlotID+AF0-, +AFs-RoomID+AF0-, +AFs-DateApply+AF0-) VALUES (4, N'1', N'1', 3, 4, 1, CAST(N'2022-06-27' AS Date))
GO
INSERT +AFs-dbo+AF0-.+AFs-Session+AF0- (+AFs-SessionID+AF0-, +AFs-SessionName+AF0-, +AFs-SessionDetail+AF0-, +AFs-GID+AF0-, +AFs-SlotID+AF0-, +AFs-RoomID+AF0-, +AFs-DateApply+AF0-) VALUES (5, N'2', N'2', 3, 5, 1, CAST(N'2022-06-27' AS Date))
GO
INSERT +AFs-dbo+AF0-.+AFs-Session+AF0- (+AFs-SessionID+AF0-, +AFs-SessionName+AF0-, +AFs-SessionDetail+AF0-, +AFs-GID+AF0-, +AFs-SlotID+AF0-, +AFs-RoomID+AF0-, +AFs-DateApply+AF0-) VALUES (7, N'3', N'3', 3, 6, 1, CAST(N'2022-06-27' AS Date))
GO
SET IDENTITY+AF8-INSERT +AFs-dbo+AF0-.+AFs-Session+AF0- OFF
GO
SET IDENTITY+AF8-INSERT +AFs-dbo+AF0-.+AFs-Slot+AF0- ON 
GO
INSERT +AFs-dbo+AF0-.+AFs-Slot+AF0- (+AFs-id+AF0-, +AFs-name+AF0-, +AFs-TimeStart+AF0-, +AFs-TimeEnd+AF0-) VALUES (1, N'Slot1', CAST(N'07:30:00' AS Time), CAST(N'09:00:00' AS Time))
GO
INSERT +AFs-dbo+AF0-.+AFs-Slot+AF0- (+AFs-id+AF0-, +AFs-name+AF0-, +AFs-TimeStart+AF0-, +AFs-TimeEnd+AF0-) VALUES (2, N'Slot2', CAST(N'09:10:00' AS Time), CAST(N'10:40:00' AS Time))
GO
INSERT +AFs-dbo+AF0-.+AFs-Slot+AF0- (+AFs-id+AF0-, +AFs-name+AF0-, +AFs-TimeStart+AF0-, +AFs-TimeEnd+AF0-) VALUES (3, N'Slot3', CAST(N'10:50:00' AS Time), CAST(N'12:20:00' AS Time))
GO
INSERT +AFs-dbo+AF0-.+AFs-Slot+AF0- (+AFs-id+AF0-, +AFs-name+AF0-, +AFs-TimeStart+AF0-, +AFs-TimeEnd+AF0-) VALUES (4, N'Slot4', CAST(N'12:50:00' AS Time), CAST(N'14:20:00' AS Time))
GO
INSERT +AFs-dbo+AF0-.+AFs-Slot+AF0- (+AFs-id+AF0-, +AFs-name+AF0-, +AFs-TimeStart+AF0-, +AFs-TimeEnd+AF0-) VALUES (5, N'Slot5', CAST(N'14:30:00' AS Time), CAST(N'16:00:00' AS Time))
GO
INSERT +AFs-dbo+AF0-.+AFs-Slot+AF0- (+AFs-id+AF0-, +AFs-name+AF0-, +AFs-TimeStart+AF0-, +AFs-TimeEnd+AF0-) VALUES (6, N'Slot6', CAST(N'16:10:00' AS Time), CAST(N'17:40:00' AS Time))
GO
INSERT +AFs-dbo+AF0-.+AFs-Slot+AF0- (+AFs-id+AF0-, +AFs-name+AF0-, +AFs-TimeStart+AF0-, +AFs-TimeEnd+AF0-) VALUES (7, N'Slot7', CAST(N'17:50:00' AS Time), CAST(N'19:20:00' AS Time))
GO
INSERT +AFs-dbo+AF0-.+AFs-Slot+AF0- (+AFs-id+AF0-, +AFs-name+AF0-, +AFs-TimeStart+AF0-, +AFs-TimeEnd+AF0-) VALUES (8, N'Slot8', CAST(N'19:30:00' AS Time), CAST(N'21:00:00' AS Time))
GO
SET IDENTITY+AF8-INSERT +AFs-dbo+AF0-.+AFs-Slot+AF0- OFF
GO
SET IDENTITY+AF8-INSERT +AFs-dbo+AF0-.+AFs-Student+AF0- ON 
GO
INSERT +AFs-dbo+AF0-.+AFs-Student+AF0- (+AFs-SID+AF0-, +AFs-SName+AF0-, +AFs-gender+AF0-, +AFs-dob+AF0-, +AFs-email+AF0-, +AFs-password+AF0-, +AFs-YearNo+AF0-, +AFs-MID+AF0-, +AFs-Img+AF0-, +AFs-SCode+AF0-) VALUES (1, N'Ng+APQ- Ch+AO0- B+HqM-o', 1, CAST(N'2000-02-20' AS Date), N'baonche140027+AEA-fpt.edu.vn', N'123456', 2018, 1, N'../img/Male+AF8-Avatar.png', N'HE140027')
GO
INSERT +AFs-dbo+AF0-.+AFs-Student+AF0- (+AFs-SID+AF0-, +AFs-SName+AF0-, +AFs-gender+AF0-, +AFs-dob+AF0-, +AFs-email+AF0-, +AFs-password+AF0-, +AFs-YearNo+AF0-, +AFs-MID+AF0-, +AFs-Img+AF0-, +AFs-SCode+AF0-) VALUES (4, N'Tr+Hqc-n H+HqM-i Long', 1, CAST(N'2000-03-30' AS Date), N'longthhe140220+AEA-fpt.edu.vn', N'123456', 2018, 1, N'../img/Male+AF8-Avatar.png', N'HE140220')
GO
INSERT +AFs-dbo+AF0-.+AFs-Student+AF0- (+AFs-SID+AF0-, +AFs-SName+AF0-, +AFs-gender+AF0-, +AFs-dob+AF0-, +AFs-email+AF0-, +AFs-password+AF0-, +AFs-YearNo+AF0-, +AFs-MID+AF0-, +AFs-Img+AF0-, +AFs-SCode+AF0-) VALUES (5, N'Nguy+HsU-n Th+Hr8- H+APk-ng', 1, CAST(N'2000-04-12' AS Date), N'hungnthe140253+AEA-fpt.edu.vn', N'123456', 2018, 1, N'../img/Male+AF8-Avatar.png', N'HE140253')
GO
INSERT +AFs-dbo+AF0-.+AFs-Student+AF0- (+AFs-SID+AF0-, +AFs-SName+AF0-, +AFs-gender+AF0-, +AFs-dob+AF0-, +AFs-email+AF0-, +AFs-password+AF0-, +AFs-YearNo+AF0-, +AFs-MID+AF0-, +AFs-Img+AF0-, +AFs-SCode+AF0-) VALUES (6, N'Nguy+HsU-n +ANAe6Q-c Th+Hss-nh', 1, CAST(N'2000-04-12' AS Date), N'thinhndhe141433+AEA-fpt.edu.vn', N'123456', 2018, 1, N'../img/Male+AF8-Avatar.png', N'HE141433')
GO
INSERT +AFs-dbo+AF0-.+AFs-Student+AF0- (+AFs-SID+AF0-, +AFs-SName+AF0-, +AFs-gender+AF0-, +AFs-dob+AF0-, +AFs-email+AF0-, +AFs-password+AF0-, +AFs-YearNo+AF0-, +AFs-MID+AF0-, +AFs-Img+AF0-, +AFs-SCode+AF0-) VALUES (7, N'Nguy+HsU-n B+AOE- Tu+HqU-n Anh', 1, CAST(N'2000-04-12' AS Date), N'anhnbthe141555+AEA-fpt.edu.vn', N'123456', 2018, 1, N'../img/Male+AF8-Avatar.png', N'HE141555')
GO
INSERT +AFs-dbo+AF0-.+AFs-Student+AF0- (+AFs-SID+AF0-, +AFs-SName+AF0-, +AFs-gender+AF0-, +AFs-dob+AF0-, +AFs-email+AF0-, +AFs-password+AF0-, +AFs-YearNo+AF0-, +AFs-MID+AF0-, +AFs-Img+AF0-, +AFs-SCode+AF0-) VALUES (8, N'Nguy+HsU-n Trung Hi+Hr8-u', 1, CAST(N'1995-03-04' AS Date), N'hieunthe141740+AEA-fpt.edu.vn', N'123456', 2018, 1, N'../img/Male+AF8-Avatar.png', N'HE141740')
GO
INSERT +AFs-dbo+AF0-.+AFs-Student+AF0- (+AFs-SID+AF0-, +AFs-SName+AF0-, +AFs-gender+AF0-, +AFs-dob+AF0-, +AFs-email+AF0-, +AFs-password+AF0-, +AFs-YearNo+AF0-, +AFs-MID+AF0-, +AFs-Img+AF0-, +AFs-SCode+AF0-) VALUES (9, N'V+AWk- Xu+AOI-n T+APk-ng', 1, CAST(N'2001-04-12' AS Date), N'tungvxhe150247+AEA-fpt.edu.vn', N'123456', 2019, 1, N'../img/Male+AF8-Avatar.png', N'HE150247')
GO
INSERT +AFs-dbo+AF0-.+AFs-Student+AF0- (+AFs-SID+AF0-, +AFs-SName+AF0-, +AFs-gender+AF0-, +AFs-dob+AF0-, +AFs-email+AF0-, +AFs-password+AF0-, +AFs-YearNo+AF0-, +AFs-MID+AF0-, +AFs-Img+AF0-, +AFs-SCode+AF0-) VALUES (10, N'Nguy+HsU-n Anh Tu+HqU-n', 1, CAST(N'2001-04-12' AS Date), N'tuannahe150484+AEA-fpt.edu.vn', N'123456', 2019, 1, N'../img/Male+AF8-Avatar.png', N'HE150484')
GO
INSERT +AFs-dbo+AF0-.+AFs-Student+AF0- (+AFs-SID+AF0-, +AFs-SName+AF0-, +AFs-gender+AF0-, +AFs-dob+AF0-, +AFs-email+AF0-, +AFs-password+AF0-, +AFs-YearNo+AF0-, +AFs-MID+AF0-, +AFs-Img+AF0-, +AFs-SCode+AF0-) VALUES (11, N'Tr+Hqc-n C+APQ-ng Th+AOA-nh', 1, CAST(N'2001-04-12' AS Date), N'thanhtche150499+AEA-fpt.edu.vn', N'123456', 2019, 1, N'../img/Male+AF8-Avatar.png', N'HE150499')
GO
INSERT +AFs-dbo+AF0-.+AFs-Student+AF0- (+AFs-SID+AF0-, +AFs-SName+AF0-, +AFs-gender+AF0-, +AFs-dob+AF0-, +AFs-email+AF0-, +AFs-password+AF0-, +AFs-YearNo+AF0-, +AFs-MID+AF0-, +AFs-Img+AF0-, +AFs-SCode+AF0-) VALUES (12, N'Nguy+HsU-n +ANABAw-ng Quang', 1, CAST(N'2001-04-12' AS Date), N'quangndhe150537+AEA-fpt.edu.vn', N'123456', 2019, 1, N'../img/Male+AF8-Avatar.png', N'HE150537')
GO
INSERT +AFs-dbo+AF0-.+AFs-Student+AF0- (+AFs-SID+AF0-, +AFs-SName+AF0-, +AFs-gender+AF0-, +AFs-dob+AF0-, +AFs-email+AF0-, +AFs-password+AF0-, +AFs-YearNo+AF0-, +AFs-MID+AF0-, +AFs-Img+AF0-, +AFs-SCode+AF0-) VALUES (13, N'Tr+Hqc-n Anh Kh+HqM-i', 1, CAST(N'2001-04-12' AS Date), N'khaitahe150546+AEA-fpt.edu.vn', N'123456', 2019, 1, N'../img/Male+AF8-Avatar.png', N'HE150546')
GO
INSERT +AFs-dbo+AF0-.+AFs-Student+AF0- (+AFs-SID+AF0-, +AFs-SName+AF0-, +AFs-gender+AF0-, +AFs-dob+AF0-, +AFs-email+AF0-, +AFs-password+AF0-, +AFs-YearNo+AF0-, +AFs-MID+AF0-, +AFs-Img+AF0-, +AFs-SCode+AF0-) VALUES (14, N'Nguy+HsU-n Kh+Hq8-c T+AOA-i', 1, CAST(N'2001-04-12' AS Date), N'tainkhe150664+AEA-fpt.edu.vn', N'123456', 2019, 1, N'../img/Male+AF8-Avatar.png', N'HE150664')
GO
INSERT +AFs-dbo+AF0-.+AFs-Student+AF0- (+AFs-SID+AF0-, +AFs-SName+AF0-, +AFs-gender+AF0-, +AFs-dob+AF0-, +AFs-email+AF0-, +AFs-password+AF0-, +AFs-YearNo+AF0-, +AFs-MID+AF0-, +AFs-Img+AF0-, +AFs-SCode+AF0-) VALUES (15, N'Tr+Hqc-n Trung +ANAe6Q-c', 1, CAST(N'2001-04-12' AS Date), N'ductthe150887+AEA-fpt.edu.vn', N'123456', 2019, 1, N'../img/Male+AF8-Avatar.png', N'HE150887')
GO
INSERT +AFs-dbo+AF0-.+AFs-Student+AF0- (+AFs-SID+AF0-, +AFs-SName+AF0-, +AFs-gender+AF0-, +AFs-dob+AF0-, +AFs-email+AF0-, +AFs-password+AF0-, +AFs-YearNo+AF0-, +AFs-MID+AF0-, +AFs-Img+AF0-, +AFs-SCode+AF0-) VALUES (16, N'B+APk-i Quang C+AbAe3Q-ng', 1, CAST(N'2001-04-12' AS Date), N'cuongbqhe150907+AEA-fpt.edu.vn', N'123456', 2019, 1, N'../img/Male+AF8-Avatar.png', N'HE150907')
GO
INSERT +AFs-dbo+AF0-.+AFs-Student+AF0- (+AFs-SID+AF0-, +AFs-SName+AF0-, +AFs-gender+AF0-, +AFs-dob+AF0-, +AFs-email+AF0-, +AFs-password+AF0-, +AFs-YearNo+AF0-, +AFs-MID+AF0-, +AFs-Img+AF0-, +AFs-SCode+AF0-) VALUES (17, N'Nguy+HsU-n Ph+APo-c H+AbA-ng', 1, CAST(N'2001-04-12' AS Date), N'hungnphe150914+AEA-fpt.edu.vn', N'123456', 2019, 1, N'../img/Male+AF8-Avatar.png', N'HE150914')
GO
INSERT +AFs-dbo+AF0-.+AFs-Student+AF0- (+AFs-SID+AF0-, +AFs-SName+AF0-, +AFs-gender+AF0-, +AFs-dob+AF0-, +AFs-email+AF0-, +AFs-password+AF0-, +AFs-YearNo+AF0-, +AFs-MID+AF0-, +AFs-Img+AF0-, +AFs-SCode+AF0-) VALUES (18, N'Nguy+HsU-n Xu+AOI-n L+AP0-', 1, CAST(N'2001-04-12' AS Date), N'lynxhe151043+AEA-fpt.edu.vn', N'123456', 2019, 1, N'../img/Male+AF8-Avatar.png', N'HE151043')
GO
INSERT +AFs-dbo+AF0-.+AFs-Student+AF0- (+AFs-SID+AF0-, +AFs-SName+AF0-, +AFs-gender+AF0-, +AFs-dob+AF0-, +AFs-email+AF0-, +AFs-password+AF0-, +AFs-YearNo+AF0-, +AFs-MID+AF0-, +AFs-Img+AF0-, +AFs-SCode+AF0-) VALUES (19, N'L+AOo- V+AWk- Long', 1, CAST(N'2001-04-12' AS Date), N'longlvhe151065+AEA-fpt.edu.vn', N'123456', 2019, 1, N'../img/Male+AF8-Avatar.png', N'HE151065')
GO
INSERT +AFs-dbo+AF0-.+AFs-Student+AF0- (+AFs-SID+AF0-, +AFs-SName+AF0-, +AFs-gender+AF0-, +AFs-dob+AF0-, +AFs-email+AF0-, +AFs-password+AF0-, +AFs-YearNo+AF0-, +AFs-MID+AF0-, +AFs-Img+AF0-, +AFs-SCode+AF0-) VALUES (20, N'Nguy+HsU-n B+AOE- Qu+AOI-n', 1, CAST(N'2001-04-12' AS Date), N'quannbhe151118+AEA-fpt.edu.vn', N'123456', 2019, 1, N'../img/Male+AF8-Avatar.png', N'HE151118')
GO
INSERT +AFs-dbo+AF0-.+AFs-Student+AF0- (+AFs-SID+AF0-, +AFs-SName+AF0-, +AFs-gender+AF0-, +AFs-dob+AF0-, +AFs-email+AF0-, +AFs-password+AF0-, +AFs-YearNo+AF0-, +AFs-MID+AF0-, +AFs-Img+AF0-, +AFs-SCode+AF0-) VALUES (21, N'Nguy+HsU-n V+AQM-n Lu+Hq0-t', 1, CAST(N'2001-04-12' AS Date), N'luatnvhe151149+AEA-fpt.edu.vn', N'123456', 2019, 1, N'../img/Male+AF8-Avatar.png', N'HE151149')
GO
INSERT +AFs-dbo+AF0-.+AFs-Student+AF0- (+AFs-SID+AF0-, +AFs-SName+AF0-, +AFs-gender+AF0-, +AFs-dob+AF0-, +AFs-email+AF0-, +AFs-password+AF0-, +AFs-YearNo+AF0-, +AFs-MID+AF0-, +AFs-Img+AF0-, +AFs-SCode+AF0-) VALUES (22, N'Nguy+HsU-n Minh Hi+Hr8-u', 1, CAST(N'2001-04-12' AS Date), N'hieunmhe151180+AEA-fpt.edu.vn', N'123456', 2019, 1, N'../img/Male+AF8-Avatar.png', N'HE151180')
GO
INSERT +AFs-dbo+AF0-.+AFs-Student+AF0- (+AFs-SID+AF0-, +AFs-SName+AF0-, +AFs-gender+AF0-, +AFs-dob+AF0-, +AFs-email+AF0-, +AFs-password+AF0-, +AFs-YearNo+AF0-, +AFs-MID+AF0-, +AFs-Img+AF0-, +AFs-SCode+AF0-) VALUES (23, N'Nguy+HsU-n Th+Hss- Thu Linh', 0, CAST(N'2001-04-12' AS Date), N'linhntthe151525+AEA-fpt.edu.vn', N'123456', 2019, 1, N'../img/Female+AF8-Avatar.png', N'HE151525')
GO
INSERT +AFs-dbo+AF0-.+AFs-Student+AF0- (+AFs-SID+AF0-, +AFs-SName+AF0-, +AFs-gender+AF0-, +AFs-dob+AF0-, +AFs-email+AF0-, +AFs-password+AF0-, +AFs-YearNo+AF0-, +AFs-MID+AF0-, +AFs-Img+AF0-, +AFs-SCode+AF0-) VALUES (24, N'+ANAe1w- Quang Huy', 1, CAST(N'2001-04-12' AS Date), N'huydqhe153060+AEA-fpt.edu.vn', N'123456', 2019, 1, N'../img/Male+AF8-Avatar.png', N'HE153060')
GO
INSERT +AFs-dbo+AF0-.+AFs-Student+AF0- (+AFs-SID+AF0-, +AFs-SName+AF0-, +AFs-gender+AF0-, +AFs-dob+AF0-, +AFs-email+AF0-, +AFs-password+AF0-, +AFs-YearNo+AF0-, +AFs-MID+AF0-, +AFs-Img+AF0-, +AFs-SCode+AF0-) VALUES (25, N'Th+AOA-nh H+Hu8-u Ng+AOI-n Giang', 0, CAST(N'2001-04-12' AS Date), N'giangthnhe153205+AEA-fpt.edu.vn', N'123456', 2019, 1, N'../img/Male+AF8-Avatar.png', N'HE153205')
GO
INSERT +AFs-dbo+AF0-.+AFs-Student+AF0- (+AFs-SID+AF0-, +AFs-SName+AF0-, +AFs-gender+AF0-, +AFs-dob+AF0-, +AFs-email+AF0-, +AFs-password+AF0-, +AFs-YearNo+AF0-, +AFs-MID+AF0-, +AFs-Img+AF0-, +AFs-SCode+AF0-) VALUES (26, N'Chu Minh Qu+AOI-n', 1, CAST(N'2001-04-12' AS Date), N'quancmhe153322+AEA-fpt.edu.vn', N'123456', 2019, 1, N'../img/Male+AF8-Avatar.png', N'HE153322')
GO
INSERT +AFs-dbo+AF0-.+AFs-Student+AF0- (+AFs-SID+AF0-, +AFs-SName+AF0-, +AFs-gender+AF0-, +AFs-dob+AF0-, +AFs-email+AF0-, +AFs-password+AF0-, +AFs-YearNo+AF0-, +AFs-MID+AF0-, +AFs-Img+AF0-, +AFs-SCode+AF0-) VALUES (27, N'L+AOo- Nh+Hq0-t T+AOI-n', 1, CAST(N'2001-04-12' AS Date), N'tanlnhe153509+AEA-fpt.edu.vn', N'123456', 2019, 1, N'../img/Male+AF8-Avatar.png', N'HE153509')
GO
INSERT +AFs-dbo+AF0-.+AFs-Student+AF0- (+AFs-SID+AF0-, +AFs-SName+AF0-, +AFs-gender+AF0-, +AFs-dob+AF0-, +AFs-email+AF0-, +AFs-password+AF0-, +AFs-YearNo+AF0-, +AFs-MID+AF0-, +AFs-Img+AF0-, +AFs-SCode+AF0-) VALUES (28, N'Nguy+HsU-n V+AQM-n Ki+Hsc-t', 1, CAST(N'2001-04-12' AS Date), N'kietnvhe153595+AEA-fpt.edu.vn', N'123456', 2019, 1, N'../img/Male+AF8-Avatar.png', N'HE153595')
GO
INSERT +AFs-dbo+AF0-.+AFs-Student+AF0- (+AFs-SID+AF0-, +AFs-SName+AF0-, +AFs-gender+AF0-, +AFs-dob+AF0-, +AFs-email+AF0-, +AFs-password+AF0-, +AFs-YearNo+AF0-, +AFs-MID+AF0-, +AFs-Img+AF0-, +AFs-SCode+AF0-) VALUES (29, N'Nguy+HsU-n Thi+Hsc-n Thanh', 1, CAST(N'2001-04-12' AS Date), N'thanhnthe153718+AEA-fpt.edu.vn', N'123456', 2019, 1, N'../img/Male+AF8-Avatar.png', N'HE153718')
GO
INSERT +AFs-dbo+AF0-.+AFs-Student+AF0- (+AFs-SID+AF0-, +AFs-SName+AF0-, +AFs-gender+AF0-, +AFs-dob+AF0-, +AFs-email+AF0-, +AFs-password+AF0-, +AFs-YearNo+AF0-, +AFs-MID+AF0-, +AFs-Img+AF0-, +AFs-SCode+AF0-) VALUES (30, N'Nguy+HsU-n +ANABAw-ng Th+Hss-nh', 1, CAST(N'2001-04-12' AS Date), N'thinhndhe160416+AEA-fpt.edu.vn', N'123456', 2020, 1, N'../img/Male+AF8-Avatar.png', N'HE160416')
GO
INSERT +AFs-dbo+AF0-.+AFs-Student+AF0- (+AFs-SID+AF0-, +AFs-SName+AF0-, +AFs-gender+AF0-, +AFs-dob+AF0-, +AFs-email+AF0-, +AFs-password+AF0-, +AFs-YearNo+AF0-, +AFs-MID+AF0-, +AFs-Img+AF0-, +AFs-SCode+AF0-) VALUES (31, N'+ANAe1w- H+APk-ng S+AaE-n', 1, CAST(N'2001-04-12' AS Date), N'sondhhe160698+AEA-fpt.edu.vn', N'123456', 2020, 1, N'../img/Male+AF8-Avatar.png', N'HE160698')
GO
INSERT +AFs-dbo+AF0-.+AFs-Student+AF0- (+AFs-SID+AF0-, +AFs-SName+AF0-, +AFs-gender+AF0-, +AFs-dob+AF0-, +AFs-email+AF0-, +AFs-password+AF0-, +AFs-YearNo+AF0-, +AFs-MID+AF0-, +AFs-Img+AF0-, +AFs-SCode+AF0-) VALUES (32, N'Ph+AO0- Ti+Hr8-n +ANAeoQ-t', 1, CAST(N'2001-04-12' AS Date), N'datpthe163011+AEA-fpt.edu.vn', N'123456', 2020, 1, N'../img/Male+AF8-Avatar.png', N'HE163011')
GO
SET IDENTITY+AF8-INSERT +AFs-dbo+AF0-.+AFs-Student+AF0- OFF
GO
SET IDENTITY+AF8-INSERT +AFs-dbo+AF0-.+AFs-Subject+AF0- ON 
GO
INSERT +AFs-dbo+AF0-.+AFs-Subject+AF0- (+AFs-id+AF0-, +AFs-name+AF0-, +AFs-code+AF0-) VALUES (1, N'Java Web Application Development', N'PRJ301')
GO
INSERT +AFs-dbo+AF0-.+AFs-Subject+AF0- (+AFs-id+AF0-, +AFs-name+AF0-, +AFs-code+AF0-) VALUES (2, N'Programming Fundamentals', N'PRF192')
GO
INSERT +AFs-dbo+AF0-.+AFs-Subject+AF0- (+AFs-id+AF0-, +AFs-name+AF0-, +AFs-code+AF0-) VALUES (3, N'Data warehouse', N'DBW301')
GO
INSERT +AFs-dbo+AF0-.+AFs-Subject+AF0- (+AFs-id+AF0-, +AFs-name+AF0-, +AFs-code+AF0-) VALUES (4, N'Introduction to Databases', N'DBI202')
GO
SET IDENTITY+AF8-INSERT +AFs-dbo+AF0-.+AFs-Subject+AF0- OFF
GO
SET ANSI+AF8-PADDING ON
GO
/+ACoAKgAqACoAKgAq- Object:  Index +AFs-UQ+AF8AXw-Subject+AF8AXw-357D4CF9B41E1D7D+AF0-    Script Date: 27/06/2022 16:49:25 +ACoAKgAqACoAKgAq-/
ALTER TABLE +AFs-dbo+AF0-.+AFs-Subject+AF0- ADD UNIQUE NONCLUSTERED 
(
	+AFs-code+AF0- ASC
)WITH (PAD+AF8-INDEX +AD0- OFF, STATISTICS+AF8-NORECOMPUTE +AD0- OFF, SORT+AF8-IN+AF8-TEMPDB +AD0- OFF, IGNORE+AF8-DUP+AF8-KEY +AD0- OFF, ONLINE +AD0- OFF, ALLOW+AF8-ROW+AF8-LOCKS +AD0- ON, ALLOW+AF8-PAGE+AF8-LOCKS +AD0- ON, OPTIMIZE+AF8-FOR+AF8-SEQUENTIAL+AF8-KEY +AD0- OFF) ON +AFs-PRIMARY+AF0-
GO
ALTER TABLE +AFs-dbo+AF0-.+AFs-Attendance+AF0-  WITH CHECK ADD  CONSTRAINT +AFs-FK+AF8-Attendance+AF8-Lecturer+AF0- FOREIGN KEY(+AFs-LID+AF0-)
REFERENCES +AFs-dbo+AF0-.+AFs-Lecturer+AF0- (+AFs-LID+AF0-)
GO
ALTER TABLE +AFs-dbo+AF0-.+AFs-Attendance+AF0- CHECK CONSTRAINT +AFs-FK+AF8-Attendance+AF8-Lecturer+AF0-
GO
ALTER TABLE +AFs-dbo+AF0-.+AFs-Attendance+AF0-  WITH CHECK ADD  CONSTRAINT +AFs-FK+AF8-Attendance+AF8-Session+AF0- FOREIGN KEY(+AFs-SessionID+AF0-)
REFERENCES +AFs-dbo+AF0-.+AFs-Session+AF0- (+AFs-SessionID+AF0-)
GO
ALTER TABLE +AFs-dbo+AF0-.+AFs-Attendance+AF0- CHECK CONSTRAINT +AFs-FK+AF8-Attendance+AF8-Session+AF0-
GO
ALTER TABLE +AFs-dbo+AF0-.+AFs-Attendance+AF0-  WITH CHECK ADD  CONSTRAINT +AFs-FK+AF8-Attendance+AF8-Student+AF0- FOREIGN KEY(+AFs-SID+AF0-)
REFERENCES +AFs-dbo+AF0-.+AFs-Student+AF0- (+AFs-SID+AF0-)
GO
ALTER TABLE +AFs-dbo+AF0-.+AFs-Attendance+AF0- CHECK CONSTRAINT +AFs-FK+AF8-Attendance+AF8-Student+AF0-
GO
ALTER TABLE +AFs-dbo+AF0-.+AFs-Group+AF0-  WITH CHECK ADD  CONSTRAINT +AFs-FK+AF8-Group+AF8-Lecturer+AF0- FOREIGN KEY(+AFs-LecturerID+AF0-)
REFERENCES +AFs-dbo+AF0-.+AFs-Lecturer+AF0- (+AFs-LID+AF0-)
GO
ALTER TABLE +AFs-dbo+AF0-.+AFs-Group+AF0- CHECK CONSTRAINT +AFs-FK+AF8-Group+AF8-Lecturer+AF0-
GO
ALTER TABLE +AFs-dbo+AF0-.+AFs-Group+AF0-  WITH CHECK ADD  CONSTRAINT +AFs-FK+AF8-Group+AF8-Subject+AF0- FOREIGN KEY(+AFs-SubjectID+AF0-)
REFERENCES +AFs-dbo+AF0-.+AFs-Subject+AF0- (+AFs-id+AF0-)
GO
ALTER TABLE +AFs-dbo+AF0-.+AFs-Group+AF0- CHECK CONSTRAINT +AFs-FK+AF8-Group+AF8-Subject+AF0-
GO
ALTER TABLE +AFs-dbo+AF0-.+AFs-Group+AF8-Enroll+AF0-  WITH CHECK ADD  CONSTRAINT +AFs-FK+AF8-Group+AF8-Enroll+AF8-Group+AF0- FOREIGN KEY(+AFs-GID+AF0-)
REFERENCES +AFs-dbo+AF0-.+AFs-Group+AF0- (+AFs-GID+AF0-)
GO
ALTER TABLE +AFs-dbo+AF0-.+AFs-Group+AF8-Enroll+AF0- CHECK CONSTRAINT +AFs-FK+AF8-Group+AF8-Enroll+AF8-Group+AF0-
GO
ALTER TABLE +AFs-dbo+AF0-.+AFs-Group+AF8-Enroll+AF0-  WITH CHECK ADD  CONSTRAINT +AFs-FK+AF8-Group+AF8-Enroll+AF8-Student+AF0- FOREIGN KEY(+AFs-SID+AF0-)
REFERENCES +AFs-dbo+AF0-.+AFs-Student+AF0- (+AFs-SID+AF0-)
GO
ALTER TABLE +AFs-dbo+AF0-.+AFs-Group+AF8-Enroll+AF0- CHECK CONSTRAINT +AFs-FK+AF8-Group+AF8-Enroll+AF8-Student+AF0-
GO
ALTER TABLE +AFs-dbo+AF0-.+AFs-Lecturer+AF0-  WITH CHECK ADD  CONSTRAINT +AFs-FK+AF8-Lecturer+AF8-Dept+AF0- FOREIGN KEY(+AFs-DID+AF0-)
REFERENCES +AFs-dbo+AF0-.+AFs-Dept+AF0- (+AFs-DID+AF0-)
GO
ALTER TABLE +AFs-dbo+AF0-.+AFs-Lecturer+AF0- CHECK CONSTRAINT +AFs-FK+AF8-Lecturer+AF8-Dept+AF0-
GO
ALTER TABLE +AFs-dbo+AF0-.+AFs-Session+AF0-  WITH CHECK ADD  CONSTRAINT +AFs-FK+AF8-Session+AF8-Group+AF0- FOREIGN KEY(+AFs-GID+AF0-)
REFERENCES +AFs-dbo+AF0-.+AFs-Group+AF0- (+AFs-GID+AF0-)
GO
ALTER TABLE +AFs-dbo+AF0-.+AFs-Session+AF0- CHECK CONSTRAINT +AFs-FK+AF8-Session+AF8-Group+AF0-
GO
ALTER TABLE +AFs-dbo+AF0-.+AFs-Session+AF0-  WITH CHECK ADD  CONSTRAINT +AFs-FK+AF8-Session+AF8-Room+AF0- FOREIGN KEY(+AFs-RoomID+AF0-)
REFERENCES +AFs-dbo+AF0-.+AFs-Room+AF0- (+AFs-RID+AF0-)
GO
ALTER TABLE +AFs-dbo+AF0-.+AFs-Session+AF0- CHECK CONSTRAINT +AFs-FK+AF8-Session+AF8-Room+AF0-
GO
ALTER TABLE +AFs-dbo+AF0-.+AFs-Session+AF0-  WITH CHECK ADD  CONSTRAINT +AFs-FK+AF8-Session+AF8-Slot+AF0- FOREIGN KEY(+AFs-SlotID+AF0-)
REFERENCES +AFs-dbo+AF0-.+AFs-Slot+AF0- (+AFs-id+AF0-)
GO
ALTER TABLE +AFs-dbo+AF0-.+AFs-Session+AF0- CHECK CONSTRAINT +AFs-FK+AF8-Session+AF8-Slot+AF0-
GO
ALTER TABLE +AFs-dbo+AF0-.+AFs-Student+AF0-  WITH CHECK ADD  CONSTRAINT +AFs-FK+AF8-Student+AF8-Major+AF0- FOREIGN KEY(+AFs-MID+AF0-)
REFERENCES +AFs-dbo+AF0-.+AFs-Major+AF0- (+AFs-MID+AF0-)
GO
ALTER TABLE +AFs-dbo+AF0-.+AFs-Student+AF0- CHECK CONSTRAINT +AFs-FK+AF8-Student+AF8-Major+AF0-
GO
