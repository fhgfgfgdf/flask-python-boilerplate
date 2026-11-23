@echo off
chcp 65001 >nul
setlocal

echo [1/3] Checking Python ...
python --version >nul 2>&1
if errorlevel 1 (
  echo Python not found. Please install Python 3.9+ and add it to PATH.
  pause
  exit /b 1
)

echo [2/3] Creating and activating virtual environment ...
if not exist .venv (
  python -m venv .venv
)
call .venv\Scripts\activate.bat

echo [3/3] Installing dependencies and starting server ...
python -m pip install --upgrade pip
pip install -r requirements.txt
pip install waitress

waitress-serve --host=0.0.0.0 --port=3000 main:app
