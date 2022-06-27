USE [FPTU]
GO
-- get student list by group id
SELECT c.[Gname],a.[SName],a.[Img],a.[SCode]
  FROM [dbo].[Student] a join Group_Enroll b on a.SID = b.SID 
  join [Group] c on b.GID = c.GID  
  where c.gid = ?

-- insert into attendance
USE [FPTU]
GO

INSERT INTO [dbo].[Attendance]
           ([SID]
           ,[SessionID]
           ,[Status]
           ,[Comment]
           ,[EditDate]
           ,[LID])
     VALUES
           (?
           ,?
           ,?
           ,?
           ,?
           ,?)

--view attendence list by session
USE [FPTU]
GO

SELECT d.Gname, b.SName, b.Img,b.SCode
      ,a.[Status]
      ,a.[Comment]
      ,a.[EditDate]
      ,e.LName
  FROM [dbo].[Attendance] a join Student b on a.SID = b.SID 
  join Session c on a.SessionID = c.SessionID 
  join [Group] d on c.GID = d.GID 
  join Lecturer e on e.LID = a.LID
  where a.SessionID = ?

-- get session by Lecture ID from date to date
USE [FPTU]
GO

SELECT a.[SessionID],a.[SlotID],a.[RoomID],a.[DateApply],c.name 
  FROM [dbo].[Session] a join [Group] b on a.GID = b.GID
  join Subject c on b.SubjectID = c.id
  join Slot d on d.id = a.SlotID
  join Room e on e.RID = a.RoomID
  Where b.LecturerID = ? and a.DateApply >= ? and a.DateApply <= ?


-- get group list by lecture Id
USE [FPTU]
GO

SELECT [GID]
      ,[Gname]
      ,[SubjectID]
      ,[LecturerID]
  FROM [dbo].[Group] where LecturerID = ?

-- get session list by group id
USE [FPTU]
GO

SELECT [SessionID]
      ,[SessionName]
      ,[SessionDetail]
      ,[GID]
      ,[SlotID]
      ,[RoomID]
      ,[DateApply]
  FROM [dbo].[Session] where GID = ?

--view attendence list by student id
USE [FPTU]
GO

SELECT d.Gname, b.SName, b.Img,b.SCode
      ,a.[Status]
      ,a.[Comment]
      ,a.[EditDate]
      ,e.LName
  FROM [dbo].[Attendance] a join Student b on a.SID = b.SID 
  join Session c on a.SessionID = c.SessionID 
  join [Group] d on c.GID = d.GID 
  join Lecturer e on e.LID = a.LID
  where b.SID = ?









