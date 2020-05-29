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
- 受け取り時間指定
- アラート(現在位置と店舗の距離から最適な時間を算出)

### ER図

### 説明

- 顧客用とお店用のページを分けました。
- お店は/adminより店舗情報の登録が可能です。
- お店用のページは/admin以下に配置し顧客用のページと分けました。
- アカウント作成後、商品登録が可能です。
- 登録した商品はそれぞれのお店のTOPページに表示され、商品情報の編集や削除ができます。

- 顧客用のページはルートパスからになります。
- お店の情報が登録されると顧客用TOPページに店舗一覧が表示されます。
- お店を選択するとメニューが表示され、メニューをクリックするとカートに追加できます。
- クレジットカード決済はpay.jpを使用しております。テスト用の環境変数をセットしています。

### 苦労したところ
- 環境構築
Dockerを本格的に触ったことがなかった為、環境構築に1日半かかってしまいました。
今の自分の力では無理ではないかと心が折れかけましたが諦めず手を動かしcreateできた時は歓喜の瞬間でした。
しかし、mysqlが文字化けしており日本語化に半日ほどさらに費やしました。

- Rails6
今までRails6を使ったことがなかったので5系と比べ若干違うところがあり少し大変でした。(javascriptの扱いかたなど)
今回を機に6系で勉強していこうと決めました。

- Doker
自分の環境にDockerを入れ開発したのは初めてでした。Dockerのコマンドやコンテナの入り方、ローカルサーバーの立ち上げなど
たくさん勉強になることが多くDockerもちゃんと使えるように勉強していきたいと感じました。
