# dotfiles

## 前準備

いくつか事前に手動でインストールする

### Xcode Command Line Tools

インストール
確認ダイアログあり
数分かかる

```shell
xcode-select --install
```

確認

```shell
xcode-select -p
```

### Homebrew

インストール
パスワード入力あり
確認あり

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

https://brew.sh

### rosseta

Intel ベースのアプリケーションを動作させるための設定

インストール
パスワード入力あり
確認あり

```shell
sudo softwareupdate --install-rosetta
```

### brew bundle

```shell
brew bundle --file=<(curl -fsSL https://raw.githubusercontent.com/gotokazuki/dotfiles/main/files/homebrew/Brewfile)
```

## 設定

### zimfw

terminal 再起動が必要

https://zimfw.sh/#install

### macOS, Git, Zsh, Neovim WezTerm の設定

以下のスクリプトを実行する

```shell
source <(curl -fsSL https://raw.githubusercontent.com/gotokazuki/dotfiles/main/initialize.sh)
```

### Git User と Email を設定する

`.gitconfig.github` の内容を自分のアカウントの情報に変更する

### vim

適当なファイルを neovim で開く
しばらく待つとプラグインがインストールされる

## ローカル設定

`.zshrc.local` は git 管理していないので、ここに追記する

## その他

### ssh key を作る

```
ssh-keygen -t ed25519 -C "{your_email_address}"
```

passphrase は最低でも 10 桁以上にする

### ssh key の passphrase を KeyChain に登録する

```
$ ssh-add -K ~/.ssh/id_ed25519
Enter passphrase for /User/{user_name}/.ssh/id_ed25519:
Identity added: /Users/{user_name}/.shh/id_ed25519
```

### IME の設定

- ABC削除のため、かな入力の英字にチェックを入れる
- 日本語: ひらがな(google) を追加
- 英語: 英数(google) を追加
- 日本語やABCなどデフォルトのものを削除
- 再起動
