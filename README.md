# dotfiles

## Overview

Setup dotfiles using chezmoi.

## Procedure

### Install Homebrew and chezmoi

Install [Homebrew](https://brew.sh), and install chezmoi.
Xcode Command Line Tools will also be installed during the Homebrew installation process.

```shell
# brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# chezmoi
brew install chezmoi
```

### Download dotfiles

> [!NOTE]
> The `--ssh` flag uses SSH instead of HTTPS, so an SSH public key must be registered to GitHub in advance.

Download the files managed in the dotfiles repo to `~/.local/share/chezmoi/`.

```shell
chezmoi init --ssh {gh-username}
```

### Apply chezmoi

Deploy files managed by chezmoi to the home directory, etc., and execute scripts.

```shell
chezmoi apply
```

## Others

#### Xcode Command Line Tools

Run the following to install Xcode Command Line Tools standalone.

```shell
# Install
xcode-select --install
# Verify
xcode-select -p
```

### NeoVim

Open any file with NeoVim.
It will be installed by `:Lazy sync`.

### Create SSH key

```
ssh-keygen -t ed25519 -C "{your_email_address}"
```

It is safer to make the passphrase 10 characters or more.

### Register SSH key passphrase to KeyChain

```
$ ssh-add --apple-use-keychain ~/.ssh/id_ed25519
Enter passphrase for /User/{user_name}/.ssh/id_ed25519:
Identity added: /Users/{user_name}/.ssh/id_ed25519
```

### Omit SSH passphrase input

Create `~/.ssh/config`.

```
Host *
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_ed25519
```

### IME Settings

- Log out of macOS and log back in
- Delete Japanese from the Input Sources settings
- Add azooKey(Japanese) to the Input Sources settings
