USE [bifconvenio]
GO
/****** Object:  User [DOMBIF\bifmonitoreobd]    Script Date: 10-Jan-23 2:00:22 PM ******/
CREATE USER [DOMBIF\bifmonitoreobd] FOR LOGIN [DOMBIF\BIFMONITOREOBD] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [DOMBIF\ECHUMPITAZ]    Script Date: 10-Jan-23 2:00:22 PM ******/
CREATE USER [DOMBIF\ECHUMPITAZ] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [DOMBIF\MEFLORES]    Script Date: 10-Jan-23 2:00:22 PM ******/
CREATE USER [DOMBIF\MEFLORES] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [DOMBIF\NCALLAPINA]    Script Date: 10-Jan-23 2:00:22 PM ******/
CREATE USER [DOMBIF\NCALLAPINA] FOR LOGIN [DOMBIF\NCALLAPINA] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [DOMBIF\OPERADORBD]    Script Date: 10-Jan-23 2:00:22 PM ******/
CREATE USER [DOMBIF\OPERADORBD] FOR LOGIN [DOMBIF\OPERADORBD] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [NT AUTHORITY\SYSTEM]    Script Date: 10-Jan-23 2:00:22 PM ******/
CREATE USER [NT AUTHORITY\SYSTEM] FOR LOGIN [NT AUTHORITY\SYSTEM] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [pruebas]    Script Date: 10-Jan-23 2:00:22 PM ******/
CREATE USER [pruebas] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [usr_convenios]    Script Date: 10-Jan-23 2:00:22 PM ******/
CREATE USER [usr_convenios] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [SCOM_HealthService] ADD MEMBER [DOMBIF\bifmonitoreobd]
GO
ALTER ROLE [db_datareader] ADD MEMBER [DOMBIF\ECHUMPITAZ]
GO
ALTER ROLE [db_datareader] ADD MEMBER [DOMBIF\MEFLORES]
GO
ALTER ROLE [db_datareader] ADD MEMBER [DOMBIF\NCALLAPINA]
GO
ALTER ROLE [db_owner] ADD MEMBER [DOMBIF\OPERADORBD]
GO
ALTER ROLE [db_datareader] ADD MEMBER [pruebas]
GO
ALTER ROLE [db_owner] ADD MEMBER [usr_convenios]
GO
