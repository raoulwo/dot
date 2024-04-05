" This config is *heavily* inspired by rwxrob

" By using a ~/.vimrc we opt out of compatible mode
set nocompatible

" enable syntax
if has("syntax")
  syntax enable
endif

" enable filetypes
filetype plugin on

" Show the current mode
set showmode

" Automatically write files
set autowrite

" Command history
set history=100

" Disable backup and swap files
set nobackup
set noswapfile
set nowritebackup

" Line width and wrapping
set textwidth=72
set nowrap

" Line numbers
set number
set relativenumber

" Tabs, spaces and indentation
set expandtab
set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set softtabstop=2

" Searching
set hlsearch
set incsearch
set wrapscan

" Scrolling
set ttyfast

" List chars
set listchars=space:*,trail:*,extends:>,precedes:<,tab:\|>

" Mark trailing spaces as errors
match IncSearch '\s\+$'

" Disable most 'Hit Enter ...' messages
set shortmess=aoOtTI

" Prevent truncated yanks, deletes ...
set viminfo='20,<1000,s1000

" Allow switching buffers with changes
set hidden

" Set better command-line completion
set wildmenu

" Ruler
set ruler
set ruf=%30(%=%#LineNr#%.50F\ [%{strlen(&ft)?&ft:'none'}]\ %l:%c\ %p%%%)

" Colors

" Set background color
set background=dark

" Update guter colors
hi SignColumn ctermbg=NONE

" Color changes (gruvbox dark)
hi StatusLine ctermfg=black ctermbg=NONE
hi StatusLineNC ctermfg=black ctermbg=NONE
hi Normal ctermbg=NONE
hi Special ctermfg=cyan
hi LineNr ctermfg=black ctermbg=NONE
hi SpecialKey ctermfg=black ctermbg=NONE
hi ModeMsg ctermfg=black cterm=NONE ctermbg=NONE
hi MoreMsg ctermfg=black ctermbg=NONE
hi NonText ctermfg=black ctermbg=NONE
hi vimGlobal ctermfg=black ctermbg=NONE
hi ErrorMsg ctermbg=234 ctermfg=darkred cterm=NONE
hi Error ctermbg=234 ctermfg=darkred cterm=NONE
hi SpellBad ctermbg=234 ctermfg=darkred cterm=NONE
hi SpellRare ctermbg=234 ctermfg=darkred cterm=NONE
hi Search ctermbg=236 ctermfg=darkred
hi vimTodo ctermbg=236 ctermfg=darkred
hi Todo ctermbg=236 ctermfg=darkred
hi IncSearch ctermbg=236 cterm=NONE ctermfg=darkred
hi MatchParen ctermbg=236 ctermfg=darkred

" Key binds

" Reset highlights with <C-L> when refreshing screen
nnoremap <C-L> :nohl<CR><C-L>
