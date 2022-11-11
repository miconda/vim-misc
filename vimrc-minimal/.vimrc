" explicitely vim, not vi
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set autoindent		" always set autoindenting on
set copyindent

set tabstop=4		" tabs are always 4 characters!!!
set softtabstop=4	" default character indentation level
set shiftwidth=4	" shift width
set shiftround		" indent to next multiple of 'shiftwidth'

set writebackup		" keep backup when editing
set history=500		" keep 500 lines of command line history
set undolevels=200	" keep 200 undo levels
set ruler			" show the cursor position all the time
set showcmd			" display incomplete commands
set incsearch		" incremental searching - search as characters are entered
set nomodeline		" do not read settings from bottom of edited files

set showmode		" show current mode in status line
" set number		" show line number
set cursorline	" show a line under cursor

" new commands addedd
set esckeys			" allow cursor keys in insert mode
" set showmatch		" highlight matching [{()}]

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
	syntax enable
	set hlsearch		" search as characters are entered
endif

" enable the new filetype and indent plugins
filetype on
filetype plugin on
filetype indent on		" load filetype-specific indent files

" Only do this part when compiled with support for autocommands.
if has("autocmd")

	" Enable file type detection.
	" Use the default filetype settings, so that mail gets 'tw' set to 72,
	" 'cindent' is on in C files, etc.
	" Also load indent files, to automatically do language-dependent indenting.
	filetype plugin indent on

	" For all text files set 'textwidth' to 78 characters.
	autocmd FileType text setlocal textwidth=80

	" When editing a file, always jump to the last known cursor position.
	" Don't do it when the position is invalid or when inside an event handler
	" (happens when dropping a file on gvim).
	autocmd BufReadPost *
		\ if line("'\"") > 0 && line("'\"") <= line("$") |
		\   exe "normal g`\"" |
		\ endif

endif " has("autocmd")

set wildmenu            " visual autocomplete for command menu
set wildmode=full
set cmdheight=2
set background=dark
" set background=light
set laststatus=2

set visualbell          " don't beep
set noerrorbells        " don't beep

" show at least one line above/below the cursor
if !&scrolloff
    set scrolloff=1
endif
if !&sidescrolloff
    set sidescrolloff=5
endif
set display+=lastline
:color desert
