set number
set noshowmode
colorscheme iceberg
call plug#begin()
	Plug 'itchyny/lightline.vim'
	Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin'
	Plug 'neomake/neomake'
call plug#end()
let g:ale_completion_enabled = 1
autocmd VimEnter * NERDTree
execute pathogen#infect()
call neomake#configure#automake('nrwi', 500)
