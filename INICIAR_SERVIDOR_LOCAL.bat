@echo off
cd /d "%~dp0"
where py >nul 2>nul
if %errorlevel%==0 goto runpy
where python >nul 2>nul
if %errorlevel%==0 goto runpython
echo Python nao encontrado. Instale Python ou use Live Server no VS Code.
pause
exit /b 1
:runpy
start "SEA-MCM" http://localhost:5500
py -m http.server 5500 --bind 127.0.0.1
pause
exit /b
:runpython
start "SEA-MCM" http://localhost:5500
python -m http.server 5500 --bind 127.0.0.1
pause
