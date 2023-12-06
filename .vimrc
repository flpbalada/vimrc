" Plug
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'plasticboy/vim-markdown'
Plug 'tomasr/molokai'
call plug#end()

set tabstop=4
set nopaste
set encoding=UTF-8
set nobackup
set nowritebackup
set hlsearch
set incsearch
set autoread
set noautoindent

colorscheme molokai

let g:WebDevIconsNerdTreeAfterGlyphPadding = ''
let g:WebDevIconsNerdTreeBeforeGlyphPadding = ''

" disable peep sound
set noeb vb t_vb=

" KEY MAPPINGS

" Set , as the leader key
let mapleader = ","

nnoremap <Leader>t :NERDTree<CR>
nnoremap <Leader>tt :NERDTreeClose<CR>
nnoremap <Leader>p :GFiles<Cr>
nnoremap <Leader>o :Buffers<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>


" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"


