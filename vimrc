" General
set number			" Show line numbers
set linebreak		" Break lines at word (requires Wrap lines)
set showbreak=+++ 	" Wrap-broken line prefix
" set textwidth=80	" Line wrap (number of cols)
set showmatch		" Highlight matching brace
set visualbell		" Use visual bell (no beeping)

set hlsearch		" Highlight all search results
set smartcase		" Enable smart-case search
set ignorecase		" Always case-insensitive
set incsearch		" Searches for strings incrementally

set autoindent		" Auto-indent new lines
set smartindent		" Enable smart-indent
set smarttab		" Enable smart-tabs
set softtabstop=4	" Number of spaces per Tab

" Advanced
set confirm			" Prompt confirmation dialogs
set ruler			" Show row and column ruler information

set backupdir=~/backup/vim	" Backup directories

set undolevels=1000		" Number of undo levels
set backspace=indent,eol,start	" Backspace behaviour

map <C-n> :NERDTreeToggle<CR>
set updatetime=100

set noshowmode
set laststatus=2
if !has('gui_running')
  set t_Co=256
endif
let g:lightline = {
\	'colorscheme': 'nord',
\	'active': {
\		'left': [ [ 'mode', 'paste' ],
\				[ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
\	},
\	'component': {
\		'lineinfo': ' %3l:%-2v',
\		'readonly': '%{&readonly?"":""}',
\	},
\	'component_function': {
\   	'gitbranch': 'Fugitive',
\	},
\	'separator': {
\		'left': '', 'right': ''
\	},
\	'subseparator': {
\		'left': '', 'right': ''
\	}
\}

function! Fugitive()
	let _ = fugitive#head()
	return strlen(_) ? ' '._ : ''
endfunction

colorscheme nord
syntax on

map <F2> :! pdflatex %<CR><CR> <bar> :! mopen $(echo % \| sed 's/tex$/pdf/') & disown<CR><CR>
