
set rtp+=~/.vim/bundle/Vundle.vim
call plug#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plug 'VundleVim/Vundle.vim'

"gruvbox colorscheme
Plug 'morhetz/gruvbox'

Plug 'kien/ctrlp.vim'

Plug 'scrooloose/nerdtree'

Plug 'itchyny/lightline.vim'

Plug 'neoclide/coc.nvim' , {'branch': 'release'}

Plug 'dense-analysis/ale'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Disables arrow keys
Plug 'wikitopian/hardmode'

" highlight yanked text
Plug 'machakann/vim-highlightedyank'
" All of your Plugins must be added before the following line
call plug#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Line numbers
:set number
:set relativenumber

" Enable Syntax Highlighting
syntax on

" GruvBox Colorscheme
set background=dark
"autocmd vimenter * colorscheme gruvbox
colorscheme gruvbox

" Transparency
hi Normal guibg=NONE ctermbg=NONE

" Indents/Tabs
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab

let g:HardMode_level = 'wannabe'
let g:HardMode_hardmodeMsg = 'Don''t use this!'
nnoremap <leader>h <Esc>:call ToggleHardMode()<CR>

let g:coc_disable_startup_warning = 1
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" folding
set foldmethod=syntax
set foldnestmax=10
set nofoldenable
set foldlevel=2

" set how long yanked text stays highlighted
let g:highlightedyank_highlight_duration = 250
