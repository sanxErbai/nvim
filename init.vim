let g:loaded_ruby_provider = 0
let g:loaded_perl_provider = 0
" let g:rust_recommended_style = 0

source <sfile>:h/vim/coc.vim

lua require('basic')
lua require('keybindings')
lua require('plugins')

lua require('packages/monokai')
" lua require('packages/gruvbox')
lua require('packages/bufferline')
lua require('packages/comment')
lua require('packages/indent-blankline')
lua require('packages/lualine')
lua require('packages/nvim-tree')
lua require('packages/nvim-treesitter')
lua require('packages/projects')
lua require('packages/telescope')

:highlight LineNr guifg=#90908a
