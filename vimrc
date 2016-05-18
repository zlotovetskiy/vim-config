set nocompatible
call plug#begin('~/.vim/plugged')
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'scrooloose/nerdtree'
  Plug 'joshdick/onedark.vim'
  Plug 'vim-ruby/vim-ruby'
  Plug 'tpope/vim-rails'
  Plug 'tpope/vim-fugitive'
  Plug 'slim-template/vim-slim'
  Plug 'tpope/vim-haml'
  Plug 'FroSTD/frostd-snippets.vim'
  Plug 'L9'
  Plug 'FuzzyFinder'
  Plug 'thoughtbot/vim-rspec'
  Plug 'hail2u/vim-css3-syntax'
  Plug 'JulesWang/css.vim'
  Plug 'cakebaker/scss-syntax.vim'
  Plug 'othree/html5-syntax.vim'
  Plug 'othree/html5.vim'
  Plug 'kchmck/vim-coffee-script'
  Plug 'pangloss/vim-javascript'
  Plug 'grep.vim'
  Plug 'surround.vim'
  Plug 'octol/vim-cpp-enhanced-highlight'
  Plug 'c9s/vim-makefile'
  Plug 'ryanoasis/vim-devicons'
  Plug 'p0deje/vim-ruby-interpolation'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'vim-scripts/Gundo'
  Plug 'scwood/vim-hybrid'
  Plug 'miyakogi/conoline.vim'
  Plug 'scrooloose/syntastic'
  Plug 'leafgarland/typescript-vim'
  Plug 'rhysd/vim-crystal'
  Plug 'digitaltoad/vim-pug'
  Plug 'burnettk/vim-angular'
  Plug 'rizzatti/dash.vim'
  Plug 'scwood/vim-hybrid'
call plug#end()

" Default vim config
set t_Co=256
syntax on
set rnu
if strftime("%H") > 9
  set background=light
  let g:airline_theme='sol'
else
  let g:airline_theme='luna'
  set background=dark
endif
colorscheme hybrid

set guifont=Hurmit\ Light\ Nerd\ Font\ Complete:h15
set expandtab ts=2 sw=2 ai
set showtabline=2
set number
set noswapfile
set list
set listchars=trail:•
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L

" Airline configs
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = ' '
let g:airline#extensions#tabline#tab_min_count = 2
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#fnamemod = ':t'

" NerdTree Toggle
map \\ :NERDTreeToggle<CR>

" Rails go model/view/controller
map gv :Eview<CR>
map gc :Econtroller<CR>
map gm :Emodel<CR>
map gh :Ehelper<CR>
map gj :Ejavascript<CR>
map gs :Estylesheet<CR>

" FuzzyFinder as Ctrl-P
map <C-p> :FufCoverageFile<CR>

" Kill trailing spaces on save file
autocmd BufWritePre * :%s/\s\+$//e

" Syntastic config
let g:syntastic_enable_signs = 1
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_enable_highlighting = 0

" Grep as Ctrl-F
map <C-f> :Grep<CR>

" Conoline
let g:conoline_auto_enable = 1

" C family
au Filetype c source ~/.vim/configs/c.vim
au Filetype cpp source ~/.vim/configs/c.vim
au Filetype .h source ~/.vim/configs/c.vim

" Show WSDL highlighting as XML
au BufRead,BufNewFile *.wsdl set filetype=xml
au BufRead,BufNewFile *.cr set filetype=ruby

" Ionic support
let g:syntastic_html_tidy_ignore_errors=["<ion-", "discarding unexpected </ion-", " proprietary attribute \"ng-"]
