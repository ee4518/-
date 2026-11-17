@echo off
rem ===== Photobooth launcher (prints without the print dialog) =====
rem 1) Close ALL open Chrome windows first, then run this file.
rem 2) Change the URL below to your real app address.
rem    Example: https://example.com/  or  http://localhost:8000
set URL=https://CHANGE-ME-TO-YOUR-APP-ADDRESS/

if exist "C:\Program Files\Google\Chrome\Application\chrome.exe" (
  start "" "C:\Program Files\Google\Chrome\Application\chrome.exe" --kiosk-printing "%URL%"
) else (
  start "" "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" --kiosk-printing "%URL%"
)
