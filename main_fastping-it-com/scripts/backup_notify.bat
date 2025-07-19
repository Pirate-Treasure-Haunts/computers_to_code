@echo off
setlocal

:: --- Config ---
set BACKUP_DIR=D:\code\fastping.it.com\backups
set DB_FILE=D:\code\fastping.it.com\data\fastping.db
set DATE_TAG=%DATE:~10,4%-%DATE:~4,2%-%DATE:~7,2%_%TIME:~0,2%%TIME:~3,2%%TIME:~6,2%
set DATE_TAG=%DATE_TAG: =0%
set BACKUP_ZIP=%BACKUP_DIR%\fastping_backup_%DATE_TAG%.zip
set CLEAN_AFTER_DAYS=7

:: Ensure backup dir exists
mkdir "%BACKUP_DIR%" 2>nul

:: Check DB exists
if not exist "%DB_FILE%" (
    echo [ERROR] Database file not found at %DB_FILE%
    powershell -ExecutionPolicy Bypass -File D:\code\fastping.it.com\scripts\send_fail_email.ps1
    exit /b 1
)

:: Zip compress the backup
powershell -Command "Compress-Archive -Path '%DB_FILE%' -DestinationPath '%BACKUP_ZIP%'"

:: Check zip success
if exist "%BACKUP_ZIP%" (
    echo [INFO] Backup successful: %BACKUP_ZIP%
) else (
    echo [ERROR] Backup failed! Sending email...
    powershell -ExecutionPolicy Bypass -File D:\code\fastping.it.com\scripts\send_fail_email.ps1
    exit /b 1
)

:: Auto-clean old backups
forfiles /p "%BACKUP_DIR%" /s /m *.zip /d -%CLEAN_AFTER_DAYS% /c "cmd /c del @path"
echo [INFO] Old backups older than %CLEAN_AFTER_DAYS% days cleaned.

endlocal
