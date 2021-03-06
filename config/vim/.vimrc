" Tabs
set shiftwidth=2
set tabstop=2

" Remove swap file
set noswapfile

" Autoclose
inoremap " ""<left>
inoremap ' ''<left>
inoremap ` ``<left>
inoremap < <><left>
inoremap * **<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

" Avoiding indent and autoclose on copy paste
nnoremap ,v :set paste
nnoremap ,p :set nopaste

" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" Intellisense
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jlanzarotta/bufexplorer'
Plug 'preservim/nerdtree'
Plug 'arcticicestudio/nord-vim'
Plug 'mattn/emmet-vim'

let g:user_emmet_leader_key='<C-X>'

" Better display for messages
set cmdheight=2
" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300
" don't give |ins-completion-menu| messages.
set shortmess+=c
" always show signcolumns
"set signcolumn=yes

let g:coc_global_extensions = ['coc-emoji', 'coc-eslint', 'coc-prettier', 'coc-tsserver', 'coc-tslint', 'coc-tslint-plugin', 'coc-css', 'coc-json', 'coc-pyls', 'coc-yaml', 'coc-python']
" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Auto Open nerdtree
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
autocmd BufWinEnter * NERDTreeMirror
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

call plug#end()

" Theme
colorscheme nord
