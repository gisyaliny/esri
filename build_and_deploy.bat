@echo off
setlocal ENABLEEXTENSIONS

REM Change to the directory of this script (repo root)
cd /d "%~dp0"

echo.
echo === ESRI Web GIS Hub: Build and Deploy ===
echo.

REM Check for required commands
where jb >nul 2>nul
if errorlevel 1 (
  echo [ERROR] 'jb' (Jupyter Book) not found in PATH.
  echo         Install with:  pip install -r requirements.txt  (or)  pip install jupyter-book
  exit /b 1
)

where ghp-import >nul 2>nul
if errorlevel 1 (
  echo [ERROR] 'ghp-import' not found in PATH.
  echo         Install with:  pip install ghp-import
  exit /b 1
)

echo [1/2] Building Jupyter Book...
jb build .
if errorlevel 1 goto :error

echo [2/2] Deploying to GitHub Pages (gh-pages)...
ghp-import -n -p -f _build/html
if errorlevel 1 goto :error

echo.
echo [OK] Build and deploy completed successfully.
exit /b 0

:error
echo.
echo [FAILED] Build or deploy step failed with exit code %errorlevel%.
exit /b %errorlevel%


