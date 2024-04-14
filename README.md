# NeoVim Setup

1. Install NeoVim:
```sh
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz
echo 'export PATH="$PATH:/opt/nvim/"' >> ~/.bashrc
```

2. Install plugin manager (vim-plug)
```sh
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

3. Apply setup:
```
cp -r nvim/ ~/.config/
nvim .
:PlugInstall
```

## Dependencies

C++ LSP:
```sh
sudo apt install clangd libstdc++-12-dev
```

## Fonts

```sh
mkdir -p ~/.local/share/fonts && cd ~/.local/share/fonts && curl -fLO https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/DroidSansMono/DroidSansMNerdFont-Regular.otf
```
