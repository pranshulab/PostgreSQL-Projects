@echo off
cd /d "C:\E--DRIVE code\PostgreSQL-Project"

echo.
echo ==========================================
echo       PostgreSQL GitHub Auto Sync
echo ==========================================
echo.

echo Checking for changes...

git add .

git diff --cached --quiet

if %errorlevel%==0 (
    echo.
    echo No changes detected.
    echo.
    pause
    exit /b
)

echo.
echo Changes detected!
echo.

git commit -m "Updated PostgreSQL project"

echo.
echo Pushing changes to GitHub...
echo.

git push

echo.
echo ==========================================
echo       GitHub Updated Successfully!
echo ==========================================
echo.

pause