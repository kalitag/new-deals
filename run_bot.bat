@echo off
title Telegram Product Bot - Easy_uknowbot (FULLY AUTOMATED)
echo.
echo ========================================
echo  FULLY AUTOMATED Telegram Product Bot
echo ========================================
echo.
echo Bot Username: @Easy_uknowbot
echo Mode: FULLY AUTOMATED - No manual input needed!
echo Status: Starting...
echo.

REM Check if Python is installed
python --version >nul 2>&1
if errorlevel 1 (
    echo ERROR: Python is not installed or not in PATH
    echo Please run install.bat first
    pause
    exit /b 1
)

REM Check if bot.py exists
if not exist "bot.py" (
    echo ERROR: bot.py not found in current directory
    echo Please make sure bot.py is in the same folder as this batch file
    pause
    exit /b 1
)

echo Starting AUTOMATED bot...
echo.
echo ✅ Bot will automatically detect ALL product links
echo ✅ No commands or tagging required
echo ✅ Works in groups, channels, private chats
echo ✅ Processes Amazon, Flipkart, Meesho, Myntra, Ajio, Snapdeal
echo.
echo Press Ctrl+C to stop the bot
echo.

REM Run the bot with error handling and auto-restart
:start
python bot.py
if errorlevel 1 (
    echo.
    echo Bot stopped with error. Auto-restarting in 5 seconds...
    timeout /t 5 /nobreak >nul
    goto start
)

echo.
echo Bot stopped normally.
pause
