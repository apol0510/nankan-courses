# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a **100% static website** built with Hugo, dedicated to explaining and analyzing racecourses in the Nankan (Southern Kanto) horse racing circuit in Japan. The site covers four major tracks: Oi, Funabashi, Kawasaki, and Urawa racing venues.

**Key Technical Characteristics:**
- **No JavaScript**: All interactive features are implemented using pure HTML and CSS
- **Static Site Generator**: Built with Hugo for content management and templating
- **Fully Static**: Can be served from any static hosting service without server-side processing
- **JavaScript-Free**: All animations, responsive menus, and visual effects use CSS-only techniques

## Architecture

**Hugo-based Static Website Structure:**
- `content/` - Markdown content files for each racing venue
- `themes/nankan/` - Custom Hugo theme with layouts and styling
- `static/` - Static assets including course images and documentation files
- `hugo.yaml` - Site configuration and menu structure

**Content Organization:**
- Hero section with navigation
- Four main course sections (Oi, Funabashi, Kawasaki, Urawa)
- Each course section contains:
  - Course specifications (direction, gate capacity, distances, straight lengths)
  - Distance-specific race analysis and strategy explanations
  - Course-specific color theming

**Technical Features:**
- **CSS-Only Responsive Design**: Mobile-first responsive layouts using CSS Grid and Flexbox
- **No JavaScript**: All interactive elements (navigation, animations) use pure CSS
- **Accessibility Optimized**: Focus states, semantic HTML, proper ARIA labels
- **SEO Optimized**: Structured data, meta tags, sitemap generation
- **Performance Focused**: Lightweight, fast-loading static assets only
- **Print-Friendly**: Optimized CSS for print media

## Development

**Hugo Static Site Generator:** Built using Hugo with custom theme development.

**No JavaScript Dependencies:** This website intentionally avoids JavaScript to ensure:
- Maximum compatibility across all browsers and devices
- Optimal performance and loading speed
- Enhanced accessibility for screen readers and assistive technologies
- Simplified maintenance and debugging

**Testing:** Run `hugo server` to test changes locally.

**Content Updates:** 
- Course data and race analysis are written in Markdown files in the `content/` directory
- Images are stored in the `static/images/` directory
- Hugo automatically generates HTML from Markdown content using templates
- RTF files in `static/` contain additional course documentation in Japanese

**Build Process:**
- Run `hugo build` to generate the static site in the `public/` directory
- Deploy the `public/` directory to any static hosting service
- No server-side processing or JavaScript runtime required

## Content Domain

The website focuses on Japanese horse racing course analysis, specifically:
- Course layouts and specifications
- Race distance strategies 
- Track surface characteristics
- Jockey positioning advantages
- Pace analysis for different distances

All content is in Japanese and targets horse racing enthusiasts and handicappers interested in Nankan regional racing.