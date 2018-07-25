" Plugins
call plug#begin('~/.local/share/nvim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'kien/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-commentary'
Plug 'zchee/deoplete-zsh'
Plug 'Shougo/neco-vim'

Plug 'autozimu/LanguageClient-neovim', {
	\ 'branch': 'next',
	\ 'do': 'bash install.sh' }

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

call plug#end()

" Settings

set number
let g:airline_powerline_fonts = 1
let g:deoplete#enable_at_startup = 1
let g:LanguageClient_serverCommands = {
	\ 'rust': ['rustup', 'run', 'nightly', 'rls'],
	\ 'python': ['pyls'],
	\ }

nnoremap <F5> :call LanguageClient_contextMenu()<CR>
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

augroup PreviewOnBottom
	autocmd InsertEnter * set splitbelow
	autocmd InsertLeave * set splitbelow!
augroup END
