# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a static website dedicated to explaining and analyzing racecourses in the Nankan (Southern Kanto) horse racing circuit in Japan. The site covers four major tracks: Oi, Funabashi, Kawasaki, and Urawa racing venues.

## Architecture

**Static Website Structure:**
- `index.html` - Single-page application containing comprehensive course analysis
- `styles.css` - Modern CSS with responsive design, accessibility features, and animations
- `public/` - Static assets including course images and RTF documentation files

**Content Organization:**
- Hero section with navigation
- Four main course sections (Oi, Funabashi, Kawasaki, Urawa)
- Each course section contains:
  - Course specifications (direction, gate capacity, distances, straight lengths)
  - Distance-specific race analysis and strategy explanations
  - Course-specific color theming

**Technical Features:**
- Responsive grid layouts using CSS Grid
- Smooth scrolling navigation
- Accessibility improvements (focus states, reduced motion support)
- SEO optimization with structured data
- Print-friendly styles

## Development

**No Build Process:** This is a static HTML/CSS website with no build tools, package managers, or dependencies.

**Testing:** Open `index.html` directly in a browser to test changes.

**Content Updates:** 
- Course data and race analysis are embedded directly in the HTML
- Images are referenced from the `public/` directory
- RTF files in `public/` contain additional course documentation in Japanese

## Content Domain

The website focuses on Japanese horse racing course analysis, specifically:
- Course layouts and specifications
- Race distance strategies 
- Track surface characteristics
- Jockey positioning advantages
- Pace analysis for different distances

All content is in Japanese and targets horse racing enthusiasts and handicappers interested in Nankan regional racing.