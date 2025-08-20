# ユーザー毎のセットアップ

## sudo 時のパスワード要求スキップ

デフォルトでは、sudo を実行する際にパスワードを要求されます。
セキュリティとのトレードオフになりますが、筆者は利便性向上のため、パスワードを要求されないように設定しています。

```
$ sudo visudo -f /etc/sudoers.d/<username>

# 以下を追記して終了
<username> ALL=(ALL) NOPASSWD:ALL
```

## ツールのショートカット設定

以下のツールは、使用時の利便性向上のためシンボリックリンクを作成します。

```bash
ln -s $(which fdfind) ~/.local/bin/fd
ln -s $(which batcat) ~/.local/bin/bat
```

## 必要なツールのインストール

筆者は、mise を使用してツールのインストールおよびバージョン管理を行っています。

```bash
# miseのインストール
curl https://mise.run | sh
echo 'eval "$(~/.local/bin/mise activate bash)"' >> ~/.bashrc
echo "MISE_ENV_FILE=.env" >> ~/.bashrc  # ディレクトリ毎に.envを読み込む(direnv機能)

mise install python@latest
mise use -g python@latest
mise install node@lts
mise use -g node@lts
mise install go@latest
mise use -g go@latest
```

## Git の設定

Git の設定をします。自身のユーザー名とメールアドレスを設定してください。
以下は筆者の例です。

```bash
git config user.name harutaka
git config user.email 10650294+harutaka@users.noreply.github.com
```

## SSH 鍵の作成

暗号化方式について、2025 年時点では ed25519 が推奨されています。
昔よく使われていた rsa よりも、高速でセキュアです。
続けて GitHub など、必要な箇所に公開鍵を登録してください。

```bash
ssh-keygen -t ed25519
```

## VSCode の拡張機能のインストール

- Japanese Language Pack for Visual Studio Code
- Code Runner
- Git Graph
- Iceberg
- indent-rainbow
- Cline
- Cody
- Markdown Preview Enhanced
- Prettier

## VSCode のユーザー設定

[settings.json](./settings.json) を 参照してください。
