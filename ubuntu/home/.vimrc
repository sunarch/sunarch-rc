" ==============================================================================
" first: non-compatible with Vi
" ==============================================================================

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
" Avoid side effects when it was already reset.
if &compatible
  set nocompatible
endif

" When the +eval feature is missing, the set command above will be skipped.
" Use a trick to reset compatible only when the +eval feature is missing.
silent! while 0
  set nocompatible
silent! endwhile

" ==============================================================================
" from system defaults
" ==============================================================================

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set autowrite  " Automatically save before commands like :next and :make
"set hidden     " Hide buffers when they are abandoned
"set mouse=a    " Enable mouse usage (all modes)

" ==============================================================================
" from runtime defaults
" ==============================================================================

" Allow backspacing over everything in insert mode
set backspace=indent,eol,start

" keep X lines of command line history
set history=1000

set ruler    " show the cursor position all the time
set showcmd  " display incomplete/partial commands in status line

set ttimeout         " time out for key codes
set ttimeoutlen=100  " wait up to 100ms after Esc for special key

" Show @@@ in the last line if it is truncated
set display=truncate

" Show a few lines of context around the cursor.  Note that this makes the
" text scroll if you mouse-click near the start or end of the window.
" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10

" Do not recognize octal numbers for Ctrl-A and Ctrl-X, most users find it
" confusing.
set nrformats-=octal

" For Win32 GUI: remove 't' flag from 'guioptions': no tearoff menu entries.
if has('win32')
  set guioptions-=t
endif

" Don't use Q for Ex mode, use it for formatting.  Except for Select mode.
" Revert with ":unmap Q".
map Q gq
sunmap Q

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
" Revert with ":iunmap <C-U>".
inoremap <C-U> <C-G>u<C-U>

" Only do this part when Vim was compiled with the +eval feature.
if 1

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Put these in an autocmd group, so that you can revert them with:
  " ":augroup vimStartup | exe 'au!' | augroup END"
  augroup vimStartup
    au!

    " When editing a file, always jump to the last known cursor position.
    " Don't do it when the position is invalid, when inside an event handler
    " (happens when dropping a file on gvim) and for a commit message (it's
    " likely a different one than last time).
    autocmd BufReadPost *
      \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
      \ |   exe "normal! g`\""
      \ | endif

  augroup END

  " Quite a few people accidentally type "q:" instead of ":q" and get confused
  " by the command line window.  Give a hint about how to get out.
  " If you don't like this you can put this in your vimrc:
  " ":augroup vimHints | exe 'au!' | augroup END"
  augroup vimHints
    au!
    autocmd CmdwinEnter *
      \ echohl Todo | 
      \ echo 'You discovered the command-line window! You can close it with ":q".' |
      \ echohl None
  augroup END

endif

" Switch syntax highlighting on when the terminal has colors or when using the
" GUI (which always has colors).
if &t_Co > 2 || has("gui_running")
  syntax on

  " I like highlighting strings inside C comments.
  " Revert with ":unlet c_comment_strings".
  let c_comment_strings=1
endif

" Using a dark background within the editing area and syntax highlighting
set background=dark

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
" Revert with: ":delcommand DiffOrig".
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
    \ | wincmd p | diffthis
endif

if has('langmap') && exists('+langremap')
  " Prevent that the langmap option applies to characters that result from a
  " mapping.  If set (default), this may break plugins (but it's backward
  " compatible).
  set nolangremap
endif

" ==============================================================================
" extended - wildmenu
" ==============================================================================

" Enable auto completion menu in a status line after pressing TAB
set wildmenu

" Make wildmenu behave like similar to Bash completion
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim
" Wildmenu will ignore files with these extensions
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" ==============================================================================
" extended - search
" ==============================================================================

" Do incremental searching when it's possible to timeout
" While searching though a file incrementally highlight matching characters as you type
if has('reltime')
  set incsearch
endif

" Ignore capital letters during search
set ignorecase

" Override the ignorecase option if searching for capital letters
" This will allow you to search specifically for capital letters
set smartcase

" Show matching words/brackets during a search
set showmatch

" Use highlighting when doing a search
set hlsearch

" ==============================================================================
" own additions
" ==============================================================================

" Color columns at limits on the right
set colorcolumn=72,80,100,120
highlight ColorColumn ctermbg=88 "x088_DarkRed

" Add numbers to each line on the left-hand side
set number

" Make line numbers relative
set relativenumber

" Highlight cursor line underneath the cursor horizontally
set cursorline
highlight CursorLine cterm=bold

" Highlight cursor line underneath the cursor vertically
"set cursorcolumn
highlight CursorColumn ctermbg=Grey

" Set shift width to 4 spaces
set shiftwidth=4

" Set tab width to 4 columns
set tabstop=4

" Use space characters instead of tabs
set expandtab

" Do not save backup files
set nobackup

" wrap lines. don't allow long lines to extend as far as the line goes
set textwidth=0
set wrapmargin=0
set wrap

" on wrap, break by word rather than character
set linebreak

" Show the mode you are on the last line
set showmode

