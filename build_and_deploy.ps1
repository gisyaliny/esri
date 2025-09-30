# PowerShell script to build and deploy Jupyter Book to GitHub Pages

# Stop on any error
$ErrorActionPreference = "Stop"

Write-Host "Starting Jupyter Book build and deployment process..." -ForegroundColor Green

# Remove existing _build folder if it exists
if (Test-Path "_build") {
    Write-Host "Removing existing _build folder..." -ForegroundColor Yellow
    Remove-Item -Path "_build" -Recurse -Force
}

# Build the Jupyter Book
Write-Host "Building Jupyter Book..." -ForegroundColor Blue
jupyter-book build .

# Check if build was successful
if (-not (Test-Path "_build/html")) {
    Write-Host "Build failed! _build/html directory not found." -ForegroundColor Red
    exit 1
}

# Deploy to GitHub Pages using ghp-import
Write-Host "Deploying to GitHub Pages..." -ForegroundColor Blue
ghp-import -n -p -f _build/html

Write-Host "Build and deployment completed successfully!" -ForegroundColor Green
