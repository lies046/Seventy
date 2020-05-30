### 作成背景
- ある企業の技術選考で要件とDockerだけ渡され7日間の期間付きでの作成です。  
  全ての機能を実装できたのは12日でした。  
  デプロイは1日かかりましたので計13日での作成です。  

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
- Google Maps APIを使用し現在位置からの地域登録

### 注文者向けオーダー機能
登録・ログイン不要で注文(カード決済)

- カート機能
- 複数店舗対応
- カード決済
- 受け取り時間指定
- Google Maps APIを使用し現在位置と店舗の距離から最適な時間を算出

### 使用技術一覧
- Ruby 2.7.0
- Ruby on Rail 6.0.0.2
- MySQL 8.0
- Jquery
- Boostrap
- Google Maps API
- Docker
- Heroku
- S3
- PAY.JP 

### ER図
![_実体関連図の例 (1)](https://user-images.githubusercontent.com/57931839/83320297-0b29ef80-a281-11ea-9cfb-f480c60578dc.jpeg)

### アプリケーション機能説明

- 顧客用と店舗用のページを分けました。
- 店舗
  - https://seventy.herokuapp.com/admin より新規登録・ログイン
  - アカウント作成後、店舗管理画面が作成されます。
  - アカウント作成時、現在地の住所を取得し市区町村まで自動で入力されます。
  - 店舗用管理画面からは商品の登録・編集・削除・オーダー情報の閲覧が可能です。

- 顧客
  - 顧客用のページはhttps://seventy.herokuapp.com/ になります。
  - お店の情報が登録されると顧客用TOPページに店舗一覧が表示されます。
  - お店を選択するとメニューが表示され、メニューをクリックするとカートに追加できます。
  - 複数店舗の商品を追加することが可能です。
  - 受け取り時間を指定できます。

### 苦労したところ
- 環境構築
Dockerを触ったことがなかった為、環境構築に1日半かかってしまいました。
今の自分の力では無理ではないかと心が折れかけましたが諦めず手を動かしcreateできた時は歓喜の瞬間でした。
しかし、mysqlが文字化けしており日本語化に半日ほどさらに費やしました。

- Rails6
今までRails6を使ったことがなかったので5系と比べ若干違うところがあり少し大変でした。(javascriptの扱いかたなど)
今回を機に6系で勉強していこうと決めました。

- Doker
自分の環境にDockerを入れ開発したのは初めてでした。Dockerのコマンドやコンテナの入り方、ローカルサーバーの立ち上げなど
たくさん勉強になることが多くDockerもちゃんと使えるように勉強していきたいと感じました。

- 現在地の取得や現在地からお店までの時間
  初めはどのうように実装していけば良いのか悩みましたが、GoogleのAPIを使えば簡単に実装できることがわかりました。
  地図を使用したアプリの作成はやったことがなかったので楽しかったです。

### フィードバック
- 冒頭の作成背景で述べた通り技術選考の成果物となります。  
  全ての機能は実装できませんでしたが技術選考はパスしました。  
  しかし、最終選考で現役のエンジニアさんも候補者の中に居て残念ながら不採用となってしまいました。  
  フィードバックとして以下の言葉をいただきました。
   - システム全体を構成して作成した点は良かった。
   - 機能の優先度や関連などの見通しが立ち、適切なスケジューリングで作成できている。
   - 解決策の提案力は応募者のなかでは良い方でした。
