set nocompatible              " be iMproved, required
"filetype plugin on                  " filetype off was required 
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

" Color scheme jellybean
"Plugin 'nanotech/jellybeans.vim'

" Fuzzy search
Plugin 'ctrlpvim/ctrlp.vim'

" Status bar
Plugin 'vim-airline/vim-airline'

" Jump to specific character
Plugin 'easymotion/vim-easymotion'

" Brackets, quotes and shit
Plugin 'tpope/vim-surround'

" Prose features, soft wrap
Plugin 'reedes/vim-pencil'

" Autocomplete
Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
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

" populate the g:airline_symbols dictionary with the proper font
" glyphs for various symbols.
let g:airline_powerline_fonts = 1

" show hidden and reduce depth
let g:ctrlp_user_command = 'ag %s -l --nocolor --nogroup --hidden -g "" --depth 3'

" configure vim-pencil
let g:pencil#wrapModeDefault = 'soft'   " default is 'hard'

augroup pencil
    autocmd!
    autocmd FileType markdown,md call pencil#init({'wrap': 'soft'})
    autocmd FileType text,txt    call pencil#init({'wrap': 'soft'})
augroup END

set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

set autoindent

syntax on

" default compile flags, c++11, for custom compile flags, set up a similar
" file in the src folder of your project
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

:set laststatus=2
