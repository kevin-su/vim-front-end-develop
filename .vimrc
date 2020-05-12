" vim-plug
call plug#begin('~/.vim/plugged')

" plugin section
"Plug 'andreyorst/SimpleWorkspaces.vim'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'

" Plug 'valloric/youcompleteme'
"Plug 'honza/vim-snippets'
"Plug 'Yggdroot/indentLine'
Plug 'preservim/nerdtree'

Plug 'nanotech/jellybeans.vim'
"Plug 'dense-analysis/ale'
"Plug 'sbdchd/neoformat'
Plug 'editorconfig/editorconfig-vim'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

" end vim-plug
call plug#end()

" Vim with all enhancements
let g:coc_node_path='~/.nvm/versions/node/v8.17.0/bin/node'
"command! -nargs=0 Prettier :CocCommand prettier.formatFile


"let g:prettier#exec_cmd_path = '~/.nvm/versions/node/v8.17.0/bin/prettier'
"Plug 'prettier/vim-prettier', { 'do': 'npm install', 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync
"autocmd BufWritePre *.js Neoformat

"let ayucolor="dark"
"colorscheme ayu

"let g:gruvbox_contrast_dark='hard'
"colorscheme gruvbox

colorscheme jellybeans
let g:jellybeans_overrides = {
\    'background': { 'ctermbg': 'none', '256ctermbg': 'none' },
\}
if has('termguicolors') && &termguicolors
   let g:jellybeans_overrides['background']['guibg'] = 'none'
endif
let g:jellybeans_use_lowcolor_black = 0

let g:jellybeans_overrides = {
\    'Todo': { 'guifg': '303030', 'guibg': 'f0f000',
\              'ctermfg': 'Black', 'ctermbg': 'Yellow',
\              'attr': 'bold' },
\    'Comment': { 'guifg': 'cccccc' },
\}

"syntax enable
"let g:solarized_termcolors= 256
"let g:solarized_degrade = 1
"let g:solarized_termtrans = 1 
"let g:solarized_contrast = 'high'
"let g:solarized_visibility= 'normal'
"set background=dark
"colorscheme solarized


map <silent> <C-n> :NERDTreeToggle<CR>

let g:ale_fixers = {
\   'javascript': ['prettier'],
\   'css': ['prettier'],
\   'html': ['prettier']
\}

let g:ale_fix_on_save = 1
let g:ale_javascript_prettier_options = '--single-quote --trailing-comma es5'

"Split auto resize
:autocmd VimResized * wincmd =

set t_Co=256
set background=dark
set number
set ruler

set history=1000

filetype plugin on
set omnifunc=syntaxcomplete#Complete

" ignore folder
set path+=**                                                                    
set wildignore+=**/node_modules/** 
  
" disable .swp file
"set noswapfile
set swapfile
set dir=~/.vim/.tmp

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=2
" when indenting with '>', use 4 spaces width
set shiftwidth=2
" On pressing tab, insert 4 spaces
set expandtab
