# Zexion Website - Complete Development & Editing Guide

This guide covers everything you need to know to work with the Zexion website project, from basic content editing to full local development setup.

## 📋 Table of Contents

1. [Quick Start - Content Editing Only](#quick-start---content-editing-only)
2. [Full Development Setup](#full-development-setup)
3. [Project Structure](#project-structure)
4. [Content Editing Guide](#content-editing-guide)
5. [Development Workflow](#development-workflow)
6. [Troubleshooting](#troubleshooting)

---

## 🚀 Quick Start - Content Editing Only

If you just want to edit content without setting up a local development environment:

### Prerequisites
- A GitHub account
- Access to the repository

### Steps
1. Go to your GitHub repository: `https://github.com/yourusername/zexion`
2. Navigate to the file you want to edit (`index.md` or `about.md`)
3. Click the pencil icon (✏️) to edit
4. Make your changes
5. Commit with a descriptive message
6. Wait 1-2 minutes for GitHub Pages to rebuild
7. View your changes at: `https://0101kvmt.github.io/zexion/`

**See the existing [README.md](README.md) for detailed content editing instructions.**

---

## 🛠️ Full Development Setup

For developers who want to work locally, test changes, and contribute to the project.

### Prerequisites

#### Required Software
1. **Ruby** (version 2.7 or higher)
   - **Windows**: Download from [rubyinstaller.org](https://rubyinstaller.org/)
   - **macOS**: Use Homebrew: `brew install ruby`
   - **Linux**: Use your package manager: `sudo apt install ruby-full` (Ubuntu/Debian)

2. **Git**
   - **Windows**: Download from [git-scm.com](https://git-scm.com/)
   - **macOS**: `brew install git`
   - **Linux**: `sudo apt install git`

3. **Bundler** (Ruby gem manager)
   ```bash
   gem install bundler
   ```

### Installation Steps

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/zexion.git
   cd zexion
   ```

2. **Install dependencies**
   ```bash
   bundle install
   ```

3. **Start the local development server**
   ```bash
   bundle exec jekyll serve
   ```

4. **View your site**
   - Open your browser to: `http://localhost:4000/zexion/`
   - The site will automatically reload when you make changes

### Development Commands

```bash
# Start development server with live reload
bundle exec jekyll serve

# Build the site without serving
bundle exec jekyll build

# Build and serve with drafts
bundle exec jekyll serve --drafts

# Clean and rebuild
bundle exec jekyll clean
bundle exec jekyll build
```

---

## 📁 Project Structure

```
zexion/
├── _config.yml              # Jekyll configuration (site settings)
├── _layouts/
│   └── default.html         # Main HTML template
├── _site/                   # Generated site (don't edit directly)
├── assets/                  # Static assets
│   ├── style.css           # Main stylesheet
│   ├── main.js             # JavaScript functionality
│   ├── *.png, *.jpg        # Images
│   ├── *.svg               # Vector graphics
│   └── *.otf, *.ttf        # Fonts
├── index.md                 # Homepage content
├── about.md                 # About page content
├── Gemfile                  # Ruby dependencies
├── Gemfile.lock            # Locked dependency versions
└── README.md               # Content editing guide
```

### Key Files Explained

- **`_config.yml`**: Site-wide settings (title, URL, theme, etc.)
- **`_layouts/default.html`**: HTML template that wraps all pages
- **`assets/style.css`**: All website styling and responsive design
- **`assets/main.js`**: JavaScript for lightbox functionality
- **`index.md`**: Homepage content (company intro, social links, announcements)
- **`about.md`**: Game details page (description, features, screenshots)

---

## ✏️ Content Editing Guide

### Homepage (`index.md`)

**Editable sections:**
- Welcome message (lines 19-21)
- Social media links (lines 6-12)
- Game announcements (lines 36-38)

**Example edit:**
```markdown
<div class="welcome-text">
  Your new welcome message here...
</div>
```

### About Page (`about.md`)

**Editable sections:**
- Game description paragraphs (lines 19-25)
- Game features list (lines 30-37)
- YouTube video embed (line 11)

**Example edit:**
```markdown
<div class="game-description">
  <p>Your updated game description...</p>
</div>
```

### Adding New Images

1. **Upload to `assets/` folder**
2. **Reference in content:**
   ```markdown
   <img src="{{ '/assets/your-image.png' | relative_url }}" alt="Description" />
   ```

### Updating Links

**Social Media (in `index.md`):**
```html
<a href="https://your-new-url.com" class="social-icon platform">
  <img src="{{ '/assets/icon.svg' | relative_url }}" alt="Platform" />
</a>
```

**Steam Link (in `_layouts/default.html`):**
```html
<a href="https://store.steampowered.com/app/YOUR_APP_ID/" target="_blank">
```

---

## 🔧 Development Workflow

### Making Changes

1. **Start development server**
   ```bash
   bundle exec jekyll serve
   ```

2. **Edit files** in your preferred editor
   - Content: `index.md`, `about.md`
   - Styling: `assets/style.css`
   - Layout: `_layouts/default.html`
   - JavaScript: `assets/main.js`

3. **Preview changes** at `http://localhost:4000/zexion/`

4. **Test thoroughly**
   - Check all pages
   - Test responsive design
   - Verify all links work
   - Test image lightbox functionality

5. **Commit and push**
   ```bash
   git add .
   git commit -m "Description of changes"
   git push origin main
   ```

### Styling Guidelines

The site uses a custom CSS framework with these key classes:

- **Layout**: `.home-page`, `.about-page`, `.content-section`
- **Components**: `.game-card`, `.screenshot`, `.social-icon`
- **Typography**: Uses custom 'Xolonium' font family
- **Responsive**: Mobile-first design with media queries

### JavaScript Features

- **Lightbox**: Click screenshots to view larger versions
- **Responsive**: Mobile-friendly interactions
- **Accessibility**: Keyboard navigation support

---

## 🐛 Troubleshooting

### Common Issues

#### "Command not found: bundle"
```bash
# Install bundler
gem install bundler

# Then try again
bundle install
```

#### "Could not locate Gemfile"
```bash
# Make sure you're in the project directory
cd zexion
ls -la  # Should show Gemfile
```

#### "Port 4000 already in use"
```bash
# Use a different port
bundle exec jekyll serve --port 4001
```

#### Images not loading
- Check file paths are correct
- Ensure images are in `assets/` folder
- Use `{{ '/assets/filename.png' | relative_url }}` format
- Check file extensions match exactly

#### Changes not appearing
- Restart the Jekyll server: `Ctrl+C` then `bundle exec jekyll serve`
- Clear browser cache: `Ctrl+F5`
- Check for syntax errors in your files

#### Site looks broken
- Don't edit the `---` front matter sections
- Don't remove HTML tags
- Check for unclosed HTML elements
- Validate your Markdown syntax

### Getting Help

1. **Check Jekyll documentation**: [jekyllrb.com/docs](https://jekyllrb.com/docs/)
2. **GitHub Pages docs**: [docs.github.com/pages](https://docs.github.com/en/pages)
3. **Ruby/Jekyll community**: [talk.jekyllrb.com](https://talk.jekyllrb.com/)

---

## 📚 Additional Resources

### Jekyll Learning
- [Jekyll Tutorial](https://jekyllrb.com/docs/step-by-step/01-setup/)
- [Liquid Templating](https://shopify.github.io/liquid/)
- [Markdown Guide](https://www.markdownguide.org/)

### Web Development
- [CSS Grid Guide](https://css-tricks.com/snippets/css/complete-guide-grid/)
- [Responsive Design](https://web.dev/responsive-web-design-basics/)
- [Accessibility Guidelines](https://www.w3.org/WAI/WCAG21/quickref/)

### Tools
- **Image Optimization**: [TinyPNG](https://tinypng.com/)
- **Code Editor**: [VS Code](https://code.visualstudio.com/) with Jekyll extensions
- **Git GUI**: [GitHub Desktop](https://desktop.github.com/)

---

## 🎯 Project Goals

This website serves as:
- **Company showcase** for Gallant Leaf LLC
- **Game marketing** for Zexion
- **Community hub** with social media integration
- **Steam integration** for wishlist and sales

### Future Enhancements
- Blog/news section
- Multiple game support
- Newsletter signup
- Contact form
- Multi-language support

---

**Last Updated**: January 2025  
**Jekyll Version**: 4.x  
**Ruby Version**: 2.7+  
**Browser Support**: Modern browsers (Chrome, Firefox, Safari, Edge)

