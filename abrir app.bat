@echo off
rem Inicia el servidor local y abre la app en el navegador.
cd /d "%~dp0"
start "" /min cmd /c "python -m http.server 8000"
timeout /t 1 /nobreak >nul
start "" "http://localhost:8000/index.html"
