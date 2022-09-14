# Install

## neovim

```bash
curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim-macos.tar.gz
tar xzf nvim-macos.tar.gz
./nvim-macos/bin/nvim
```

Or

```bash
brew install neovim
```

## Packer.vnim

```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

Run

```
:PackerSync
```



## Plugins

### telescope.nvim

Required dependencies 

- [BurntSushi/ripgrep](https://github.com/BurntSushi/ripgrep)

- [sharkdp/fd](https://github.com/sharkdp/fd)