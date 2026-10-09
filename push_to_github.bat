@echo off
setlocal
echo ========================================================
echo        ChatSphere - Push to GitHub (Dual Branches)
echo ========================================================
echo.
echo Make sure you have created an empty Public repository on GitHub:
echo https://github.com/new
echo.
set /p REPO_URL="Paste your GitHub repository URL (e.g., https://github.com/username/chatsphere.git): "

if "%REPO_URL%"=="" (
    echo [ERROR] No URL provided. Exiting.
    pause
    exit /b
)

echo.
echo Linking repository to: %REPO_URL%
git remote remove origin >nul 2>&1
git remote add origin %REPO_URL%

echo.
echo 1. Pushing 'main' branch (Protected Owner Branch)...
git checkout main >nul 2>&1
git push -u origin main

echo.
echo 2. Pushing 'public-access' branch (Public / Community Branch)...
git checkout public-access >nul 2>&1
git push -u origin public-access

git checkout main >nul 2>&1

if %errorLevel% == 0 (
    echo.
    echo ========================================================
    echo SUCCESS! Both branches pushed to GitHub:
    echo   - 'main' (Owner Branch)
    echo   - 'public-access' (Public Branch for everyone)
    echo ========================================================
) else (
    echo.
    echo [NOTE] If prompted, sign in to your GitHub account in the browser.
)

pause
