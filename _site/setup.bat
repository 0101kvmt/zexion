@echo off
REM Zexion Website Development Setup Script for Windows
REM This script helps set up the development environment

echo 🚀 Setting up Zexion Website Development Environment
echo ==================================================

REM Check if Ruby is installed
ruby --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Ruby is not installed!
    echo Please install Ruby 2.7+ from: https://rubyinstaller.org/
    pause
    exit /b 1
)

REM Display Ruby version
echo ✅ Ruby version:
ruby --version

REM Check if Bundler is installed
bundle --version >nul 2>&1
if %errorlevel% neq 0 (
    echo 📦 Installing Bundler...
    gem install bundler
) else (
    echo ✅ Bundler is already installed
)

REM Install dependencies
echo 📦 Installing project dependencies...
bundle install

REM Check if installation was successful
if %errorlevel% equ 0 (
    echo.
    echo 🎉 Setup complete!
    echo.
    echo Next steps:
    echo 1. Start the development server:
    echo    bundle exec jekyll serve
    echo.
    echo 2. Open your browser to:
    echo    http://localhost:4000/zexion/
    echo.
    echo 3. Start editing files:
    echo    - index.md (homepage)
    echo    - about.md (about page)
    echo    - assets/style.css (styling)
    echo.
    echo 📚 Read DEVELOPMENT_GUIDE.md for detailed instructions
) else (
    echo ❌ Setup failed. Please check the error messages above.
    pause
    exit /b 1
)

pause

