@echo off
set BACKUP_DIR=D:\code\fastping.it.com\backups
set DB_FILE=D:\code\fastping.it.com\data\fastping.db
set DATE_TAG=%DATE:~10,4%-%DATE:~4,2%-%DATE:~7,2%_%TIME:~0,2%%TIME:~3,2%%TIME:~6,2%
set DATE_TAG=%DATE_TAG: =0%

mkdir "%BACKUP_DIR%" 2>nul
copy "%DB_FILE%" "%BACKUP_DIR%\fastping_backup_%DATE_TAG%.db"
