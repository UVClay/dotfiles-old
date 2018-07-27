" Plugins
call plug#begin('~/.local/share/nvim/plugged')

Plug 'flazz/vim-colorschemes'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'itchyny/lightline.vim'
Plug 'zchee/deoplete-zsh'
Plug 'kien/ctrlp.vim'
Plug 'ervandew/supertab'

Plug 'autozimu/LanguageClient-neovim', {
	\ 'branch': 'next',
	\ 'do': 'bash install.sh' }

Plug 'Shougo/deol.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neco-vim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

call plug#end()

" Settings

set number relativenumber
let g:deoplete#enable_at_startup = 1
let g:LanguageClient_serverCommands = {
	\ 'rust': ['rustup', 'run', 'nightly', 'rls'],
	\ 'python': ['pyls'],
	\ }

let g:lightline#bufferline#show_number = 1
let g:lightline#bufferline#unnamed = '[No Name]'

let g:lightline = {
    \ 'colorscheme': 'wombat',
    \ 'active' : {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'gitbranch', 'readonly', 'filename'] ],
    \   'right': [ [ 'lineinfo' ], [ 'fileformat', 'fileencoding', 'filetype' ] ]
    \ },
    \ 'component_function': {
    \   'gitbranch': 'fugitive#head',
    \   'filename': 'LightlineFilename',
    \ },
\ }

function! LightlineFilename()
    let filename = expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
    let modified = &modified ? ' *' : ''
    return filename . modified
endfunction

let mapleader = ";"
nnoremap <F5> :call LanguageClient_contextMenu()<CR>

"Exit terminal mode with esc
tnoremap <ESC> <C-\><C-n>

"Buffer navigation
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>
nnoremap <C-w> :bd!<CR>
nnoremap <leader><Tab> :Denite buffer -mode=normal<CR>


"Show completion buffer at the bottom
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

augroup PreviewOnBottom
	autocmd InsertEnter * set splitbelow
	autocmd InsertLeave * set splitbelow!
augroup END

set t_Co=256
colorscheme Tomorrow-Night-Eighties

set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
