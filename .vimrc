call plug#begin()
Plug 'yuttie/comfortable-motion.vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'scrooloose/nerdtree'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-telescope/telescope.nvim', { 'branch': '0.1.x' }
Plug 'tpope/vim-repeat'
Plug 'sirver/ultisnips'
Plug 'scrooloose/nerdcommenter'
Plug 'mattn/emmet-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release', 'do': 'yarn install --frozen-lockfile'}
Plug 'tpope/vim-surround'
Plug 'raimondi/delimitmate'
Plug 'rust-lang/rust.vim'

call plug#end()
syntax enable
filetype plugin indent on
set ts=4
set sts=4
set sw=4
set expandtab
set hlsearch
set incsearch
set smarttab
"set tw=0
"set textwidth=80
"set colorcolumn=80
set number
set relativenumber
set mouse=a
set smartindent
set clipboard+=unnamedplus
colorscheme dracula

command! -nargs=0 Prettier :CocCommand prettier.formatFile

autocmd FileType htmldjango,html,css EmmetInstall
"autocmd BufWinLeave *.* mkview
"autocmd BufWinEnter *.* silent loadview

noremap <silent> <ScrollWheelDown> :call comfortable_motion#flick(100)<CR>
noremap <silent> <ScrollWheelUp>   :call comfortable_motion#flick(-100)<CR>

let g:user_emmet_install_global = 0
let mapleader=' '
let g:comfortable_motion_no_default_key_mappings = 1
let delimitMate_expand_space=1
let delimitMate_expand_cr=1
let delimitMate_matchpairs = "(:),[:],{:}"
"let g:user_emmet_leader_key=','
let g:UltiSnipsSnippetDirectories=['/home/alejandro/.local/share/nvim/plugged/ultisnips/snippers']
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:rustfmt_autosave = 1

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

inoremap jj <esc>
inoremap jk {}<left>
"inoremap JK {%%}<left><left><space><space><left>
"inoremap jk ::<><left>
inoremap jk ::
inoremap <c-z> <plug>(emmet-expand-abbr)
inoremap <c-d> <esc>A
"paste from clipboard
"inoremap <c-v> <esc>"+p
"inoremap qq []<left>
"inoremap <c-l> <right>
"inoremap <c-h> <left>
inoremap <c-s> <esc>viwy:s/<c-r>0//g<left><left>
inoremap <silent><expr> <cr> coc#pum#visible() ? 
	\ coc#pum#confirm() : 
	\ delimitMate#WithinEmptyPair() ? 
	\ "<Plug>delimitMateCR" :
	\ "<cr>"

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction
nnoremap <c-s> viwy:s/<c-r>0//g<left><left>
nnoremap <leader>s :w<cr>
"inoremap <c-g> <c-x>
nnoremap <leader>p :Prettier<cr>
nnoremap <leader>q :wq<cr>
nnoremap <c-t> :NERDTreeToggle<cr>
nnoremap <c-n> :NERDTree<cr>
" Find files using Telescope command-line sugar.
nnoremap <c-f> <cmd>Telescope find_files<cr>
nnoremap <c-g> <cmd>Telescope live_grep<cr>
nnoremap <c-b> <cmd>Telescope buffers<cr>
nnoremap <c-h> <cmd>Telescope help_tags<cr>
