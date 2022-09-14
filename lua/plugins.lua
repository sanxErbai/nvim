local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd [[packadd packer.nvim]]
end

return require('packer').startup(function(use)
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons',
    },
    tag = 'nightly',
  }

  use {
    'akinsho/bufferline.nvim',
    tag = "v2.*",
    requires = 'kyazdani42/nvim-web-devicons',
  }

  use 'numToStr/Comment.nvim'

  use {
    'neoclide/coc.nvim',
    branch = 'release',
  }

  use 'tanvirtin/monokai.nvim'
  -- use({ "ellisonleao/gruvbox.nvim", requires = { "rktjmp/lush.nvim" } })

  use {
    'nvim-lualine/lualine.nvim',
    requires = {
      'kyazdani42/nvim-web-devicons',
      opt = true,
    },
  }
  use 'arkav/lualine-lsp-progress'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} },
  }
  use 'nvim-telescope/telescope-ui-select.nvim'
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use 'ahmedkhalf/project.nvim'

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use 'p00f/nvim-ts-rainbow'

  -- use 'glepnir/dashboard-nvim'

  use 'lukas-reineke/indent-blankline.nvim'

  if packer_bootstrap then
    require('packer').sync()
  end
end)