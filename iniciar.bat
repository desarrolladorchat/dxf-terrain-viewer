@echo off
cd /d "%~dp0"
start "Servidor DXF" /min cmd /c node server.js
timeout /t 1 /nobreak >nul
start "Visor DXF" http://127.0.0.1:4173
exit
