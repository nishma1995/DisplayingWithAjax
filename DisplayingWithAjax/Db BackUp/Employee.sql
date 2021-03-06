USE [EmployeeOperationManagementSystem]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 9/27/2021 8:09:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[Designation] [nvarchar](50) NOT NULL,
	[DateOfBirth] [date] NOT NULL,
	[PhoneNumber] [nvarchar](15) NOT NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([Id], [Name], [Designation], [DateOfBirth], [PhoneNumber], [IsDeleted]) VALUES (1, N'monu', N'junior dotnet developer', CAST(N'1995-03-06' AS Date), N'9495609646', 0)
INSERT [dbo].[Employee] ([Id], [Name], [Designation], [DateOfBirth], [PhoneNumber], [IsDeleted]) VALUES (3, N'sana', N'Hr', CAST(N'1996-06-06' AS Date), N'8113036779', 0)
INSERT [dbo].[Employee] ([Id], [Name], [Designation], [DateOfBirth], [PhoneNumber], [IsDeleted]) VALUES (4, N'Elsa', N'Technical Lead', CAST(N'1990-07-10' AS Date), N'9495962069', 0)
INSERT [dbo].[Employee] ([Id], [Name], [Designation], [DateOfBirth], [PhoneNumber], [IsDeleted]) VALUES (5, N'Mahesh', N'Senior Developer', CAST(N'1899-01-05' AS Date), N'9460364596', 0)
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
