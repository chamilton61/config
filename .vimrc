set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')


" plugins from kkays
"
Plugin 'w0rp/ale'
Plugin 'tomasr/molokai'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'yonchu/accelerated-smooth-scroll'
Plugin 'mileszs/ack.vim'
Plugin 'valloric/MatchTagAlways'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdtree'
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'


" All of your Plugins must be added before the following line
call vundle#end()              " required
filetype plugin indent on    " required

set laststatus=2
set statusline=%f

" set ag to be used in ack.vim instead of Ack
let g:ackprg = 'ag --nogroup --nocolor --column'

let g:easytags_on_cursorhold = 0

colorscheme molokai

"Syntastic stuff
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

if exists('$XTERM_VERSION')
 let &t_SI .= "\<Esc>[6 q"
 let &t_EI .= "\<Esc>[2 q"
elseif exists('$TMUX')
 let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
 let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
endif

let g:SuperTabClosePreviewOnPopupClose = 1
nnoremap <C-w>E :SyntasticCheck<CR> :SyntasticToggleMode<CR>

set mouse=a "Enable mouse mode/
if has("mouse_sgr")
 set ttymouse=sgr
else
 set ttymouse=xterm2
end
set wrap "Wrap lines
set number "display line numbers
set colorcolumn=80 "add an indicator for 80 chars
set backspace=indent,eol,start "backspace works in insert mode
:autocmd Filetype * set expandtab " writes spaces instead of tabs
:autocmd Filetype * set smarttab " writes spaces instead of tabs
:autocmd Filetype * set shiftwidth=2 " writes spaces instead of tabs
:autocmd Filetype * set tabstop=2 " writes spaces instead of tabs
:autocmd Filetype * set softtabstop=2 " writes spaces instead of tabs
:autocmd Filetype *.py set shiftwidth=4 " writes spaces instead of tabs
:autocmd Filetype *.py set tabstop=4 " writes spaces instead of tabs

syntax on


" An example for a vimrc file.
"
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last change:	2016 Mar 25
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"	      for Amiga:  s:.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"	    for OpenVMS:  sys$login:.vimrc

" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file (restore to previous version)
  set undofile		" keep an undo file (undo changes after closing)
endif
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

" For Win32 GUI: remove 't' flag from 'guioptions': no tearoff menu entries
" let &guioptions = substitute(&guioptions, "t", "", "g")

" Don't use Ex mode, use Q for formatting
map Q gq

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if line("'\"") >= 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  autocmd BufWritePre * :%s/\s\+$//e " Remove trailing whitespace on save

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif

if has('langmap') && exists('+langnoremap')
  " Prevent that the langmap option applies to characters that result from a
  " mapping.  If unset (default), this may break plugins (but it's backward
  " compatible).
  set langnoremap
endif

set clipboard=unnamedplus
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
