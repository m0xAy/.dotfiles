# .dotfiles

This setup uses a 'bare' respository to track configuration files, rather than symlinks and scripts.

It follows [this idea](https://news.ycombinator.com/item?id=11071754) shared by StreakyCobra (referenced in this [blog post](https://www.atlassian.com/git/tutorials/dotfiles)).

The alias `dot` is used to perform Git operations on this repo (this is defined in `~/.zshrc` once cloned).

### Setup

In your terminal run this [script](https://gist.github.com/m0xAy/ed64d1631c417cb476cb959050996638):

```sh
sh -c "$(curl -fsSL https://gist.githubusercontent.com/m0xAy/ed64d1631c417cb476cb959050996638/raw/4b3c3e4b6f9c8d3ed1de0f3c7e0e54eb3b7a058c/setup.sh)"
```

Once complete, you should be able to close Terminal and open [Kitty](https://sw.kovidgoyal.net/kitty/)🤞.

