# .dotfiles

## Set up

This setup uses a 'bare' respository to track configuration files, rather than symlinks and scripts.

It follows [this idea](https://news.ycombinator.com/item?id=11071754) shared by StreakyCobra (referenced in this [blog post](https://www.atlassian.com/git/tutorials/dotfiles)).

The alias `dot` is used to perform Git operations (this is defined in `~/.zshrc` once cloned).

### Installing apps and packages

1. Install [Homebrew](https://brew.sh/):

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

2. Make sure you are in the `$HOME` directory and install packages with `brew bundle`:

```sh
cd ~
brew bundle
```

3. Install [`oh-my-zsh`](https://ohmyz.sh/):

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### Cloning dotfiles

1. Clone the repository to a `.` directory (e.g. `.dotfiles`) in `$HOME`:

```sh
git clone --bare https://github.com/m0xAy/.dotfiles.git $HOME/.dotfiles
```

2. Define this alias in the current shell scope:

```sh
alias dot="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
```

3. Checkout the content of the bare repository to your `$HOME`:

```sh
dot checkout
```

4. Set up local Git config:

```sh
dot config --local user.name "m0xAy"
dot config --local user.email "126299768+m0xAy@users.noreply.github.com"
dot config --local status.showUntrackedFiles no
```
