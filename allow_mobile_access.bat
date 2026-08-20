@echo off
chcp 65001 >nul
echo ==============================================================
echo    تفعيل السماح بفتح التطبيق من الموبايل في جدار الحماية
echo ==============================================================
echo.
netsh advfirewall firewall delete rule name="Nursery_App_8550" >nul 2>&1
netsh advfirewall firewall add rule name="Nursery_App_8550" dir=in action=allow protocol=TCP localport=8550
echo.
if %errorlevel% equ 0 (
    echo [✓] تم فتح المنفذ بنجاح! يمكنك الآن الدخول من الهاتف مباشرة عبر الرابط:
    echo     http://192.168.1.17:8550
    echo     أو
    echo     http://192.168.1.9:8550
) else (
    echo [!] يرجى تشغيل هذا الملف كمسؤول (Run as administrator) لفتح جدار الحماية.
)
echo.
pause
