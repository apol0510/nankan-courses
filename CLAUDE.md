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

### 開発環境とサーバー管理

**重要：ローカル開発時の注意事項**

#### 開発サーバーの管理
- **複数のサーバーを同時実行しない**: 作業開始前に必ず既存のサーバープロセスを確認・停止する
- **サーバー起動前のチェック**: `ps aux | grep -E "(hugo|server|http\.server)"` でプロセス確認
- **不要なサーバーの停止**: `pkill -f "python.*http.server"` または `pkill -f "hugo server"`

**注意事項:**
- 単一サーバー原則: 同時に複数のサーバーを起動しない
- ポート管理: プロジェクトごとに専用ポートを使用する
- プロジェクト分離: 他のプロジェクトと混在させない
- キャッシュ管理: ブラウザキャッシュは定期的にクリアする

**このプロジェクト専用設定**:
- **専用ポート**: 1314（他プロジェクトと競合しない）
- **起動コマンド**: `hugo server --port 1314`
- **プロジェクトパス**: `/Users/apolon/Desktop/WorkSpace/nankan-courese/nankan-hugo`

#### 開発ワークフロー（南関競馬サイト専用）
1. **作業開始時**: 既存サーバープロセスをすべて停止
2. **Hugo開発**: `cd /Users/apolon/Desktop/WorkSpace/nankan-courese/nankan-hugo && hugo server --port 1314`
3. **アクセスURL**: http://localhost:1314/
4. **作業終了時**: `Ctrl+C` でサーバーを確実に停止
5. **プロセス確認**: `ps aux | grep hugo` で残存プロセスがないか確認

#### よくある問題の回避
- **Python HTTPサーバーの放置禁止**: `python3 -m http.server` 使用後は必ず停止
- **複数Hugoサイトの同時起動禁止**: 異なるプロジェクトが混在表示される原因
- **ポート競合の回避**: 使用ポートを明確に管理する

**開発前チェックコマンド**:
```bash
# 実行中サーバーの確認
ps aux | grep -E "(hugo|server|http\.server)"

# 不要プロセスの一括停止
pkill -f "python.*http.server" && pkill -f "hugo server"

# ポート使用状況の確認
lsof -i :1313  # Hugo標準ポート
lsof -i :8000  # Python HTTPサーバー
```

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

### コース解説記事の作成ガイドライン

**記事テンプレート**: 新しいコース解説記事を作成する際は、必ず `2025-08-16-urawa-800m.md` をテンプレートとして使用すること。

**テンプレートファイル位置**: `/Users/apolon/Desktop/WorkSpace/nankan-course/nankan-hugo/content/blog/2025-08-16-urawa-800m.md`

**テンプレートの特徴**:
- オレンジグラデーション背景のまとめセクション（#ff6366 → #fe9158）
- 番号付きの白背景ボックスで3つの重要ポイントを表示
- メール登録フォーム付きの統一されたCTAセクション
- 記事末尾の免責事項とデータソース記載

**記事作成時の手順**:
1. 浦和800m記事（2025-08-16-urawa-800m.md）をベースファイルとしてコピー
2. タイトル、日付、カテゴリ、タグを新しいコースに合わせて更新
3. コース固有のデータ（枠順分析、人気別データ等）に置き換え
4. まとめセクションの3つのポイントをコース特徴に合わせて調整
5. デザインスタイル（グラデーション、ボックス、フォーム）は維持する

**重要**: 全ての新規コース解説記事は、この浦和800mテンプレートと同一のデザインパターンを使用し、サイト全体のビジュアル統一性を保つこと。

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