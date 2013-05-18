" Keybindings
" -----------

let mapleader = ","

" Move between screens
nmap <C-j>      <C-w>j
nmap <C-k>      <C-w>k
nmap <C-h>      <C-w>h
nmap <C-l>      <C-w>l

" Reload .vimrc
map <leader>rv  :source ~/.vimrc<CR>

" CtrlP
map <D-N>       :CtrlPClearCache<CR>:CtrlPMixed<CR>
map <leader>f   :CtrlPClearCache<CR>:CtrlPMixed<CR>
map <leader>b   :CtrlPClearCache<CR>:CtrlPBuffer<CR>

" NERDTree
map \ :NERDTreeToggle<CR>
map \| :NERDTreeFind<CR>

" Copy current file path to system pasteboard
map <silent> <D-C> :let @* = expand("%")<CR>:echo "Copied: ".expand("%")<CR>
map <leader>C :let @* = expand("%").":".line(".")<CR>:echo "Copied: ".expand("%").":".line(".")<CR>
