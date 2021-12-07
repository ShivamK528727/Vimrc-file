syntax on
set nu
set noshowmode
set splitbelow splitright 
set laststatus=2
set clipboard=unnamed
let mapleader= ","
set guioptions -=m "Hides the menubar
set guioptions -=T "Hides the Toolbar
set guioptions -=r  "remove right-hand scroll bar
set guioptions -=L  "remove left-hand scroll bar

" Mapping to reload configuration
nmap<leader>so :source $HOME\_vimrc<CR>

map <F11> <Esc>:call libcallnr("gvimfullscreen_64.dll", "ToggleFullScreen", 0)<CR>

map <silent><F11>:call system("wmctrl -ir " . v:windowid . " -b toggle,fullscreen")<CR>
"gvimfullscreen_64.dll or without "_64" for 32-bit file needs to be copied from link to folder where gvim.exe is,(according to version 32-bit or 64-bit "https://www.vim.org/scripts/script.php?script_id=2596""

if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif

let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ }

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'dracula/vim'

"Material theme (https://github.com/kaicataldo/material.vim)
Plug 'kaicataldo/material.vim', { 'branch': 'main' }

Plug 'itchyny/lightline.vim'
" Shorthand notation; retches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

"Plugin to add Icons (https://github.com/ryanoasis/vim-devicons)
Plug 'ryanoasis/vim-devicons'
" Initialize plugin system
call plug#end()

colorscheme dracula
