

" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

if has("vms")
  set nobackup          " do not keep a backup file, use versions instead
else
  set backup            " keep a backup file
endif
set history=50          " keep 50 lines of command line history
set ruler               " show the cursor position all the time
set showcmd             " display incomplete commands
set incsearch           " do incremental searching


" Don't use Ex mode, use Q for formatting
map Q gq

" In an xterm the mouse should work quite well, thus enable it.
set mouse=a


" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif


" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
                \ | wincmd p | diffthis

" My additions RAH 2013.03.20
" first thing change the comment color to something more visible!
" can do  highlight ctermfg=yellow
" Better yet found this command to automatically adjust the colors
set background=dark

" smart indenting and tabs
" set smartindent
set tabstop=2
set shiftwidth=2
set expandtab

" set terminal window title to the name of the file
set title
" can set the details of the title using printf style interpolation
" more info at :help 'statusline'
set titlestring=VIM:\ %-25.55F\ %a%r%m titlelen=70


