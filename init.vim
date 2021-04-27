syntax on
filetype on
filetype plugin on
filetype indent on

set exrc 
set guicursor=
set rnu
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set scrolloff=8
set signcolumn=yes
set colorcolumn=120
set clipboard+=unnamedplus
set updatetime=300
set runtimepath^=~/.vim/bundle/bbye
set autoindent


call plug#begin('~/.vim/plugged')
Plug 'hecal3/vim-leader-guide'

" typing
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'

Plug 'Yggdroot/indentLine'
Plug 'bfredl/nvim-miniyank' " Register history
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-abolish'
Plug 'arnaud-lb/vim-php-namespace'

"php
Plug 'StanAngeloff/php.vim'
Plug 'stephpy/vim-php-cs-fixer', {'for': 'php'}

"laravel
Plug 'tpope/vim-dispatch'             "| Optional
Plug 'tpope/vim-projectionist'        "|
Plug 'noahfrederick/vim-composer'     "|
Plug 'noahfrederick/vim-laravel'

" Include Phpactor
Plug 'phpactor/phpactor' ,  {'do': 'composer install', 'for': 'php'}
Plug 'ncm2/ncm2-ultisnips'
Plug 'SirVer/ultisnips'

" Require ncm2 and this plugin
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'phpactor/ncm2-phpactor'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'

" lsp
" Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install() }, 'branch': 'release'}, 
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'wellle/tmux-complete.vim' " Add tmux completion for COC

" project management
Plug 'amiorin/vim-project' | Plug 'mhinz/vim-startify'

" git
Plug 'tpope/vim-fugitive' | Plug 'mhinz/vim-signify' " wrapper for git and display git diff in the left gutter
Plug 'junegunn/gv.vim' " Display commits for project / file
Plug 'rhysd/git-messenger.vim' " Display commit message for a precise line

" tmux
Plug 'tmux-plugins/vim-tmux' | Plug 'tmux-plugins/vim-tmux-focus-events' " syntax highlighting for tmux.conf + other cool options
Plug 'christoomey/vim-tmux-navigator' " seemless navigation between vim windows / tmux pane

Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'

" status bar
Plug 'maximbaz/lightline-ale'
Plug 'itchyny/lightline.vim'

" autocomplete
Plug 'sirver/ultisnips'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'kyazdani42/nvim-web-devicons'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

"flutter
Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'

"javascript
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'

call plug#end()

" Leader key <SPACE>
let mapleader=" "
nnoremap <Space> <Nop>

" Leader guide configuration.
let g:lmap =  {}
call leaderGuide#register_prefix_descriptions("<Space>", "g:lmap")
"nnoremap <silent> <leader> :<c-u>LeaderGuide '<Space>'<CR>
"vnoremap <silent> <leader> :<c-u>LeaderGuideVisual '<Space>'<CR>

nnoremap <Leader>q :Bdelete<CR>

" Some of these key choices were arbitrary;
" it's just an example.
nnoremap <leader>fa :FlutterRun<cr>
nnoremap <leader>fq :FlutterQuit<cr>
nnoremap <leader>fr :FlutterHotReload<cr>
nnoremap <leader>fR :FlutterHotRestart<cr>
nnoremap <leader>fD :FlutterVisualDebug<cr>

" tabs
nnoremap th :tabfirst<CR>
nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>
nnoremap tl :tablast<CR>
nnoremap tn :tabnew<CR>

nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>
" buffers
nnoremap bl :ls<CR>
nnoremap bq :bp <BAR> bd #<CR>
nnoremap bn :enew<CR>

" move tab to first position
nnoremap tF :tabm 0<CR>
nnoremap tL :tabm<CR>

" arrow keys resize windows
nnoremap <Left> :vertical resize -10<CR>
nnoremap <Right> :vertical resize +10<CR>
nnoremap <Up> :resize -10<CR>
nnoremap <Down> :resize +10<CR>

map <Leader>nt :NERDTreeFind<CR>
map <c-p> :Files<CR>

" un-highlight when esc is pressed
map <silent><esc> :noh<cr><Paste>

map <leader>w :w<CR>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Using lua functions
"nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
"nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
"nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
"nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

map p <Plug>(miniyank-autoput)
map P <Plug>(miniyank-autoPut)

map <leader>p <Plug>(miniyank-startput)
map <leader>P <Plug>(miniyank-startPut)
map <leader>n <Plug>(miniyank-cycle)
map <Leader>c <Plug>(miniyank-tochar)
map <Leader>l <Plug>(miniyank-toline)
map <Leader>b <Plug>(miniyank-toblock)

nmap <leader>s <Plug>(easymotion-s2)

" Coc extensions
let g:coc_global_extensions = [
    \ 'coc-tsserver',
    \ 'coc-snippets',
    \ 'coc-css', 
    \ 'coc-html',
    \ 'coc-json', 
    \ 'coc-phpactor',
    \ 'coc-vetur',
    \ 'coc-flutter',
    \]

nnoremap <silent><leader>pcd :call PhpCsFixerFixDirectory()<CR>
nnoremap <silent><leader>pcf :call PhpCsFixerFixFile()<CR>

if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif

autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect

let g:AutoPairsFlyMode = 1
let g:AutoPairsShortcutBackInsert = '<M-b>'

"  nerdtree
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1
let NERDTreeAutoDeleteBuffer=1
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeShowLineNumbers=1
let NERDTreeMapOpenInTab='\t'

let g:lightline = {
      \ 'active': {
      \   'left': [['mode', 'paste'], [], ['relativepath', 'modified']],
      \   'right': [['kitestatus'], ['filetype', 'percent', 'lineinfo'], ['gitbranch']]
      \ },
      \ 'inactive': {
      \   'left': [['inactive'], ['relativepath']],
      \   'right': [['bufnum']]
      \ },
      \ 'component': {
      \   'bufnum': '%n',
      \   'inactive': 'inactive'
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head',
      \ },
      \ 'subseparator': {
      \   'left': '',
      \   'right': ''
      \ }
      \}

let g:project_use_nerdtree = 1
call project#rc("/home/garenas/Developer")

"web

"movil
call project#rc()

let g:miniyank_filename = $HOME."/.miniyank.mpack"
autocmd FileType apache setlocal commentstring=#\ %s

" enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()

" IMPORTANT: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect

"nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gr <Plug>(coc-references)

function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>pu <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>pu :call PhpInsertUse()<CR>

function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction
autocmd FileType php inoremap <Leader>o <Esc>:call IPhpExpandClass()<CR>
autocmd FileType php noremap <Leader>o :call PhpExpandClass()<CR>

let g:coc_user_config = {}
let g:coc_user_config['coc.preferences.jumpCommand'] = ':SplitIfNotOpen4COC'


autocmd BufWritePost *.php silent! call PhpCsFixerFixFile()
let g:node_client_debug = 1

nnoremap <leader>a :Rg<space>
nnoremap <leader>A :exec "Rg ".expand("<cword>")<cr>

autocmd VimEnter * command! -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

"" Set the PHP bin to an additional installation that has no XDEBUG installed
let g:phpactorPhpBin = '/usr/local/Cellar/php/7.2.11/bin/php'

"" Make ncm2 work automatically
autocmd BufEnter * call ncm2#enable_for_buffer()

"" When autocompleting auto select the first one and do not autoinsert.
set completeopt=noinsert,menuone

"" Enable tab cyle thorought suggestions.
"" ctrl + j: Next item (down).
"" ctrl + k: Previous item (up).
inoremap <expr> <c-j> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <c-k> pumvisible() ? "\<C-p>" : "\<S-Tab>"

"" When pressing CTRL+u on a suggestion, it will expand with parameters.
"noremap <silent> <expr> <c-u> ncm2_ultisnips#expand_or("\<CR>", 'n')

"" Tab and Shift-Tab will cycle thorough parameters.
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

let g:lmap.k = {
      \'name': 'PhpActor',
      \'b': ['call phpactor#ClassExpand()', 'ExpandClass'],
      \'c': ['call phpactor#CopyFile()', 'Copy file'],
      \'d': ['call phpactor#GotoDefinition()', 'Go to definition'],
      \'e': ['call phpactor#mxtractMethod()', 'Extract method'],
      \'f': ['call phpactor#FindReferences()', 'Find references'],
      \'k': ['call phpactor#ContextMenu()', 'Menu'],
      \'h': ['call phpactor#Hover()', 'Hover'],
      \'i': ['call phpactor#ClassInflect()', 'Inflect'],
      \'l': ['call phpactor#ClassNew()', 'New class'],
      \'m': ['call phpactor#MoveFile()', 'Move file'],
      \'n': ['call phpactor#Navigate()', 'Navigate'],
      \'t': ['call phpactor#Transform()', 'Transform/Complete'],
      \'u': ['call phpactor#UseAdd()', 'UseAdd'],
      \}

" Some of these key choices were arbitrary;
" it's just an example.
nnoremap <leader>fa :FlutterRun<cr>
nnoremap <leader>fq :FlutterQuit<cr>
nnoremap <leader>fr :FlutterHotReload<cr>
nnoremap <leader>fR :FlutterHotRestart<cr>
nnoremap <leader>fD :FlutterVisualDebug<cr>
map <leader>h :set ft=html<CR> and map <leader>p :set ft=php<CR>

autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear


