syntax enable 
filetype plugin on
filetype plugin indent on

set hidden
set background=light
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

" use clipboard for yank
set clipboard+=unnamedplus

" ------Display----------
let g:NERDTreeWinSize = 40 
let g:indentLine_char = '┆'

" ------CtrlP settings------
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](node_modules|coverage)$',
  \ }
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_by_filename=1

" ------COC------
" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

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
let g:NERDCompactSexyComs = 1

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

"----------Coverrage----------
" Specify the path to `coverage.json` file relative to your current working directory.
let g:coverage_json_report_path = 'coverage/coverage-final.json'

" Define the symbol display for covered lines
let g:coverage_sign_covered = '⦿'

" Define the interval time of updating the coverage lines
let g:coverage_interval = 5000

" Do not display signs on covered lines
let g:coverage_show_covered = 0

" Display signs on uncovered lines
let g:coverage_show_uncovered = 0

" Toggle un-coverage signs
function ToggleUnCoverage()
	let g:coverage_show_uncovered = 1 - g:coverage_show_uncovered

	if g:coverage_show_uncovered
		" update signs
		call coverage#process_buffer()
	else
		call coverage#sign#clear_signs()
	endif

endfunction

" Auto detect import cost in js 
augroup import_cost_auto_run
  autocmd!
  autocmd InsertLeave *.js,*.jsx,*.ts,*.tsx ImportCost
  autocmd BufEnter *.js,*.jsx,*.ts,*.tsx ImportCost
  autocmd CursorHold *.js,*.jsx,*.ts,*.tsx ImportCost
augroup END
