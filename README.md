# シンク株式会社 テストプロジェクト

## テイクアウト特化型注文サイト

サービス概要を確認していただき、課題に対する解決手段を
WEBアプリとして提案してください。

### サービス概要
スマホで作成できるレストラン向けテイクアウトメニュー注文サイト
- 急激にテイクアウトニーズが高まる中、WEBのチャネルを簡単に開設できるサービス
- レストランが数分でテイクアウトメニューのカタログページを作成可能
- 顧客はクレカ決済で発注、指定時間に受け取りに行く

### レストラン向けCMS
メアド、店舗名など最小限の入力で店舗ページを立ち上げ可能な仕組み

- 登録
- ログイン
- 店舗ページ編集
- メニュー編集
- 現在位置からの地域登録

### 注文者向けオーダー機能
登録・ログイン不要で注文(カード決済)

- カート機能
- 複数店舗対応
- カード決済
- 受け取り時間指定時
- アラート(現在位置と店舗の距離から最適な時間を算出)


その他にも有用な機能あれば、作成していただいて結構です。

## テストプロジェクトの作成手順
1. `git clone` でローカルにプロジェクトファイルをコピー
1. `docker-compose build` を実行し、コンテナをビルド
1. `docker-compose run --rm web rails new . --force --database=mysql --skip-turbolinks --skip-test --webpack=vue --skip-coffee` でプロジェクトを作成
1. `docker-compose run --rm web yarn install` でnpmパッケージをインストール
1. `docker-compose run --rm web mysql -uroot -ppassword -hdb mysql` でMySQLにログイン
1. MySQL のユーザー定義コマンドを実行
1. `docker-compose run --rm web rails db:create` でDBを作成してください
1. `docker-compose up` でコンテナを起動し、ブラウザで初期画面が表示できれば準備完了です
1. webpacker 関連のエラーが出るので、`docker-compose build` を実行します。(ビルドできない場合、 `sudo` つけるとできる場合があります。)
1. `docker-compose up` でコンテナを起動できれば開発環境は準備完了です
1. 作成順は問いませんので、各種機能を作成してください
1. 出来上がったら、リポジトリに `push` してください

