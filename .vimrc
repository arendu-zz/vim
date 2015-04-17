set nocp
syntax on
set modeline
set ls=2
set backspace=2
set clipboard=unnamed
set number
set encoding=utf-8 
" use intelligent indentation for C
" configure tabwidth and insert spaces instead of tabs
set expandtab " expand tabs to spaces
set tabstop=2  " tab width is 4 spaces
set shiftwidth=4 " indent also with 4 spaces
set ignorecase
"set modeline
set nu
set t_Co=256
" Set the default highlighting colors.  Use a color scheme if specified.
if exists("colors_name")
  exe "colors " . colors_name
else
  runtime! syntax/syncolor.vim
endif 
set hlsearch
autocmd InsertEnter * :let @/=""
autocmd InsertLeave * :let @/=""
set incsearch
let g:ctrlp_max_height = 30
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/*
au BufNewFile *.py 0r ~/.vim/templates/python/template
au BufNewFile *.tex 0r ~/.vim/templates/tex/template
"paste from clipboard
noremap p "+p
"noremap <c-s> <c-o>:Update<CR>


" **************** VUNDLE SETTINGs ****************************"
" let Vundle manage Vundle, required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'chriskempson/base16-vim'
Plugin 'noahfrederick/vim-noctu'
Plugin 'tomasr/molokai'
Plugin 'gmarik/Vundle.vim'
Plugin 'Chiel92/vim-autoformat'
"Plugin 'Shougo/neocomplete'
"Plugin 'Shougo/neocomplcache'
Plugin 'Shougo/neosnippet'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Valloric/ListToggle'
"Plugin 'scrooloose/syntastic'
"Plugin 'davidhalter/jedi-vim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html

"Plugin 'L9'
" Git plugin not hosted on GitHub

"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)

"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.

"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"set omnifunc=syntaxcomplete#Complete
let g:pydiction_location = '~/.vim/bundle/pydiction/complete-dict'
let g:pydiction_menu_height = 20
let g:pymode_rope_complete_on_dot = 0

"https://github.com/Chiel92/vim-autoformat"
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#enable_always_refresh = 1
"let g:neocomplete#enable_complete_select = 1
"let g:neocompcache#enable_auto_select = 1
"let g:neocomplcache#enable_always_refresh = 1
"let g:neocomplcache#enable_complete_select = 1
"let g:jedi#popup_select_first = 1
" neocomplete options
"set completeopt+=longest
"set completeopt+=menuone
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
  \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
noremap :fr<CR> :Autoformat<CR><CR>

" YouCompleteMe
"noremap <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>
noremap :jd<CR> :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
"Do not ask when starting vim
let g:ycm_min_num_of_chars_for_completion = 1
let g:syntastic_always_populate_loc_list=0
let g:ycm_add_preview_to_completeopt=0
let g:ycm_collect_identifiers_from_tags_files=1
"let g:ycm_filetype_specific_completion_to_disable = {
"            \ 'py' :1
"            \}
set tags+=./.tags
" vim latex stuff
set shellslash
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
let g:Tex_AutoFolding = 0
" the setting below remove that <++> everytime you autocomplete a environment
let g:Imap_UsePlaceHolders = 0
"vundle stuff
set nocompatible
"colorscheme base16-default
"colorscheme noctu
colorscheme molokai
set background=dark
