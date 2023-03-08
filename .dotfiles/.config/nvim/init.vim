
" Set compatibility to Vim, so that all Vim options are automatically set.
set nocompatible

" Set the runtime path to include Plug and initialize
call plug#begin('~/.vim/plugged')

" List the plugins you want to use here
Plug 'prettier/vim-prettier', { 'do': 'npm install' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dense-analysis/ale'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

" Cobalt2 theme
Plug 'chriskempson/vim-tomorrow-theme'
set t_Co=256

" Use Hack font
set guifont=Hack\ Nerd\ Font\ 12

" Tabs to spaces
set tabstop=2
set shiftwidth=2
set expandtab

" Enable line numbers
set number

" Vim Commentary plugin
Plug 'tpope/vim-commentary'

" Enable syntax highlighting
syntax enable

" Use default Vim key bindings
set nocompatible

" Enable Vim airline plugin
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_theme='cobalt2'

" Configure COC.nvim
let g:coc_global_extensions = [      
      \ 'coc-prettier',      
      \ 'coc-eslint',      
      \ 'coc-vetur',      
      \ 'coc-json',      
      \ 'coc-html',      
      \ 'coc-css',      
      \ 'coc-tsserver',      
      \ 'coc-git',      
      \ ]

" Configure ALE plugin
let g:ale_linters = {
      \ 'javascript': ['eslint'],
      \ 'vue': ['eslint'],
      \ 'css': ['stylelint'],
      \ 'html': ['htmlhint'],
      \ 'markdown': [],
      \ 'typescript': ['eslint'],
      \ }
let g:ale_fixers = {
      \ 'javascript': ['prettier', 'eslint'],
      \ 'vue': ['prettier', 'eslint'],
      \ 'css': ['stylelint'],
      \ 'html': ['prettier'],
      \ 'markdown': [],
      \ 'typescript': ['prettier', 'eslint'],
      \ }
let g:ale_fix_on_save = 1

" Configure FZF plugin
nnoremap <leader>f :Files<CR>

" Enable Prettier formatting on save
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
let g:prettier#eslint_config_fallback = '.prettierrc.js'
let g:prettier#filetypes = ['html', 'javascript', 'json', 'css', 'yaml', 'markdown', 'vue', 'typescript']

call plug#end()
filetype plugin indent on    " required

" Load any local configuration files, if present
if filereadable(expand("~/.config/nvim/local.vim"))
  source ~/.config/nvim/local.vim
endif

