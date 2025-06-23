# 🌐 Website Setup for Hands-On Adversarial AI

This repository includes a GitHub Pages website built with Jekyll. The site provides an easy-to-navigate interface for students and instructors to access course materials.

## 🚀 Live Site

The site is automatically deployed to: **https://jadidbourbaki.github.io/adversarial-ai**

## 🛠️ Local Development

### Prerequisites
- Ruby 3.1+
- Bundler gem
- Git

### Quick Start
```bash
# Clone the repository
git clone https://github.com/jadidbourbaki/adversarial-ai.git
cd adversarial-ai

# Run the development server
./serve.sh
```

The site will be available at `http://localhost:4000` with live reload enabled.

### Manual Setup
```bash
# Install dependencies
bundle install

# Serve the site
bundle exec jekyll serve --livereload
```

## 🚀 Deployment

The site automatically deploys to GitHub Pages when changes are pushed to the `main` branch.

### Automatic Deployment
- **Trigger**: Push to `main` branch
- **Build**: GitHub Actions with Jekyll
- **Deploy**: GitHub Pages
- **URL**: https://jadidbourbaki.github.io/adversarial-ai

### Manual Deployment
You can also trigger deployment manually:
1. Go to the [Actions tab](https://github.com/jadidbourbaki/adversarial-ai/actions)
2. Select "Build and Deploy to GitHub Pages"
3. Click "Run workflow"

## 🎨 Customization

### Styling
Edit `assets/css/style.scss` to customize the appearance:
- Colors and themes
- Layout and typography
- Course-specific styling
- Responsive design

### Content
- **Homepage**: Edit `index.md`
- **Course Pages**: Edit files in `_pages/`
- **Navigation**: Update `_config.yml`
- **Site Settings**: Modify `_config.yml`

### Adding New Pages
1. Create a new `.md` file in `_pages/`
2. Add front matter with layout and permalink
3. Update navigation in `_config.yml` if needed

Example:
```markdown
---
layout: page
title: "New Page"
permalink: /new-page/
---

# New Page Content
```

## 🔧 Configuration

Key settings in `_config.yml`:
- **Site title and description**
- **Base URL and repository info**
- **Navigation menu**
- **Jekyll plugins and theme**
- **Course-specific information**

## 🐛 Troubleshooting

### Common Issues

**Site not updating after changes:**
- Check GitHub Actions for build errors
- Verify changes were pushed to `main` branch
- Clear browser cache

**Local development issues:**
- Ensure Ruby 3.1+ is installed
- Run `bundle install` to update dependencies
- Check for port conflicts (default: 4000)

**Styling not applied:**
- Verify SCSS syntax in `assets/css/style.scss`
- Check browser developer tools for CSS errors
- Ensure Jekyll is processing the file correctly

### Getting Help
- **Build Issues**: Check [GitHub Actions logs](https://github.com/jadidbourbaki/adversarial-ai/actions)
- **Jekyll Problems**: Refer to [Jekyll documentation](https://jekyllrb.com/docs/)
- **GitHub Pages**: See [GitHub Pages documentation](https://docs.github.com/en/pages)

## 📊 Analytics and Monitoring

### GitHub Insights
- Traffic statistics available in repository insights
- Popular pages and referrer information
- Visitor trends and engagement metrics

### Performance Monitoring
- Automated lighthouse checks in CI/CD
- Page load speed optimization
- Mobile performance testing

## 🔄 Maintenance

### Regular Updates
- **Dependencies**: Update gems in Gemfile
- **Content**: Keep course materials current
- **Security**: Monitor for security advisories
- **Performance**: Optimize images and assets

### Content Management
- **Broken Links**: Regular link checking
- **Outdated Information**: Course content reviews
- **User Feedback**: Monitor issues and discussions

## 📄 License

The website code is included under the same MIT License as the course materials.

---

**The website makes adversarial AI education accessible and professional!** 🎓✨ 