@echo off
title تطبيق الحضانه - نسخة الويب
cd /d "%~dp0"
echo جاري تشغيل التطبيق في المتصفح...
python app\main.py --web
if %ERRORLEVEL% NEQ 0 (
    echo.
    echo حدث خطأ أثناء تشغيل التطبيق.
    pause
)
