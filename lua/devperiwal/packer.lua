vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use ('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use { "catppuccin/nvim", as = "catppuccin", config = function()
	  vim.cmd("colorscheme catppuccin-mocha")
  end 
  }

  use {
  'nvim-tree/nvim-tree.lua',
  requires = { 'kyazdani42/nvim-web-devicons' },
  config = function()
      require("nvim-tree").setup()
  end
}

use {
    'hoob3rt/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
end)
