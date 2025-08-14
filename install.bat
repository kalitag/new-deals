@echo off
echo Installing Enhanced Telegram Product Bot Dependencies...
echo.

REM Check if Python is installed
python --version >nul 2>&1
if errorlevel 1 (
    echo ERROR: Python is not installed or not in PATH
    echo Please install Python 3.8+ from https://python.org
    pause
    exit /b 1
)

echo Python found. Installing required packages...
echo.

REM Upgrade pip first
python -m pip install --upgrade pip

REM Install required packages
echo Installing python-telegram-bot...
python -m pip install --force-reinstall python-telegram-bot==20.7

echo Installing requests...
python -m pip install --force-reinstall requests

echo Installing beautifulsoup4...
python -m pip install --force-reinstall beautifulsoup4

echo Installing lxml parser...
python -m pip install --force-reinstall lxml

echo Installing html5lib parser...
python -m pip install --force-reinstall html5lib

REM Added OCR and image processing packages
echo Installing Pillow for image processing...
python -m pip install --force-reinstall Pillow

echo Installing pytesseract for OCR...
python -m pip install --force-reinstall pytesseract

echo.
echo ================================
echo Installing Tesseract OCR Engine...
echo ================================
echo.

REM Added Tesseract OCR installation
echo Downloading Tesseract OCR...
if not exist "tesseract-installer.exe" (
    echo Please download Tesseract OCR from:
    echo https://github.com/UB-Mannheim/tesseract/wiki
    echo.
    echo After installation, add Tesseract to your PATH or
    echo install it to: C:\Program Files\Tesseract-OCR\
    echo.
)

echo.
echo ================================
echo Installation completed successfully!
echo ================================
echo.
echo IMPORTANT: Make sure Tesseract OCR is installed for image text extraction
echo Download from: https://github.com/UB-Mannheim/tesseract/wiki
echo.
echo You can now run the bot using: run_bot.bat
echo.
pause
