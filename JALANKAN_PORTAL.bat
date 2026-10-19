@echo off
title Classroom Portal Launcher
cd /d "%~dp0"

echo ================================================================
echo   🎓 X.Klover Reminder - Classroom Management Portal
echo ================================================================
echo.
echo Sedang menyiapkan server portal kelas lokal...

REM Cek apakah dist/index.html sudah ada
if not exist "dist\index.html" (
    echo Menyiapkan file build portal...
    call npm run build
)

REM Buka browser otomatis
echo Membuka browser ke http://localhost:5173 ...
start http://localhost:5173

REM Jalankan server lokal ringan menggunakan Python atau Node/npm
python -c "import http.server" >nul 2>&1
if %ERRORLEVEL% EQU 0 (
    echo Menggunakan server Python bawaan...
    python -m http.server 5173 --directory dist
) else (
    echo Menggunakan server Vite preview...
    call npx vite preview --port 5173 --host
)

pause
