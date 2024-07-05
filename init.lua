require("devperiwal")

-- Tree-sitter setup
require('nvim-treesitter.configs').setup {
  ensure_installed = { "c", "lua", "python", "javascript" },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}

require'nvim-tree'.setup {}
vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

require('lualine').setup {
  options = {
    theme = 'auto',  -- Set your theme here
    section_separators = { '', '' },
    component_separators = { '', '' },
    icons_enabled = true,
    disabled_filetypes = {},
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = { 'branch' },
    lualine_c = { 'filename' },
    lualine_x = { 'encoding', 'fileformat', 'filetype' },
    lualine_y = { 'progress' },
    lualine_z = { 'location' },
  },
  extensions = { 'fzf', 'nvim-tree' },
}

