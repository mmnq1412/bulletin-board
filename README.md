# README

Get Started for development
GitHub に issue を作成する

ベースブランチに移動する

基本的には develop ブランチから機能ブランチを作成する。 大型リリースで develop を使用する場合、大型リリースの機能開発ベースは develop となる。

作業ブランチを作成する

開発ブランチの場合は feature/#{issue ID}-{英語名} とする。 {issue ID} は GitHub に作成した issue の ID を入れる。 {英語名} は issue のタイトルを完結な英語にしたものを入れる。

例えば、issue ID 100 で、「MembersController を実装する」という issue の場合下記をブランチ名とする。 feature/#100-create-members-controller となる。

緊急修正の場合は hotfix/#{issue ID]-{英語名} とする。 {issue ID} と ｛英語名｝ は開発ブランチと同様。

開発する

動作確認をする

単体テスト実装をする

PR を提出する

基本的に派生元ブランチに PR を出す。

セルフレビューをする

GitHub に作成した PR の /files にアクセスする。 下記を観点として他者の作業をレビューするときと同様にレビューする。

コードフォーマットが崩れていないか、無駄な空行の連続がないか
issue に関係のない箇所を変更していないか
生成物をコミット対象に含めていないか
開発中に見つけた要修正箇所がある場合は、issue を作成する。 また、ソースコードには FIXME: xxx のコメントを付記する。

PR のレビュー依頼を通知する
