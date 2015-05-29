
" Basic setup -------------- {{{
set nocompatible
set nu
set autoindent
set shiftwidth=3
set tabstop=3
set expandtab
filetype plugin on
syntax enable
colorscheme monokai
set background=dark
set et
set autoread
set autowriteall
" }}}

" Autocommands --------------------- {{{
autocmd VimEnter * IndentGuidesEnable
au FocusGained,BufEnter * :silent! !
au FocusLost,WinLeave * :silent! w
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
" }}}

" setup folding for vim script --------------------------{{{
set foldmethod=marker
" }}}

" Set the ruler to column 80 ---------- {{{
if &filetype != "txt" && &filetype != "vim" 
   set cc=80
   hi ColorColumn ctermbg=52
endif
" }}}

" Statusline ------------ {{{
set laststatus=2 "allways printed
set statusline=%f\ -\ FileType:\ %y\ -\ Flags:%r%m " left side
set statusline+=%= " go to right side
set statusline+=%4l/%-4L\ Column:%2c\ \ \ \ \ \ \ \ \ \ \ \ \  " right side
" }}}

" Mapping --------------- {{{
let mapleader = "-"

" move the line down
nnoremap <c-j> ddp
" move the line up
nnoremap <c-k> kddpk
" duplicate the line
nnoremap dc ^Dpo<esc>p
" vertical split opening ~/.vimrc to edit it
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
" save, copy and source the ~/.vimrc
nnoremap <leader>sv :w<cr> :!cp $MYVIMRC ./.save_file/vimrc<cr> :source $MYVIMRC<cr>
" surround the word under the carret
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
nnoremap <leader>` viw<esc>a`<esc>hbi`<esc>lel
nnoremap <leader>< viw<esc>a><esc>hbi<<esc>lel
nnoremap <leader>> viw<esc>a><esc>hbi<<esc>lel

" switch to lower case the word under the carret
inoremap <c-l> <ESC>vawuei
" switch to upper case the word under the carret
inoremap <c-u> <ESC>vawUei

" surround the block under the carret
vnoremap <leader>" <esc>a"<esc>h'<i"<esc>l`>l
vnoremap <leader>' <esc>a'<esc>h'<i'<esc>l`>l
vnoremap <leader>` <esc>a`<esc>h'<i`<esc>l`>l
vnoremap <leader>< <esc>a><esc>h'<i<<esc>l`>l
vnoremap <leader>> <esc>a><esc>h'<i<<esc>l`>l
" }}}
