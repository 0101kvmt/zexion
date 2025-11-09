# Gallant Leaf Website - Client Documentation

Welcome to your Galant Leaf website! This guide will help you edit content, upload images, and manage your site through GitHub.

## 🌐 Website Overview

- **Homepage**: Company introduction, social media links, and game announcements
- **About Page**: Detailed game information, trailer, screenshots, and features

## 📁 File Structure

```
zexion/
├── _config.yml          # Site configuration (DON'T EDIT)
├── _layouts/
│   └── default.html     # Main layout template (DON'T EDIT)
├── assets/              # Images, fonts, and CSS
│   ├── style.css        # Website styling (DON'T EDIT)
│   ├── GallantLeafLogo.svg
│   ├── boxart.png
│   ├── sc-1.png         # Game screenshots
│   ├── sc-2.png
│   ├── sc-3.png
│   ├── sc-4.png
│   └── titlevector.svg
├── index.md             # Homepage content (EDIT HERE)
├── about.md             # About page content (EDIT HERE)
└── README.md            # This file
```

## ✏️ How to Edit Content

### **Step 1: Access Your Files**
1. Go to your GitHub repository: `https://github.com/yourusername/zexion`
2. Click on the file you want to edit (e.g., `index.md` or `about.md`)
3. Click the pencil icon (✏️) in the top-right corner

### **Step 2: Make Your Changes**
- Edit the text directly in the browser
- Use **Markdown** formatting (see examples below)
- Don't change the `---` sections at the top of files

### **Step 3: Save Changes**
1. Scroll down to the bottom
2. Add a brief description of your changes
3. Click "Commit changes"

## 📝 Content Editing Guide

### **Homepage (`index.md`)**

**What you can edit:**
- Welcome message text
- Game announcement text
- Social media links (replace `#` with actual URLs)

**Example:**
```markdown
<div class="welcome-text">
  Welcome to the website of Gallant Leaf LLC! We're a humble, new indie game dev company just founded in 2024. We're dedicated to making cool, high quality games using ideas from all generations and platforms of gaming.
</div>
```

### **About Page (`about.md`)**

**What you can edit:**
- Game description paragraphs
- Game features list
- Video URL (YouTube embed)

**Example:**
```markdown
<div class="game-description">
  <p>Your game description here...</p>
</div>

<div class="game-features">
  <h3>Game Features:</h3>
  <ul>
    <li>Feature 1</li>
    <li>Feature 2</li>
  </ul>
</div>
```

## 🖼️ How to Upload Images

### **Step 1: Prepare Your Images**
- Use PNG, JPG, or SVG format
- Recommended sizes:
  - Screenshots: 800x600px or similar
  - Logo: 200-400px wide
  - Box art: 300-500px wide

### **Step 2: Upload to GitHub**
1. Go to the `assets/` folder in your repository
2. Click "Add file" → "Upload files"
3. Drag and drop your images
4. Click "Commit changes"

### **Step 3: Reference in Content**
Use this format in your markdown files:
```markdown
<img src="{{ '/assets/your-image.png' | relative_url }}" alt="Description" />
```

## 🔗 Updating Links

### **Social Media Links**
In `index.md`, update the social media icons:
```html
<a href="https://facebook.com/yourpage" class="social-icon facebook">f</a>
<a href="https://twitter.com/yourpage" class="social-icon twitter">t</a>
<a href="https://youtube.com/yourchannel" class="social-icon youtube">y</a>
<a href="https://twitch.tv/yourchannel" class="social-icon twitch">tw</a>
<a href="https://discord.gg/yourinvite" class="social-icon discord">d</a>
```

### **Steam Link**
The Steam link is already set to your game page. If you need to update it, look for:
```html
<a href="https://store.steampowered.com/app/3392510/Zexion/" target="_blank">
```

## 🎥 Updating the YouTube Video

To change the game trailer video in `about.md`:
1. Find the iframe section
2. Replace the video ID in the URL:
```html
<iframe src="https://www.youtube.com/embed/NEW_VIDEO_ID" ...></iframe>
```

## ⚠️ Important Notes

### **Don't Edit These Files:**
- `_config.yml` - Site configuration
- `_layouts/default.html` - Layout template
- `assets/style.css` - Website styling
- Any files in `_layouts/` folder

### **File Naming:**
- Use lowercase letters
- No spaces in filenames (use hyphens: `my-image.png`)
- Keep file extensions lowercase

### **Image Optimization:**
- Compress images before uploading (use tools like TinyPNG)
- Don't upload files larger than 5MB
- Use appropriate formats: PNG for screenshots, JPG for photos

## 🆘 Troubleshooting

### **Images Not Loading:**
- Check that the filename matches exactly (case-sensitive)
- Make sure the image is in the `assets/` folder
- Verify the path uses `{{ '/assets/filename.png' | relative_url }}`

### **Changes Not Appearing:**
- Wait 2-3 minutes for GitHub Pages to rebuild
- Clear your browser cache (Ctrl+F5)
- Check that you committed your changes

### **Site Looks Broken:**
- Don't edit the `---` sections at the top of files
- Don't remove or change HTML tags
- If you accidentally break something, you can revert changes in GitHub


### Manual Setup
```bash
# 1. Install Ruby (if not already installed)
# 2. Install Bundler
gem install bundler

# 3. Install dependencies
bundle install

# 4. Start development server
bundle exec jekyll serve
```

**Last Updated:** November 2025  
**Website Version:** 1.0 