# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a **100% static website** built with **Astro 5.14.1**, dedicated to explaining and analyzing racecourses in the Nankan (Southern Kanto) horse racing circuit in Japan. The site covers four major tracks: Oi, Funabashi, Kawasaki, and Urawa racing venues.

**Migration Status:** ✅ Successfully migrated from Hugo to Astro (2025-10-06)

**Key Technical Characteristics:**
- **Static Site Generator**: Built with Astro 5.14.1 for content management and templating
- **Fully Static**: Can be served from any static hosting service without server-side processing
- **JavaScript Allowed**: Astro supports JavaScript for interactive features and enhanced user experience
- **Mobile-First Design**: Primary focus on mobile user experience and performance optimization
- **Modern Web Stack**: Component-based architecture with TypeScript support
- **Content Collections**: 45+ blog posts organized using Astro's Content Collections API
- **Dynamic Routing**: Blog posts and course pages use Astro's file-based routing

## Architecture

**Astro-based Static Website Structure:**
- `src/content/` - Markdown content files for each racing venue and blog posts
- `src/layouts/` - Astro layout components
- `src/components/` - Reusable Astro components
- `public/` - Static assets including course images and documentation files
- `astro.config.mjs` - Site configuration
- **JavaScript Enabled**: Interactive features can now be implemented using JavaScript/TypeScript

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
- **Interactive Features**: JavaScript/TypeScript enabled for enhanced user experience
- **Performance-Optimized for Mobile**: Lightweight assets, optimized images, efficient JavaScript
- **Accessibility Optimized**: Focus states, semantic HTML, proper ARIA labels, screen reader friendly
- **SEO Optimized**: Structured data, meta tags, sitemap generation, mobile-friendly indexing
- **Cross-Device Compatibility**: Responsive layouts using CSS Grid and Flexbox
- **Component-Based Architecture**: Reusable Astro components for maintainability
- **Print-Friendly**: Optimized CSS for print media

## Development

**Astro Static Site Generator:** Built using Astro with component-based architecture.

**Mobile-First Development Philosophy:** This website prioritizes mobile user experience:
- **Primary Target**: Mobile devices (smartphones, tablets)
- **Progressive Enhancement**: Desktop features are added on top of mobile base
- **Performance Priority**: Mobile battery life and data usage optimization
- **Touch-First Interaction**: Navigation and UI designed for touch interfaces

**JavaScript Usage Policy:** JavaScript is now allowed and encouraged for:
- Enhanced interactivity and user experience
- Dynamic content loading
- Client-side data processing
- Modern web application features
- TypeScript for type safety and better developer experience

### 開発環境とサーバー管理

**重要：ローカル開発時の注意事項**

#### 開発サーバーの管理
- **複数のサーバーを同時実行しない**: 作業開始前に必ず既存のサーバープロセスを確認・停止する
- **サーバー起動前のチェック**: `ps aux | grep -E "(astro|server|http\.server)"` でプロセス確認
- **不要なサーバーの停止**: `pkill -f "python.*http.server"` または `pkill -f "astro dev"`

**注意事項:**
- 単一サーバー原則: 同時に複数のサーバーを起動しない
- ポート管理: プロジェクトごとに専用ポートを使用する
- プロジェクト分離: 他のプロジェクトと混在させない
- キャッシュ管理: ブラウザキャッシュは定期的にクリアする

**このプロジェクト専用設定**:
- **専用ポート**: 4321（Astro標準ポート）
- **起動コマンド**: `npm run dev`
- **プロジェクトパス**: `/Users/apolon/Library/Mobile Documents/com~apple~CloudDocs/WorkSpace/nankan-course`

#### 開発ワークフロー（南関競馬サイト専用）
1. **作業開始時**: 既存サーバープロセスをすべて停止
2. **Astro開発**: `cd /Users/apolon/Library/Mobile\ Documents/com~apple~CloudDocs/WorkSpace/nankan-course && npm run dev`
3. **アクセスURL**: http://localhost:4321/
4. **作業終了時**: `Ctrl+C` でサーバーを確実に停止
5. **プロセス確認**: `ps aux | grep astro` で残存プロセスがないか確認

#### よくある問題の回避
- **Python HTTPサーバーの放置禁止**: `python3 -m http.server` 使用後は必ず停止
- **複数Astroサイトの同時起動禁止**: 異なるプロジェクトが混在表示される原因
- **ポート競合の回避**: 使用ポートを明確に管理する

**開発前チェックコマンド**:
```bash
# 実行中サーバーの確認
ps aux | grep -E "(astro|server|http\.server)"

# 不要プロセスの一括停止
pkill -f "python.*http.server" && pkill -f "astro dev"

# ポート使用状況の確認
lsof -i :4321  # Astro標準ポート
lsof -i :8000  # Python HTTPサーバー
```

**Testing:**
- **Primary Testing**: Mobile devices and responsive design testing
- **Development Server**: Run `npm run dev` to test changes locally
- **Mobile Testing Priority**: Always test on mobile devices first, then desktop
- **Performance Testing**: Monitor loading speed and battery usage on mobile

**Content Updates:**
- Course data and race analysis are written in Markdown files in the `src/content/` directory
- Images are stored in the `public/images/` directory
- Astro automatically generates HTML from Markdown content using components
- RTF files in `public/` contain additional course documentation in Japanese

### コース解説記事の作成ガイドライン

**記事テンプレート**: 新しいコース解説記事を作成する際は、必ず `2025-08-16-urawa-800m.md` をテンプレートとして使用すること。

**テンプレートファイル位置**: `/Users/apolon/Library/Mobile Documents/com~apple~CloudDocs/WorkSpace/nankan-course/src/content/blog/2025-08-16-urawa-800m.md`

**Astroのフロントマター形式**:
```yaml
---
title: "記事タイトル"
date: 2025-08-16
description: "記事の説明文"
category: "カテゴリ名"
tags: ["タグ1", "タグ2", "タグ3"]
---
```

**テンプレートの特徴**:
- オレンジグラデーション背景のまとめセクション（#ff6366 → #fe9158）
- 番号付きの白背景ボックスで3つの重要ポイントを表示
- CTAセクション：サイト内リンク（https://nankan-analytics.keiba.link/free-signup/）への誘導ボタン
- 記事末尾の免責事項とデータソース記載

**記事作成時の手順**:
1. 浦和800m記事（2025-08-16-urawa-800m.md）をベースファイルとしてコピー
2. フロントマターのタイトル、日付、カテゴリ、タグを更新
3. コース固有のデータ（枠順分析、人気別データ等）に置き換え
4. まとめセクションの3つのポイントをコース特徴に合わせて調整
5. デザインスタイル（グラデーション、ボックス、CTAリンク）は維持する

**重要**: 全ての新規コース解説記事は、この浦和800mテンプレートと同一のデザインパターンを使用し、サイト全体のビジュアル統一性を保つこと。

**Build Process:**
- Run `npm run build` to generate the static site in the `dist/` directory
- Deploy the `dist/` directory to any static hosting service
- No server-side processing required (static HTML/CSS/JS output)

## Content Domain

The website focuses on Japanese horse racing course analysis, specifically:
- Course layouts and specifications
- Race distance strategies 
- Track surface characteristics
- Jockey positioning advantages
- Pace analysis for different distances

All content is in Japanese and targets horse racing enthusiasts and handicappers interested in Nankan regional racing.

---

## 🏇 **競馬予想データ変換システム**

### 📋 概要
複数の予想記号データから、ポイント制で自動的に馬券候補を選別・整理する2つのツール

### 📂 ファイル配置
**トライアンフ (60ptスタート版):**
- **メイン**: `/public/keiba-yosou-converter/horse-prediction-converter.html`
- **ビルド後**: `/dist/keiba-yosou-converter/horse-prediction-converter.html`

**展開マスター (66ptスタート版):**
- **メイン**: `/public/keiba-yosou-converter/horse-prediction-converter-66pt.html`
- **ビルド後**: `/dist/keiba-yosou-converter/horse-prediction-converter-66pt.html`

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

**トライアンフ (60ptスタート版):**
```javascript
// 全馬60ptスタート
◎ = 5点
○ = 4点
▲ = 3点
△ = 2点
穴 = 2点（自動的に△に変換）

const addPoints = (counts['◎'] * 5) + (counts['○'] * 4) + (counts['▲'] * 3) + (counts['△'] * 2);
const totalPoints = 60 + addPoints;

// 印なし馬を除外
horses = horses.filter(h => h.addPoints > 0);
```

**展開マスター (66ptスタート版):**
```javascript
// 全馬66ptスタート
◎ = 20点
○ = 10点
▲ = 15点
△ = 5点

const addPoints = (counts['◎'] * 20) + (counts['○'] * 10) + (counts['▲'] * 15) + (counts['△'] * 5);
const totalPoints = 66 + addPoints;

// 66pt（印なし）の馬も全て表示
```

#### **3. 自動分類システム**

**トライアンフ (60ptスタート版):**
```
本命14イナズマダイモン(81pt)
対抗4リアライズタキオン(78pt)
単穴10ラストシャイニー(77pt)
単穴16ディアファニス(73pt)
連下13テンカムテキ(72pt)
連下6ゴットタレント(68pt)
抑え12センジュキヨマル(64pt)
```

**展開マスター (66ptスタート版):**
```
◎3ミコディパーチャ(146pt)
○6オルタスグロウ(116pt)
▲5ストロングボンド(106pt)
▲7エンペラーウェザー(106pt)
△4チカアイドル(96pt)
△1ムーンアンバック(81pt)
抑8ココロチャン(71pt)
不2イナビカリ(66pt)  ← 印なし馬
```

#### **4. 買い目生成機能**

**トライアンフ (60ptスタート版):**
- **三連複買い目**: ◎○軸で各4段（合計8段）
- **馬単買い目**: ◎○軸 → 相手馬

**展開マスター (66ptスタート版):**
- **三連複買い目**: ◎○軸で各3段（合計6段）※買い目点数削減
- **馬単買い目**: ◎○軸 → 相手馬

### ⚠️ **重要な修正履歴**

#### **2025-10-04 最新アップデート**

**2つのツール体制:**
1. **トライアンフ** (`horse-prediction-converter.html`)
   - 60ptスタート、◎5/○4/▲3/△2
   - 印なし馬を除外
   - 日本語表記（本命/対抗/単穴/連下/抑え）
   - 三連複: ◎○各4段（合計8段）

2. **展開マスター** (`horse-prediction-converter-66pt.html`)
   - 66ptスタート、◎20/○10/▲15/△5
   - 印なし馬も「不」として表示
   - 記号表記（◎○▲△抑不）
   - 三連複: ◎○各3段（合計6段）

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

1. **2ファイル同時修正**:
   - トライアンフ: `/public/keiba-yosou-converter/horse-prediction-converter.html`
   - 展開マスター: `/public/keiba-yosou-converter/horse-prediction-converter-66pt.html`
   - 両方を同一コードに保つ（Astroビルド時に自動的にdist/へコピー）

2. **印なし馬の扱い**:
   - トライアンフ: `horses.filter(h => h.addPoints > 0)` で除外
   - 展開マスター: 全馬表示、印なしは「不」マーク

3. **スペース統一**: 全印で馬番と馬名の間にスペースなし

4. **正規表現維持**: タブ・スペース混在対応を維持 `[\s\t]+`

5. **レースタイトル判定**: 数字開始チェックを維持

6. **「穴」記号変換**: `symbols.replace(/穴/g, '△')` を必ず実行

### 🎯 **今後の保守作業時の注意**

- ファイル修正時は必ず該当ツールのpublic/内ファイルを修正
- **トライアンフ**: ポイント計算（◎5 ○4 ▲3 △2）、日本語表記を維持
- **展開マスター**: ポイント計算（◎20 ○10 ▲15 △5）、記号表記を維持
- 出力フォーマットの一貫性を保つ
- 正規表現パターンは慎重に変更（データ形式に影響）
- 「穴」記号変換は必須処理（削除厳禁）
- 三連複買い目段数: トライアンフ8段/展開マスター6段

---

**📅 最終更新日**: 2025-10-06
**🔧 最終修正**: Astro移行完了（トライアンフ/展開マスター）
**✅ 動作状況**: 完全動作・2ファイル管理（public/ → dist/へ自動コピー）
**🎯 対応記号**: ◎ ○ ▲ △ 穴（自動変換）+ 不（展開マスターのみ）

---

## 🚀 **Hugo → Astro 移行完了 (2025-10-06)**

### ✅ 移行完了項目

**プロジェクト構造:**
- ✅ Astro 5.14.1 セットアップ完了
- ✅ TypeScript strictest モード有効化
- ✅ Content Collections API 導入
- ✅ 動的ルーティング実装

**コンテンツ移行:**
- ✅ 45+ブログ記事 (`src/content/blog/`)
- ✅ 4コースページ (大井/船橋/川崎/浦和)
- ✅ 全画像・静的アセット (`public/`)
- ✅ 競馬予想変換ツール2種（トライアンフ/展開マスター）
- ✅ CSS スタイルシート

**ページ実装:**
- ✅ ホームページ (`/`) - Matrixアニメーション背景
- ✅ ブログ一覧 (`/blog/`)
- ✅ ブログ記事詳細 (`/blog/[slug]/`)
- ✅ コース詳細 (`/[course]/`)
- ✅ BaseLayout コンポーネント（共通ヘッダー・フッター）

**ビルド・動作確認:**
- ✅ 開発サーバー起動成功 (http://localhost:4322/)
- ✅ 本番ビルド成功 (44ページ生成)
- ✅ 全ページのルーティング正常動作

### 📊 プロジェクト統計

- **総ページ数**: 44ページ
- **ブログ記事**: 45+記事
- **コース解説**: 4競馬場
- **静的ツール**: 2種（予想変換）
- **使用技術**: Astro 5.14.1 + TypeScript + MDX

### 🔄 主な変更点

**Hugo → Astro 対応:**
1. **コンテンツディレクトリ**: `content/` → `src/content/`
2. **静的アセット**: `static/` → `public/`
3. **ビルド出力**: `public/` → `dist/`
4. **テンプレート**: Hugo templates → Astro components
5. **フロントマター**: Hugo形式 → Astro Content Collections schema

**新機能:**
- ✅ JavaScript/TypeScript 使用可能
- ✅ コンポーネントベースアーキテクチャ
- ✅ Content Collections API による型安全なコンテンツ管理
- ✅ 高速なビルドとホットリロード

### 🎯 今後の拡張可能性

**JavaScript活用:**
- サイト内検索機能
- インタラクティブなコース図
- リアルタイムデータ連携
- アニメーション強化

**SEO・パフォーマンス:**
- 画像最適化 (Astro Image)
- RSS Feed 生成
- サイトマップ自動生成
- パフォーマンスモニタリング

**コンテンツ管理:**
- タグページ実装
- カテゴリページ実装
- 関連記事レコメンド
- 検索機能実装

### 📝 移行時の注意点

**コースページ:**
- Hugoのカスタムフロントマター（`course_specs`, `distances`）は簡略化
- 複雑な構造は将来的にTypeScriptで実装可能

**ブログ記事:**
- フロントマターはAstro Content Collections schemaに準拠
- `date`フィールドは必須（Date型）

**静的ファイル:**
- `public/`内のファイルはビルド時に`dist/`へそのままコピー
- 変換ツールHTMLは影響なく動作

---

**🎉 Astro移行完了 - プロジェクトは完全に稼働可能な状態です！**