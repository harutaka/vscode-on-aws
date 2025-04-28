# vscode-server

CloudFormation 用の VSCode Server のセットアップテンプレートです。AWS ではワークショップなどで用意しているテンプレートをベースに、使用インスタンスの拡充とインストールするツール類をカスタム化しています。

## 変更点
* EC2インスタンスの種類をGraviton系に絞り、ハードコートされているamd64指定をarm64に変更。
* Ubuntu Serverを22系から24系に変更
* HomeFolderのデフォルトを変更
* VSCode Serverのハッシュ化方法がDeprecatedになっているので最新化
* インストール済のコンポーネントの種類を変更

## 使用方法

1. AWS のマネジメントコンソールより、Cloudformation のメニューへアクセスします。
2. 本リポジトリにあるテンプレートを使用して、新しいリソースを使用を選択し、スタックを作成してください。
3. スタック名やその他パラメーターは適宜変更してください。(スタック名とEC2キーペアは同一AWSアカウント内で被らないようユニークな名前にしてください)
4. **機能** セクションのボックスに **チェック** を入れます
5. **スタックの作成** をクリックします

### Visual Studio Code Server にアクセスする

しばらく待つと、スタックのステータスが **CREATE_COMPLETE** となり、作成が完了します。Visual Studio Code Server にアクセスしましょう。

1. CloudFormation のスタックの **出力** タブを開く
2. **PasswordURL** の URL にアクセスする
3. AWS Secrets Manager の画面が開くので、 **概要** タブの **シークレットの値** にある **シークレットの値を取得する** のボタンをクリック
4. 表示されたパスワードをコピーする
5. CloudFormation のスタックの **出力** タブに記載の **URL** のリンクにアクセスすると、Visual Studio Code Server が新しいタブで開く
6. **Welcome to code-server** ダイアログに、先ほどコピーしたパスワードを入力し、 **SUBMIT** をクリックする
7. Visual Studio Code IDE が開きます。

## Visual Studio Code Server にインストール済みのコンポーネント一覧

以下のアイテムがすでに Visual Studio Code Server インスタンスにインストールされています

- AWS CLI
- Git
- Docker


### 元々のテンプレートにインストール済みのコンポーネント一覧（比較用）

- AWS CLI
- AWS Cloud Development Kit (CDK)
- AWS SAM CLI
- AWS Q Developer for VSCode
- Git
- Docker
- Python 3.10
- Amazon Corretto OpenJDK
- Typescript
- Node
- Vite
- Go
- Rust
