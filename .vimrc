" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
      silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
          \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif


call plug#begin()

Plug 'vim-scripts/AutoComplPop'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'joshdick/onedark.vim'
Plug 'preservim/nerdcommenter'
Plug 'airblade/vim-gitgutter'
Plug 'sheerun/vim-polyglot'
Plug 'frazrepo/vim-rainbow'

call plug#end()

" Vim Settings
syntax on
filetype plugin on
set laststatus=2
set nocompatible
set nowrap
set encoding=utf8
set number
set ruler
set smarttab
set expandtab
set autoindent
set mouse=a
set tabstop=4
set cursorline
set spelllang=en_us
set nospell

" Colorscheme Settings
colorscheme onedark
let g:airline_theme='onedark'
hi Normal ctermbg=None
hi CursorLine guibg=#70798A

" GitGutter Settings
highlight! link SignColumn LineNr
let g:gitgutter_set_sign_backgrounds = 1
set signcolumn=yes

" Vim Rainbow Settings
let g:rainbow_active = 1

" NERDCommenter Settings
let g:NERDCreateDefaultMappings = 1
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1

" AutoComplPop Settings
set complete+=kspell
set completeopt=menuone,longest
set shortmess+=c

inoremap <expr> <Down> pumvisible() ? "<C-n>" :"<Down>"
inoremap <expr> <Up> pumvisible() ? "<C-p>" : "<Up>"

map <F4> :set spell!<CR>

" Polyglot Settings
aug i3config_ft_detection
    au!
    au BufNewFile,BufRead ~/.config/i3/config set filetype=i3config
    au BufNewFile,BufRead ~/.config/i3status/config set filetype=i3config
aug end

