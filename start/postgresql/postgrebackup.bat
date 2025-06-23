ECHO off
SETLOCAL ENABLEDELAYEDEXPANSION
set pathbackup=F:\Backup\
set datepath=\%date:~6,4%%date:~3,2%%date:~0,2%_%time:~0,2%%time:~3,2%
ECHO %time% START >> %pathbackup%log.txt
CD /d "C:\Program Files\PostgreSQL\9.6.7-1.1C\bin\"
For /F %%i In (%pathbackup%bases.txt) Do (
	ECHO !time! start dump base %%i >> %pathbackup%log.txt
	if not exist "%pathbackup%%%i%" (
		mkdir %pathbackup%%%i%
	)	
	start /wait pg_dump -v -Ft -d %%i -w -U postgres -f "%pathbackup%%%i%datepath%_%%i.dump" >> %pathbackup%log.txt 
	ECHO !time! end dump base %%i >> %pathbackup%log.txt
)
ECHO %time% END >> %pathbackup%log.txt