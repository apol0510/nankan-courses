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
- CTA sections link to: https://nankan-analytics.keiba.link/free-signup/
- No email collection forms (privacy-focused approach)

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
- **プロジェクトパス**: `/Users/apolon/Library/Mobile Documents/com~apple~CloudDocs/WorkSpace/nankan-course/nankan-hugo`

#### 開発ワークフロー（南関競馬サイト専用）
1. **作業開始時**: 既存サーバープロセスをすべて停止
2. **Hugo開発**: `cd /Users/apolon/Library/Mobile\ Documents/com~apple~CloudDocs/WorkSpace/nankan-course/nankan-hugo && hugo server --port 1314`
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

**テンプレートファイル位置**: `/Users/apolon/Library/Mobile Documents/com~apple~CloudDocs/WorkSpace/nankan-course/nankan-hugo/content/blog/2025-08-16-urawa-800m.md`

**テンプレートの特徴**:
- オレンジグラデーション背景のまとめセクション（#ff6366 → #fe9158）
- 番号付きの白背景ボックスで3つの重要ポイントを表示
- CTAセクション：サイト内リンク（https://nankan-analytics.keiba.link/free-signup/）への誘導ボタン
- 記事末尾の免責事項とデータソース記載

**記事作成時の手順**:
1. 浦和800m記事（2025-08-16-urawa-800m.md）をベースファイルとしてコピー
2. タイトル、日付、カテゴリ、タグを新しいコースに合わせて更新
3. コース固有のデータ（枠順分析、人気別データ等）に置き換え
4. まとめセクションの3つのポイントをコース特徴に合わせて調整
5. デザインスタイル（グラデーション、ボックス、CTAリンク）は維持する

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

---

## 🏇 **競馬予想データ変換システム (horse-prediction-converter.html)**

### 📋 概要
複数の予想記号データから、ポイント制で自動的に馬券候補を選別・整理するツール

### 📂 ファイル配置
- **メイン**: `/nankan-hugo/static/keiba-yosou-converter/horse-prediction-converter.html`
- **公開**: `/nankan-hugo/public/keiba-yosou-converter/horse-prediction-converter.html`
- **注意**: admin/版は削除済み（重複ファイル整理完了）

### 🔧 主要機能

#### **1. データ解析システム**
```javascript
// タブ・スペース混在データに対応
const match = line.match(/^(\d+)[\s\t]+(.*)$/);

// 最初の行が数字で始まる場合はレースタイトルなし
const firstLineIsHorse = /^\d+[\s\t]/.test(lines[0]);
const startIndex = firstLineIsHorse ? 0 : 1;
```

**対応データ形式:**
```
1    △▲▲▲    マダヤルカイ
2    ▲○▲▲    シーオブスターズ
3        キュレーション        (印なし = 0点 = 出力対象外)
4    ○◎○◎    クラムスコイ
```

#### **2. ポイント計算システム**
```javascript
// 印別ポイント設定
◎ = 5点
○ = 4点
▲ = 3点
△ = 2点
穴 = 2点（自動的に△に変換）

// 「穴」記号の自動変換
symbols = symbols.replace(/穴/g, '△');

// ポイント計算（データ追加時に直接計算）
const totalPoints = (counts['◎'] * 5) + (counts['○'] * 4) +
                    (counts['▲'] * 3) + (counts['△'] * 2);

// 0点の馬を除外
horses = horses.filter(h => h.totalPoints > 0);
```

**計算例:**
- 1番 マダヤルカイ: △▲▲▲ = 2+3+3+3 = **11点**
- 4番 クラムスコイ: ○◎○◎ = 4+5+4+5 = **18点** (本命◎)
- 7番 ナムラライラック: 穴 → △ = **2点** (自動変換)
- 3番 キュレーション: 印なし = **0点** (出力対象外)

#### **3. 自動分類システム**
```javascript
// ポイント順位で記号を割り当て
1位: ◎ (本命)
2位: ○ (対抗)
3-4位: ▲ (単穴)
5-6位: △ (連下)
7位以降: 抑 (抑え)
```

**出力フォーマット (統一):**
```
◎4クラムスコイ          (スペースなし)
○2シーオブスターズ
▲7ナリスナ
▲1マダヤルカイ
△6シャイニーライフ
△5フロムイエスタディ
```

#### **4. 買い目生成機能**
- **三連複買い目**: 軸馬 + 相手馬の組み合わせ
- **馬単買い目**: 1着軸馬 → 相手馬

### ⚠️ **重要な修正履歴**

#### **2025-10-03 修正完了事項**

1. **印なし馬対応 (修正完了)**
   - ❌ 問題: 印がない馬が0点として除外される仕様は正常
   - ✅ 解決: ポイント計算を`forEach`ループから直接計算に最適化

2. **1行目馬データ対応 (修正完了)**
   - ❌ 問題: 1行目が馬データの場合、レースタイトルとして誤認識
   - ✅ 解決: 正規表現で自動判定 `/^\d+[\s\t]/` → レースタイトルなし

3. **本命スペース削除 (修正完了)**
   - ❌ 問題: `◎8 パイナ` (本命のみスペースあり)
   - ✅ 解決: `◎8パイナ` (全印統一でスペースなし)

4. **「穴」記号対応 (修正完了)**
   - ❌ 問題: 「穴」記号が認識されない
   - ✅ 解決: `symbols.replace(/穴/g, '△')` で自動変換（2点扱い）

### 🔍 **技術的詳細**

#### **正規表現パターン**
```javascript
// タブ・スペース混在対応
/^(\d+)[\s\t]+(.*)$/

// 馬名・印の分離
const parts = rest.split(/[\s\t]+/).filter(p => p);
const name = parts[parts.length - 1];      // 最後の要素 = 馬名
let symbols = parts.slice(0, -1).join(''); // それ以外 = 印

// 「穴」を「△」に自動変換（重要）
symbols = symbols.replace(/穴/g, '△');
```

#### **レースタイトル自動判定**
```javascript
// 最初の行が数字で始まる = 馬データ
const firstLineIsHorse = /^\d+[\s\t]/.test(lines[0]);
const raceTitle = firstLineIsHorse ? '' : lines[0];
const startIndex = firstLineIsHorse ? 0 : 1;

// 出力時の条件分岐
let output = raceTitle ? raceTitle + '\n' : '';
```

### 📊 **出力例**

**入力:**
```
京都2R
1 ▲△△ ホールドミーワンス
2 ニュートラ
3 ◎◎◎◎◎ ジャスティンルマン
4 ○○▲▲○ ウィズクィーン
5 ファインマン
6 △ キーテーマ
7 穴 ナムラライラック
8 ▲▲○○▲ マイコンチェルト
```

**出力:**
```
京都2R
◎3ジャスティンルマン (25点)
○4ウィズクィーン (16点)
▲8マイコンチェルト (13点)
▲1ホールドミーワンス (8点)
△6キーテーマ (2点)
△7ナムラライラック (2点・穴→△自動変換)

三連複買い目
3－4－8・1・6
3－8－1・6
3－1－6
4－8－1・6
4－1－6

馬単買い目
3－4・8・1（6.7）
4－3・8・1（6.7）
```

### 🚨 **絶対に守るべきルール**

1. **2ファイル同時修正**: static/ public/ 両方を同一コードに保つ
2. **0点馬除外**: `horses.filter(h => h.totalPoints > 0)` を維持
3. **スペース統一**: 全印で馬番と馬名の間にスペースなし
4. **正規表現維持**: タブ・スペース混在対応を維持 `[\s\t]+`
5. **レースタイトル判定**: 数字開始チェックを維持
6. **「穴」記号変換**: `symbols.replace(/穴/g, '△')` を必ず実行

### 🎯 **今後の保守作業時の注意**

- ファイル修正時は必ず2箇所（static/ public/）を同時修正
- ポイント計算ロジックは変更しない（◎5 ○4 ▲3 △2 穴2）
- 出力フォーマットの一貫性を保つ
- 正規表現パターンは慎重に変更（データ形式に影響）
- 「穴」記号変換は必須処理（削除厳禁）

---

**📅 最終更新日**: 2025-10-03
**🔧 最終修正**: 「穴」→「△」自動変換機能追加
**✅ 動作状況**: 完全動作・2ファイル同期済み（static/public）
**🎯 対応記号**: ◎ ○ ▲ △ 穴（自動変換）