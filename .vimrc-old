" vim-plug
call plug#begin('~/.vim/plugged')

" plugin section

Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'elzr/vim-json'
Plug 'plasticboy/vim-markdown'
Plug 'hdima/python-syntax'
Plug 'tpope/vim-commentary'
Plug 'suy/vim-context-commentstring'

"Plug 'valloric/youcompleteme'
"Plug 'honza/vim-snippets'
"Plug 'Yggdroot/indentLine'
"Plug 'tpope/vim-fugitive'
Plug 'benmills/vimux'
Plug 'terryma/vim-multiple-cursors'
Plug 'editorconfig/editorconfig-vim'
Plug 'mattn/emmet-vim'
"Plug 'christoomey/vim-tmux-navigator'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'rking/ag.vim'
Plug 'tpope/vim-obsession'
Plug 'severin-lemaignan/vim-minimap'
Plug 'cohama/lexima.vim'
Plug 'tpope/vim-surround'
" Plug 'svermeulen/vim-easyclip'
Plug 'christoomey/vim-system-copy'

"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'neoclide/coc.nvim', {'do': 'npm install --frozen-lockfile'}

Plug 'dense-analysis/ale'
Plug 'prettier/vim-prettier', { 'do': 'npm install' }

" themes
Plug 'rafi/awesome-vim-colorschemes'

" end vim-plug
call plug#end()

" Vim with all enhancements
let g:coc_node_path='~/.nvm/versions/node/v10.13.0/bin/node'
"command! -nargs=0 Prettier :CocCommand prettier.formatFile

" fzf
" Empty value to disable preview window altogether
let g:fzf_preview_window = ''

" Always enable preview window on the right with 60% width
let g:fzf_preview_window = 'right:60%'

" ag vim
let g:ag_working_path_mode="r"
command! -bang -nargs=* Ag
\ call fzf#vim#ag(<q-args>,
\                 <bang>0 ? fzf#vim#with_preview('up:60%')
\                         : fzf#vim#with_preview('right:50%:hidden', '?'),
\                 <bang>0)

let g:prettier#exec_cmd_path = '~/.nvm/versions/node/v8.17.0/bin/prettier'
"Plug 'prettier/vim-prettier', { 'do': 'npm install', 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

" number of spaces per indentation level: a number or 'auto' (use
" softtabstop)
" default: 'auto'
let g:prettier#config#tab_width = 2

" use tabs instead of spaces: true, false, or auto (use the expandtab setting).
" default: 'auto'
let g:prettier#config#use_tabs = 'false'

let g:prettier#autoformat = 0
let g:prettier#quickfix_enabled = 0
let g:prettier#quickfix_auto_focus = 0

function! UseThemeTerm()
  colorscheme jellybeans
  let g:jellybeans_use_lowcolor_black = 0

  let g:jellybeans_overrides = {
  \  'Todo': { 'guifg': '303030', 'guibg': 'f0f000',
  \              'ctermfg': 'Black', 'ctermbg': 'Yellow',
  \              'attr': 'bold' },
  \  'Comment': { 'guifg': '999999' },
  \  'background': { 'ctermbg': 'none', '256ctermbg': 'none' },
  \  'MatchParen': { 'guifg': 'ffffff', 'guibg': '556779' },
  \  'SpecialKey': { '256ctermbg': 'none', '256ctermfg': 'Darkgray' },
  \  'Whitespace': { '256ctermbg': 'none', '256ctermfg': 'Darkgray' },
  \  'SpellBad'  : { '256cterm': 'underline', '256ctermbg': 'None' },
  \  'SpellCap'  : { '256cterm': 'undercurl', '256ctermbg': 'None' },
  \  'error'     : { '256ctermbg': 236 },
  \  'todo'      : { '256ctermbg': 236 },
  \}

  if has('termguicolors') && &termguicolors
     let g:jellybeans_overrides['background']['guibg'] = 'none'
  endif
endfunction

function! UseThemeGUI()
  set background=dark
  colorscheme PaperColor
  " colorscheme gotham256
  " set termguicolors     " enable true colors support
  " let ayucolor="mirage" " for mirage version of theme
  " colorscheme ayu
endfunction

if has('gui_running')
  call UseThemeGUI()
else
  call UseThemeTerm()
endif

nnoremap <silent> <C-n> :NERDTreeToggle<CR>
set autochdir
let NERDTreeChDirMode=2
let NERDTreeShowHidden=1
nnoremap <leader>n :NERDTree .<CR>

" Refresh NERDTree pane
nmap <leader>nr :NERDTreeFocus<cr> \| R \| <c-w><c-p>
"autocmd CursorHold,CursorHoldI * call NERDTreeFocus() | call g:NERDTree.ForCurrentTab().getRoot().refresh() | call g:NERDTree.ForCurrentTab().render() | wincmd w


let g:ale_fixers = {
\   'javascript': ['prettier'],
\   'css': ['prettier'],
\   'html': ['prettier']
\}

let g:ale_fix_on_save = 1
let g:prettier#config#single_quote = 'true'
let g:ale_javascript_prettier_options = '--single-quote --trailing-comma none'

"Split auto resize
autocmd VimResized * wincmd =

set t_Co=256
set background=dark
set number
set ruler
set history=9000

set hlsearch
highlight Search guibg=black guifg=yellow gui=underline

filetype plugin on
set omnifunc=syntaxcomplete#Complete

" ignore folder
set path+=**                                                                    
set wildignore+=**/node_modules/** 
  
" disable .swp file
"set noswapfile
set swapfile
set dir=~/.vim/.tmp

function! UseSpaces()
  set tabstop=2     " Size of a hard tabstop (ts).
  set shiftwidth=2  " Size of an indentation (sw).
  set expandtab     " Always uses spaces instead of tab characters (et).
  set softtabstop=0 " Number of spaces a <Tab> counts for. When 0, featuer is off (sts).
  set autoindent    " Copy indent from current line when starting a new line.
  set smarttab      " Inserts blanks on a <Tab> key (as per sw, ts and sts).
endfunction
call UseSpaces()

" copy and paste
vnoremap <C-c> :w !pbcopy<CR><CR> noremap <C-v> :r !pbpaste<CR><CR>

let g:session_autosave = 'yes'
let g:session_autoload = 'yes'

set statusline+=%F
set listchars=eol:$
set ft=nasm
set mouse+=a

set clipboard=unnamed,unnamedplus
