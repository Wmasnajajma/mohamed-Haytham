@echo off
chcp 65001 > nul
set "PYTHONIOENCODING=utf-8"
echo ===================================================
echo     بناء تطبيق الأندرويد (Build Android APK)
echo        حضانة عيد الأم - تطوير شركة AURA
echo ===================================================
echo.
set "PATH=D:\flutter_windows_3.47.0-stable\flutter\bin;C:\Users\tech\flutter\bin;%PATH%"
echo جاري بدء عملية بناء وتجهيز تطبيق الأندرويد APK...
echo يرجى الانتظار حتى اكتمال التجميع...
echo.
flet build apk app --project "nursery_app" --product "حضانة عيد الأم" --org "com.aura.nursery"
echo.
if %errorlevel% equ 0 (
    echo ===================================================
    echo [✓] تم الانتهاء بنجاح! ستجد ملف الـ APK داخل: build\apk
    echo ===================================================
) else (
    echo ===================================================
    echo [!] لم يتم العثور على Android SDK محلياً.
    echo يمكنك تحميل الـ APK المجمع جاهزاً عبر GitHub Actions!
    echo ===================================================
)
pause
