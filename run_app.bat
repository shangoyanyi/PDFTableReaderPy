@echo off
:: 設定 CMD 使用 UTF-8
chcp 65001 >nul
:: 設定顯示字型為 Consolas（避免出現 Invalid key name）
reg add "HKCU\Console" /v "FaceName" /t REG_SZ /d "Consolas" /f >nul 2>&1

:: 顯示歡迎訊息
echo ===============================
echo 啟動 Flask 應用程式
echo ===============================

start http://127.0.0.1:5000  :: 自動打開預設瀏覽器
python app.py

:: 防止 CMD 視窗閃退
echo ===============================
echo Flask 應用程式已啟動。按任意鍵結束...
pause
