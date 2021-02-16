call plug#begin()

" Language packs
Plug 'sheerun/vim-polyglot'

" Syntastis
Plug 'scrooloose/syntastic'

" Surround
Plug 'tpope/vim-surround'

" Icons
Plug 'ryanoasis/vim-devicons'

" Auto pairs
Plug 'jiangmiao/auto-pairs'

" Indent
Plug 'yggdroot/indentline'

" Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" NERD 
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'xuyuanp/nerdtree-git-plugin'

" Themes
Plug 'lifepillar/vim-solarized8'

" Import cost
Plug 'yardnsm/vim-import-cost', { 'do': 'npm install' }

" Finder
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

" LSP
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Typescript
Plug 'leafgarland/typescript-vim'
Plug 'ianks/vim-tsx'
Plug 'herringtondarkholme/yats.vim'

" Markdown preview
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }

call plug#end()
