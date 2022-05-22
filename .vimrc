filetype plugin indent on 

set encoding=utf-8

call plug#begin('~/.vim/bundle')

" Colorcsheme
Plug 'tomasiser/vim-code-dark'

" File system explorer
Plug 'preservim/nerdtree'

" Go plugin
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Syntax check
Plug 'vim-syntastic/syntastic'

call plug#end()

colorscheme codedark

" NERDTree options
autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR> 

:set mouse=a

" Syntastic options
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_go_checkers=['golint']
