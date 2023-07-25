# Dotfiles

## Install

```bash
BAK=backup_`date +%Y%m%d_%H%M%S`


# .vim/
[ -d ~/.vim ] && mv ~/.vim ~/.vim.$BAK
[ -L ~/.vim ] && mv ~/.vim ~/.vim.$BAK
mkdir ~/.vim

# vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# install .vimrc
[ -f ~/.vimrc ] && mv ~/.vimrc ~/.vimrc.$BAK
[ -L ~/.vimrc ] && mv ~/.vimrc ~/.vimrc.$BAK
ln -s `pwd`/.vimrc ~/.vimrc

mkdir -p ~/.config
ln -s ~/.vim ~/.config/nvim
ln -s ~/.vimrc ~/.config/nvim/init.vim

nvim +PlugInstall +CocUpdate +GoInstallBinaries
```

configure a language server in your coc-settings.json(open it using :CocConfig)

```json
{
  "languageserver": {
    "go": {
      "command": "gopls",
      "rootPatterns": ["go.mod"],
      "trace.server": "verbose",
      "filetypes": ["go"]
    }
  }
}
```

