syntax on
set nu
set noshowmode
set splitbelow splitright 
set laststatus=2
set clipboard=unnamed
let mapleader= ","
set guioptions -=m "Hides the menubar
set guioptions -=T "Hides the Toolbar

" Mapping to reload configuration
nmap<leader>so :source $HOME\_vimrc<CR>

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

" Initialize plugin system
call plug#end()

colorscheme dracula
