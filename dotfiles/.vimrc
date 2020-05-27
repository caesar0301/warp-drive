" My vim configuration of Vim 7.4+ or 8.0+
" From xiaming.chen, chenxm35@gmail.com
set nocompatible
filetype off

"++++++++++++ Vundle start ++++++++++++
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'Chiel92/vim-autoformat'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'dracula/vim', { 'name': 'dracula' }
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'thaerkh/vim-workspace'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'chrisbra/csv.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
call vundle#end()            " required
filetype plugin indent on    " required
"------------- Vundle end -------------

let mapleader=","
syntax on
set autoindent
set autoread
set backspace=2
set cursorline
set encoding=utf-8
set expandtab
set fileencodings=utf-8,ucs-bom,GB2312,big5
set hlsearch
set ignorecase
set nowrap
set number
set ruler
set scrolloff=4
set shiftwidth=4
set showmatch
set smartindent
set softtabstop=0
set tabstop=4

colorscheme dracula

nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <F6> :Autoformat<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <leader>t :NERDTreeFind<CR>
nnoremap <Leader>b :bp<CR>
nnoremap <Leader>f :bn<CR>
nnoremap <Leader>g :e#<CR>
noremap <F2> :mksession! ~/vim_session <cr>
noremap <F3> :source ~/vim_session <cr>
nnoremap <F10> :set invpaste paste?<CR>
set pastetoggle=<F10>
set showmode
noremap <F11> :set invnumber<CR>
inoremap <F11> <C-O>:set invnumber<CR>

" auto-pairs
let g:AutoPairsFlyMode = 0
let g:AutoPairsShortcutBackInsert = '<M-b>'

" vim-autoformat
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0

" nerdtree
let NERDTreeShowLineNumbers=0
let NERDTreeAutoCenter=1
let NERDTreeShowHidden=0
let NERDTreeWinSize=31
let NERDTreeShowBookmarks=0
let NERDTreeQuitOnOpen=1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" ctrlp
let g:ctrlp_working_path_mode = 'c'
let g:ctrlp_switch_buffer = 'et'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_user_command = 'find %s -type f'
let g:ctrlp_root_markers = [
    \ 'pom.xml',
    \ '.p4ignore',
    \ '.python-version',
    \ 'cargo.toml'
    \ ]
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|m2|bzr)$',
    \ }

" ainbow_parentheses.vim
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" vim-airline
let g:airline#extensions#tabline#enabled = 1

"++++++++++++ Python +++++++++++++
" jedi-vim
let g:jedi#goto_command = "<leader>nd"
let g:jedi#goto_assignments_command = "<leader>ng"
let g:jedi#goto_stubs_command = "<leader>ns"
let g:jedi#goto_definitions_command = ""
let g:jedi#documentation_command = "<leader>nk"
let g:jedi#usages_command = "<leader>nn"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<leader>nr"

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |
au BufRead,BufNewFile SConstruct set filetype=python
au BufRead,BufNewFile SConscript set filetype=python
"------------ Python -------------
