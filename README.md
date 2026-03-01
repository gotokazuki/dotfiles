# dotfiles

## 概要

chezmoi を利用し、dotfiles を構築する。

## 手順

### Homebrew と chezmoi のインストール

[Homebrew](https://brew.sh)　をインストールし、chezmoi をインストールする。
Homebrew をインストールする過程で、Xcode Command Line Tools もインストールされる。

```shell
# brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# chezmoi
brew install chezmoi
```

### dotfiles のダウロード

dotfiles repo で管理するファイルを `~/.local/share/chezmoi/` にダウンロードする。

```shell
chezmoi init {gh-username}
```

### chezmoi の適用

chezmoi で管理するファイルのホームディレクトリ等への配備やスクリプトの実行を行う。

```shell
chezmoi apply
```

## その他

#### Xcode Command Line Tools

Xcode Command Line Tools を単体でインストールする場合は以下を実行する。

```shell
# インストール
xcode-select --install
# 確認
xcode-select -p
```

### NeoVim

適当なファイルを NeoVim で開く。
`:Lazy sync` によりインストールされる。

### ssh key を作る

```
ssh-keygen -t ed25519 -C "{your_email_address}"
```

passphrase は 10 桁以上にするのが安全。

### ssh key の passphrase を KeyChain に登録する

```
$ ssh-add -K ~/.ssh/id_ed25519
Enter passphrase for /User/{user_name}/.ssh/id_ed25519:
Identity added: /Users/{user_name}/.shh/id_ed25519
```

### ssh passphrase 入力の省略

`~/.ssh/config` を作成する。

```
Host *
  UseKeychain yes
  AddKeysToAgent yes
```

### IME の設定

- ABC削除のため、かな入力の英字にチェックを入れる
- 日本語: ひらがな(google) を追加
- 英語: 英数(google) を追加
- 日本語やABCなどデフォルトのものを削除
- 再起動
