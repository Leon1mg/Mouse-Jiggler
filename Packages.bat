@echo off
echo ==========================================
echo   Setting up the environment for Python
echo ==========================================

:: Überprüfen, ob Python installiert ist
python --version >nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
    echo Python is not installed. Please install Python and ensure it is added to PATH.
    pause
    exit /b
)

:: Sicherstellen, dass pip auf dem neuesten Stand ist
echo Updating pip...
python -m pip install --upgrade pip

:: Notwendige Bibliotheken installieren/aktualisieren
echo Installing required libraries...
pip install --upgrade pyautogui

echo ==========================================
echo   All requirements are installed!
echo   You can now run your Python script.
echo ==========================================
pause
