# waf-workshop

WAFについての理解を深めるための演習ディレクトリです。

今使っているImageに含まれているルールセット一覧

```bash
REQUEST-901-INITIALIZATION.conf                       # CRSの動作に必要な変数の初期化、動作モードの設定
REQUEST-905-COMMON-EXCEPTIONS.conf                    # 静的ファイル(画像/CSS等)への無駄な検査をスキップする設定

# アプリケーション固有の除外ルール (誤検知対策)
REQUEST-903.9001-DRUPAL-EXCLUSION-RULES.conf          # Drupal向けの例外設定
REQUEST-903.9002-WORDPRESS-EXCLUSION-RULES.conf       # WordPress向けの例外設定
REQUEST-903.9003-NEXTCLOUD-EXCLUSION-RULES.conf       # Nextcloud向けの例外設定
REQUEST-903.9004-DOKUWIKI-EXCLUSION-RULES.conf        # DokuWiki向けの例外設定
REQUEST-903.9005-CPANEL-EXCLUSION-RULES.conf          # cPanel向けの例外設定
REQUEST-903.9006-XENFORO-EXCLUSION-RULES.conf         # XenForo向けの例外設定

# リクエスト検査: インフラ・プロトコルレベルの攻撃検知
REQUEST-910-IP-REPUTATION.conf                        # 悪評のあるIPアドレスやボットの接続制限
REQUEST-911-METHOD-ENFORCEMENT.conf                   # 許可されていないHTTPメソッド(PUT/DELETE等)の制限
REQUEST-912-DOS-PROTECTION.conf                       # DoS(サービス拒否)攻撃の検知と緩和
REQUEST-913-SCANNER-DETECTION.conf                    # 脆弱性スキャナーやクローラーの検知
REQUEST-920-PROTOCOL-ENFORCEMENT.conf                 # HTTPプロトコル違反（不正なヘッダ等）の検査
REQUEST-921-PROTOCOL-ATTACK.conf                      # HTTPヘッダインジェクション等のプロトコル悪用検知

# リクエスト検査: Webアプリケーションへの攻撃検知
REQUEST-930-APPLICATION-ATTACK-LFI.conf               # ローカルファイルインクルージョン(内部ファイル閲覧)対策
REQUEST-931-APPLICATION-ATTACK-RFI.conf               # リモートファイルインクルージョン(外部スクリプト実行)対策
REQUEST-932-APPLICATION-ATTACK-RCE.conf               # リモートコード実行(OSコマンド実行)対策
REQUEST-933-APPLICATION-ATTACK-PHP.conf               # PHP特有の脆弱性攻撃対策
REQUEST-934-APPLICATION-ATTACK-NODEJS.conf            # Node.js特有の脆弱性攻撃対策
REQUEST-941-APPLICATION-ATTACK-XSS.conf               # クロスサイトスクリプティング(JavaScript埋め込み)対策
REQUEST-942-APPLICATION-ATTACK-SQLI.conf              # SQLインジェクション(データベース不正操作)対策
REQUEST-943-APPLICATION-ATTACK-SESSION-FIXATION.conf  # セッション固定攻撃(セッション乗っ取り)対策
REQUEST-944-APPLICATION-ATTACK-JAVA.conf              # Java特有の脆弱性攻撃対策

# リクエストの最終判定
REQUEST-949-BLOCKING-EVALUATION.conf                  # 累積された異常スコアに基づき、遮断するか最終判断

# レスポンス検査: 情報漏洩(データリーク)の検知
RESPONSE-950-DATA-LEAKAGES.conf                       # 一般的なエラーメッセージや情報の露出を監視
RESPONSE-952-DATA-LEAKAGES-JAVA.conf                  # Javaのスタックトレース等の漏洩検知
RESPONSE-953-DATA-LEAKAGES-PHP.conf                   # PHPのエラーやソースコードの漏洩検知
RESPONSE-954-DATA-LEAKAGES-IIS.conf                   # IIS(Windowsサーバー)特有の情報漏洩検知

# レスポンスの最終判定・相関分析
RESPONSE-959-BLOCKING-EVALUATION.conf                 # 出力データに問題がある場合、最終的に遮断を判断
RESPONSE-980-CORRELATION.conf                         # リクエストとレスポンスの情報を紐付け、ログを詳細化
RESPONSE-999-EXCLUSION-RULES-AFTER-CRS.conf.example   # CRS適用後に追加で行う個別の例外設定サンプル                 
```