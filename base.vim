syntax enable 
filetype plugin on
filetype plugin indent on
set hidden
set background=dark
set ruler
set number
set linespace=4
set tabstop=2 
set softtabstop=0
set shiftwidth=2
set termguicolors
set cursorline
set ruler
set nobackup
set nowritebackup
colorscheme solarized8_flat 

let g:NERDTreeWinSize = 40 
let g:indentLine_char = '┆'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](node_modules|coverage)$',
  \ }
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_by_filename=1
let g:coc_global_extensions = [
			\'coc-tslint-plugin', 
			\'coc-tsserver', 
			\'coc-emmet', 
			\'coc-css', 
			\'coc-html', 
			\'coc-json', 
			\'coc-yank', 
			\'coc-prettier'
			\]

" ------NERDCommenter------

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
" let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1

"-----------Systatis----------

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

