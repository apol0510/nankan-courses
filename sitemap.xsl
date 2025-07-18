<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:sitemap="http://www.sitemaps.org/schemas/sitemap/0.9">
    <xsl:output method="html" encoding="UTF-8" />
    <xsl:template match="/">
        <html>
            <head>
                <title>南関コース解説 - サイトマップ</title>
                <meta charset="UTF-8" />
                <style>
                    body {
                        font-family: Arial, sans-serif;
                        margin: 20px;
                        background-color: #f5f5f5;
                    }
                    h1 {
                        color: #333;
                        border-bottom: 2px solid #007bff;
                        padding-bottom: 10px;
                    }
                    table {
                        width: 100%;
                        border-collapse: collapse;
                        background-color: white;
                        box-shadow: 0 2px 4px rgba(0,0,0,0.1);
                    }
                    th {
                        background-color: #007bff;
                        color: white;
                        padding: 12px;
                        text-align: left;
                    }
                    td {
                        padding: 10px;
                        border-bottom: 1px solid #ddd;
                    }
                    tr:hover {
                        background-color: #f5f5f5;
                    }
                    a {
                        color: #007bff;
                        text-decoration: none;
                    }
                    a:hover {
                        text-decoration: underline;
                    }
                    .info {
                        margin-bottom: 20px;
                        padding: 15px;
                        background-color: #e9ecef;
                        border-radius: 5px;
                    }
                </style>
            </head>
            <body>
                <h1>南関コース解説 - サイトマップ</h1>
                <div class="info">
                    <p>このXMLサイトマップは検索エンジン用に作成されています。</p>
                    <p>URL数: <xsl:value-of select="count(sitemap:urlset/sitemap:url)" /></p>
                </div>
                <table>
                    <thead>
                        <tr>
                            <th>URL</th>
                            <th>最終更新日</th>
                            <th>更新頻度</th>
                            <th>優先度</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="sitemap:urlset/sitemap:url">
                            <tr>
                                <td>
                                    <a href="{sitemap:loc}">
                                        <xsl:value-of select="sitemap:loc" />
                                    </a>
                                </td>
                                <td>
                                    <xsl:value-of select="sitemap:lastmod" />
                                </td>
                                <td>
                                    <xsl:value-of select="sitemap:changefreq" />
                                </td>
                                <td>
                                    <xsl:value-of select="sitemap:priority" />
                                </td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>