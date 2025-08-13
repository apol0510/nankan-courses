# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a **100% static website** built with Hugo, dedicated to explaining and analyzing racecourses in the Nankan (Southern Kanto) horse racing circuit in Japan. The site covers four major tracks: Oi, Funabashi, Kawasaki, and Urawa racing venues.

**Key Technical Characteristics:**
- **No JavaScript**: All interactive features are implemented using pure HTML and CSS
- **Static Site Generator**: Built with Hugo for content management and templating
- **Fully Static**: Can be served from any static hosting service without server-side processing
- **JavaScript-Free**: All animations, responsive menus, and visual effects use CSS-only techniques
- **Mobile-First Design**: Primary focus on mobile user experience and performance optimization

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
- **Mobile-First Responsive Design**: Primary optimization for mobile devices with progressive enhancement for desktop
- **CSS-Only Implementation**: All interactive elements (navigation, animations) use pure CSS without JavaScript
- **Performance-Optimized for Mobile**: Lightweight assets, optimized images, minimal CSS animations on mobile devices
- **Accessibility Optimized**: Focus states, semantic HTML, proper ARIA labels, screen reader friendly
- **SEO Optimized**: Structured data, meta tags, sitemap generation, mobile-friendly indexing
- **Cross-Device Compatibility**: Responsive layouts using CSS Grid and Flexbox
- **Battery-Conscious Design**: Reduced animations on mobile to preserve battery life
- **Print-Friendly**: Optimized CSS for print media

## Development

**Hugo Static Site Generator:** Built using Hugo with custom theme development.

**Mobile-First Development Philosophy:** This website prioritizes mobile user experience:
- **Primary Target**: Mobile devices (smartphones, tablets)
- **Progressive Enhancement**: Desktop features are added on top of mobile base
- **Performance Priority**: Mobile battery life and data usage optimization
- **Touch-First Interaction**: Navigation and UI designed for touch interfaces

**No JavaScript Dependencies:** This website intentionally avoids JavaScript to ensure:
- Maximum compatibility across all browsers and devices
- Optimal performance and loading speed on mobile networks
- Enhanced accessibility for screen readers and assistive technologies
- Reduced battery consumption on mobile devices
- Simplified maintenance and debugging

**Testing:** 
- **Primary Testing**: Mobile devices and responsive design testing
- **Development Server**: Run `hugo server` to test changes locally
- **Mobile Testing Priority**: Always test on mobile devices first, then desktop
- **Performance Testing**: Monitor loading speed and battery usage on mobile

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