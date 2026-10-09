@echo off
echo ====================================================
echo Starting ChatSphere Local Web Server...
echo Open your browser at: http://localhost:3000
echo ====================================================
start http://localhost:3000
python -m http.server 3000
pause
