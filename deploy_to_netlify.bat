@echo off
echo ========================================================
echo Opening Netlify Drop and your project folder...
echo ========================================================
start https://app.netlify.com/drop
explorer "%~dp0"
echo.
echo INSTRUCTIONS:
echo 1. Drag the 'chatsphere' folder into the circle on the Netlify web page.
echo 2. Netlify will deploy your site in 10 seconds!
echo ========================================================
pause
