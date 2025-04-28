# vscode-on-aws

AWS 環境で、VSCode 用の開発環境を構築するための方法を記します。
主に以下の 2 つの方法をまとめています。

- remote-ssh: Remote-SSH 拡張機能と SSM Session Manager を使って、EC2 インスタンスに 接続
- vscode-server: EC2 インスタンスに VSCode Server をインストールして、ブラウザからアクセス
