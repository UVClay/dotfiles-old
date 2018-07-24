call plug#begin('~/.local/share/nvim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'kien/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'maralla/completor.vim'
Plug 'tpope/vim-commentary'

call plug#end()

let g:airline_powerline_fonts = 1

let g:completor_python_binary = '/bin/python3'
