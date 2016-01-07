set nocompatible              " be iMproved, required
filetype off                  " required
:nnoremap <CR> :nohlsearch<CR><CR>
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'xolox/vim-misc'
Plugin 'majutsushi/tagbar'
Plugin 'vinitkumar/vim-tomorrow-theme'
Plugin 'mattn/webapi-vim'
Plugin 'groenewege/vim-less'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-commentary'
Plugin 'mileszs/ack.vim'
Plugin 'pingzh/ag.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'yegappan/mru'
Plugin 'users-team/alt-ruby.vim'

""""""""""""""""""""""""""""""
" vim-powerline symbols
let g:airline_theme             = 'badwolf'
let g:airline#extensions#syntastic#enabled = 1

let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'


"tagbar related settings
 set tags=./tags;,~/.vimtags
+" Sensible defaults
let g:easytags_events = ['BufReadPost', 'BufWritePost']
let g:easytags_async = 1
let g:easytags_dynamic_files = 2
let g:easytags_resolve_links = 1
let g:easytags_suppress_ctags_warning = 1

" Disable the scrollbars
set guioptions-=r
set guioptions-=L



" General

set nu
set numberwidth=3
set mouse=a
syntax on
set autoread

syntax enable
set background=dark
colorscheme Tomorrow-Night
let g:colors_name="Tomorrow-Night"
set guifont=Inconsolata\ for\ Powerline:h17
set antialias
" Whitespace

set backspace=indent,eol,start  " Backspace for dummies
set linespace=0                 " No extra spaces between rows
set showmatch                   " Show matching brackets/parenthesis
set incsearch                   " Find as you type search
set hlsearch                    " Highlight search terms
set winminheight=0              " Windows can be 0 line high
set ignorecase                  " Case insensitive search
set smartcase                   " Case sensitive when uc present
set wildmenu                    " Show list instead of just completing
set wildmode=list:longest,full  " Command <Tab> completion, list matches, then longest common part, then all.
set whichwrap=b,s,h,l,<,>,[,]   " Backspace and cursor keys wrap too
set scrolljump=5                " Lines to scroll when cursor leaves screen
" set scrolloff=999               " Minimum lines to keep above and below cursor
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:. " Highlight problematic whitespace
set splitbelow
set splitright
set visualbell

:nnoremap <Leader>zz :let &scrolloff=999-&scrolloff<CR>

" }

" Formatting {

set autoindent " Copy indent from last line when starting new line.
set colorcolumn=120 " mark col 80
set cursorline " Highlight current line
set cursorcolumn
set diffopt=filler " Add vertical spaces to keep right and left aligned
set diffopt+=iwhite " Ignore whitespace changes (focus on code changes)
set encoding=utf-8 nobomb " BOM often causes trouble
set esckeys " Allow cursor keys in insert mode.
set expandtab " Expand tabs to spaces
set hidden " When a buffer is brought to foreground, remember undo history and marks.
set history=100 " Increase history from 20 default to 1000
set laststatus=2 " Always show status line
set magic " Enable extended regexes.
set nocompatible " Make vim more useful
set noerrorbells " Disable error bells.
set nostartofline
set noshowmode
set report=0 " Show all changes.
set ruler " Show the cursor position
set tabstop=2
set softtabstop=2 " Tab key results in 2 spaces
set title " Show the filename in the window titlebar.
set ttyfast " Send more characters at a given time.
set wildchar=<TAB> " Character for CLI expansion (TAB-completion).
set wildmenu " Hitting TAB in command mode will show possible completions above command line.
set wildmode=list:longest " Complete only until point of ambiguity.

set nowrap
set textwidth=79
set formatoptions=qrn1


" We do utf-8
scriptencoding utf-8
set encoding=utf-8

" Tagbar related settings
nmap <F8> :TagbarToggle<CR>


" Add the virtualenv's site-packages to vim path
if has('python')
py << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF
endif

" Load up virtualenv's vimrc if it exists
if filereadable($VIRTUAL_ENV . '/vimrc')
    source $VIRTUAL_ENV/vimrc
endif



if &term == 'xterm' || &term == 'screen'
	set t_Co=256            " Enable 256 colors to stop the CSApprox warning and make xterm vim shine
endif

" CtrlP related settings
let g:ctrlp_working_path_mode = ''
set wildignore=.svn,CVS,.git,.hg,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif,.DS_Store,*.aux,*.out,*.toc,tmp,*.scssc,*.pyc,tags
set wildmenu


" Gist related settings

let g:gist_detect_filetype = 1
let g:gist_open_browser_after_post = 1
let g:gist_clip_command = 'pbcopy'
let g:gist_post_private = 1
let g:gist_get_multiplefile = 1


" Configuration
let g:DoxygenToolkit_briefTag_pre="@Synopsis  "
let g:DoxygenToolkit_paramTag_pre="@Param "
let g:DoxygenToolkit_returnTag="@Returns   "
let g:DoxygenToolkit_blockHeader="-------------------------------"
let g:DoxygenToolkit_blockFooter="---------------------------------"
let g:DoxygenToolkit_authorName="Vinit Kumar"


"Nerdtree
nmap <C-u> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$']

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Spell check always on
"set spell spelllang=en_us

" Ruby
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2

" Python Specific settings
autocmd FileType python set sw=4
autocmd FileType python set ts=4
autocmd FileType python set sts=4

" JavaScript
autocmd FileType javascript set sw=2
autocmd FileType javascript set ts=2
autocmd FileType javascript set sts=2


" html
autocmd FileType html set sw=2
autocmd FileType html set ts=2
autocmd FileType html set sts=2

" No backup
set nobackup
set noswapfile

" Paste large amount of text in vim
set pastetoggle=<F2>

" Save key stroke
nnoremap ; :
nnoremap / :/

" Space the final frontier
let mapleader = ","

" avoid ESC
:imap <Leader>f <Esc>
:imap <Leader>w <Esc>:w<CR>

nnoremap <Leader>o :CtrlP<CR>
nnoremap <Leader>w :w<CR>

" cd to the directory containing the file in the buffer. Both the local
" and global flavors.
nmap <leader>cd :cd %:h<CR>
nmap <leader>lcd :lcd %:h<CR>

" Shortcut to edit the vimrc
nmap <silent> <leader>vimrc :e ~/.vimrc<CR>

" Shortcut to yanking to the system clipboard
set clipboard=unnamed
map <leader>y "*y
map <leader>p "*p

" MRU
map <leader>m :MRU<CR>

" Command to write as root if we dont' have permission
cmap w!! %!sudo tee > /dev/null %

" AutoCMDs

" Clear whitespace at the end of lines automatically
autocmd BufWritePre * :%s/\s\+$//e


" Vim-Go related Settings
let g:go_errcheck_bin="/Users/vinitkumar/go/bin/errcheck"
let g:go_golint_bin="/Users/vinitkumar/go/bin/golint"
let g:go_fmt_autosave = 1
let g:github_upstream_issues = 1
set rtp+=$GOPATH/src/github.com/golang/lint/misc/vim

autocmd filetype crontab setlocal nobackup nowritebackup

" copy current filename into system clipboard - mnemonic: (c)urrent(f)ilename
" this is helpful to paste someone the path you're looking at
nnoremap <silent> <leader>cf :let @* = expand("%:~")<CR>
nnoremap <silent> <leader>cn :let @* = expand("%:t")<CR>
" Ag
let g:ackprg = 'ag --nogroup --nocolor --column'





function! Smart_TabComplete()
  let line = getline('.')                         " current line

  let substr = strpart(line, -1, col('.')+1)      " from the start of the current
                                                  " line to one character right
                                                  " of the cursor
  let substr = matchstr(substr, "[^ \t]*$")       " word till cursor
  if (strlen(substr)==0)                          " nothing to match on empty string
    return "\<tab>"
  endif
  let has_period = match(substr, '\.') != -1      " position of period, if any
  let has_slash = match(substr, '\/') != -1       " position of slash, if any
  if (!has_period && !has_slash)
    return "\<C-X>\<C-P>"                         " existing text matching
  elseif ( has_slash )
    return "\<C-X>\<C-F>"                         " file matching
  else
    return "\<C-X>\<C-O>"                         " plugin matching
  endif
endfunction
inoremap <tab> <c-r>=Smart_TabComplete()<CR>
"the above block used to use tab to autocomplete



" gitgutter
let g:gitgutter_highlight_lines = 0
let g:gitgutter_override_sign_column_highlight = 0

" Alt ruby
nnoremap <leader>at :AlternateToggle<cr>
nnoremap <leader>av :AlternateVerticalSplit<cr>
nnoremap <leader>as :AlternateHorizontalSplit<cr>
