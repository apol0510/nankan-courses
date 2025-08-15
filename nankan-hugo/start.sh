#!/bin/bash

echo "南関競馬サイト開発サーバー起動スクリプト"
echo "========================================="

# 既存のHugoサーバーを停止
echo "既存のサーバープロセスを確認中..."
if pgrep -f "hugo server" > /dev/null; then
    echo "既存のHugoサーバーを停止しています..."
    pkill -f "hugo server"
    sleep 2
fi

# ポート1314が使用中か確認
if lsof -i :1314 > /dev/null 2>&1; then
    echo "警告: ポート1314が使用中です。"
    echo "別のプロセスを停止してから再実行してください。"
    exit 1
fi

# Hugoサーバーを起動
echo "南関競馬サイトを起動中..."
echo "URL: http://localhost:1314/"
echo "停止するには Ctrl+C を押してください"
echo ""

hugo server --port 1314