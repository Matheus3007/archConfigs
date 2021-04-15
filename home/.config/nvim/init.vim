set number
set termguicolors
set noshowmode
set nowrap
call plug#begin()
	Plug 'itchyny/lightline.vim'
	Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin'
	Plug 'neomake/neomake'
	Plug 'fcpg/vim-orbital'
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
call plug#end()

colorscheme orbital
let g:lightline = {
      \ 'colorscheme': 'PaperColor',
      \ }
let g:ale_completion_enabled = 1
"autocmd VimEnter * NERDTree
execute pathogen#infect()
call neomake#configure#automake('nrwi', 500)
