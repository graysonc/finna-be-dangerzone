set number
set noswapfile
set nocp
set expandtab
set shiftwidth=4
set softtabstop=4
set smarttab
set autoindent
set tw=80
set scrolloff=5

" Cuttin' in line
map j gj
map k gk

" Seriously quit telling me I already edited asdfasdfasdfasdf.fuckass
nnoremap <C-w>C :close!<cr>

colorscheme molokai

" Maps mk. to the Makederp function (mkdir-p), which makes you retarded.
cnoremap mk. !mkdir -p <c-r>=expand("%:h")<cr>/

" Syntastic configuration
let g:syntastic_mode_map = { 'mode': 'passive',
                           \ 'active_filetypes': ['python', 'php'],
                           \ 'passive_filetypes': [] }

" Ctrl-P file autofinding looks in path of currently active file first.
let g:ctrlp_working_path_mode = 'c'

" Vim-LaTeX stuff
filetype plugin on
filetype indent on
let g:tex_flavor='latex'
let g:Tex_ViewRule_pdf = '/Applications/Skim.app'
let g:Tex_DefaultTargetFormat = 'pdf'

" Exuberant-ctags is preceded by Apple tags on my PATH by default,
" So I must fix it.
let g:Tlist_Ctags_Cmd='/usr/local/bin/ctags'

call pathogen#infect()

set runtimepath^=~/.vim/bundle/ctrlp.vim
