set rtp+=/usr/local/lib/python3.5/site-packages/powerline/bindings/vim/
set laststatus=2

execute pathogen#infect()
syntax on
filetype plugin indent on

"set tabs to 4 spaces
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

"airline config
"let g:airline_powerline_fonts = 1
"let g:airline#extensions#tabline#enabled = 1

"Syntastic config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"Gitgutter
set updatetime=250

"Vimtree
"open a NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"Shortcut to open NERDTree ctrl+n
map <C-n> :NERDTreeToggle<CR>
"Close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"nerdtree-git-plugin
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

"vim-devicons
"set guifont=Roboto\ Mono\ Light\ for\ Powerline\ Types:h11
set guifont=3270-Medium\ Nerd\ Font\ Types:h11

let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_flagship_statusline = 1
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
" Always show statusline
set laststatus=2

" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256
