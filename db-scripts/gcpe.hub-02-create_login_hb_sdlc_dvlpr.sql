USE [master]
GO

IF NOT EXISTS 
    (SELECT name  
     FROM master.sys.server_principals
     WHERE name = 'HB_SDLC_DVLPR')
BEGIN
    CREATE LOGIN [HB_SDLC_DVLPR] WITH PASSWORD=N'<ENTER_PASSWORD>', DEFAULT_DATABASE=[Gcpe.Hub], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
	ALTER LOGIN [HB_SDLC_DVLPR] ENABLE
END

GO

USE [Gcpe.Hub]
GO

IF NOT EXISTS
    (SELECT name
     FROM sys.database_principals
     WHERE name = 'HB_SDLC_DVLPR')
BEGIN
    CREATE USER [HB_SDLC_DVLPR] FOR LOGIN [HB_SDLC_DVLPR] WITH DEFAULT_SCHEMA=[dbo] 
	ALTER ROLE [db_owner] ADD MEMBER [HB_SDLC_DVLPR]
END

GO