#!/bin/bash

# Zexion Website Development Setup Script
# This script helps set up the development environment

echo "🚀 Setting up Zexion Website Development Environment"
echo "=================================================="

# Check if Ruby is installed
if ! command -v ruby &> /dev/null; then
    echo "❌ Ruby is not installed!"
    echo "Please install Ruby 2.7+ from:"
    echo "  - Windows: https://rubyinstaller.org/"
    echo "  - macOS: brew install ruby"
    echo "  - Linux: sudo apt install ruby-full"
    exit 1
fi

# Check Ruby version
RUBY_VERSION=$(ruby -v | cut -d' ' -f2 | cut -d'p' -f1)
echo "✅ Ruby version: $RUBY_VERSION"

# Check if Bundler is installed
if ! command -v bundle &> /dev/null; then
    echo "📦 Installing Bundler..."
    gem install bundler
else
    echo "✅ Bundler is already installed"
fi

# Install dependencies
echo "📦 Installing project dependencies..."
bundle install

# Check if installation was successful
if [ $? -eq 0 ]; then
    echo ""
    echo "🎉 Setup complete!"
    echo ""
    echo "Next steps:"
    echo "1. Start the development server:"
    echo "   bundle exec jekyll serve"
    echo ""
    echo "2. Open your browser to:"
    echo "   http://localhost:4000/"
    echo ""
    echo "3. Start editing files:"
    echo "   - index.md (homepage)"
    echo "   - about.md (about page)"
    echo "   - assets/style.css (styling)"
    echo ""
    echo "📚 Read DEVELOPMENT_GUIDE.md for detailed instructions"
else
    echo "❌ Setup failed. Please check the error messages above."
    exit 1
fi

