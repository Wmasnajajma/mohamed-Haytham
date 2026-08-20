@echo off
title تطبيق الحضانه
cd /d "%~dp0"
python app\main.py
if %ERRORLEVEL% NEQ 0 (
    echo.
    echo حدث خطأ أثناء تشغيل التطبيق.
    pause
)
