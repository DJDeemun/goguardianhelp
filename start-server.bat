@echo off
setlocal
cd /d "%~dp0"

where python >nul 2>nul
if errorlevel 1 (
  echo Python was not found. Install Python, then run this again.
  pause
  exit /b 1
)

echo Starting CRAZY-JEW 3D...
echo.
echo   Use this exact URL in Chrome/Edge/Firefox:
echo   http://127.0.0.1:8765/
echo.
echo   (Do not use localhost — use 127.0.0.1)
echo Press Ctrl+C to stop.
echo.

start "" "http://127.0.0.1:8765/"
python serve.py 8765
