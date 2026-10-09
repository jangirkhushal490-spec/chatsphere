@echo off
setlocal
echo ========================================================
echo        ChatSphere - Push to GitHub Repository
echo ========================================================
echo.
echo Make sure you have created an empty repository on GitHub:
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
git branch -M main

echo.
echo Pushing files to GitHub...
git push -u origin main

if %errorLevel% == 0 (
    echo.
    echo ========================================================
    echo SUCCESS: Project pushed to GitHub successfully!
    echo.
    echo To enable GitHub Pages (Live Free Website):
    echo 1. Go to your repository on GitHub.
    echo 2. Click Settings -^> Pages (in the left sidebar).
    echo 3. Under Branch, select 'main' and click Save.
    echo 4. Your site will be live at: https://username.github.io/chatsphere/
    echo ========================================================
) else (
    echo.
    echo [NOTE] If prompted, sign in with your GitHub account in the browser pop-up.
)

pause
