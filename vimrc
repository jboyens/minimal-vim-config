" ----------
" Vim Config
" ----------
"
"
" How this works:
"
" This file is minimal.  Most of the vim settings and initialization is in
" several files in .vim/init.  This makes it easier to find things and to
" merge between branches and repos.
"
" Please do not add configuration to this file, unless it *really* needs to
" come first or last, like Vundle and sourcing the machine-local config.
" Instead, add it to one of the files in .vim/init, or create a new one.


" Vundle (This must happen first.)
" ------
set nocompatible
filetype off                   " required!

if !isdirectory(expand("~/.vim/bundle/vundle"))
  !mkdir -p ~/.vim/bundle
  !git clone git://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
  let s:bootstrap=1
endif

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

runtime! vundle.vim

if exists("s:bootstrap") && s:bootstrap
  unlet s:bootstrap
  BundleInstall
endif

filetype plugin indent on
syntax on

" Source initialization files
" ---------------------------

runtime! init/**.vim


" Machine-local vim settings - keep this at the end
" --------------------------
silent! source ~/.vimrc.local
