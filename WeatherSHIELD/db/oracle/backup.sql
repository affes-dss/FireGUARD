use master
ALTER DATABASE WX SET SINGLE_USER WITH ROLLBACK IMMEDIATE    
ALTER DATABASE WX MODIFY NAME = [WX_20160922]
ALTER DATABASE WX_20160922 SET MULTI_USER

ALTER DATABASE WX MODIFY FILE (NAME= 'WX', FILENAME='C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\WX_20160922.mdf');
ALTER DATABASE WX MODIFY FILE (NAME= 'WX_log', FILENAME='C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\WX_20160922_log.ldf');
ALTER DATABASE WX MODIFY FILE (NAME= 'WX', NEWNAME='WX_20160922');
ALTER DATABASE WX MODIFY FILE (NAME= 'WX_log', NEWNAME='WX_20160922_log');


ALTER DATABASE WX MODIFY FILE (NAME= 'WX_20160922', NEWNAME='WX');
ALTER DATABASE WX MODIFY FILE (NAME= 'WX_20160922_log', NEWNAME='WX_log');
ALTER DATABASE WX MODIFY FILE (NAME= 'WX', FILENAME='C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\WX.mdf');
ALTER DATABASE WX MODIFY FILE (NAME= 'WX_log', FILENAME='C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\WX_log.ldf');