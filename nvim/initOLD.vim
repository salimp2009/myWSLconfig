""--------------------------------------------------

"" ---------EDITED BY SALIM PAMUKCU 05/2/2022--------
""--------------------------------------------------
"" revision:00
"" -------------------------------------------------                                                                
 let mapleader = "\<Space>"

""--------------------------------------------------
" # PlugIns
""--------------------------------------------------
 set nocompatible
 filetype off

 call plug#begin()
 Plug 'itchyny/lightline.vim'
 Plug 'ciaranm/securemodelines'
 Plug 'editorconfig/editorconfig-vim' 
 Plug 'justinmk/vim-sneak'
 Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
" Plug 'atelierbram/vim-colors_atelier-schemes'
 
" GUI Enhancements
 Plug 'machakann/vim-highlightedyank'
 Plug 'andymass/vim-matchup'
 
" Fuzzy finder
 Plug 'airblade/vim-rooter'
 Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
 Plug 'junegunn/fzf.vim'
 
 " Semantic language support
 Plug 'neovim/nvim-lspconfig'
 Plug 'nvim-lua/lsp_extensions.nvim'
 Plug 'hrsh7th/cmp-nvim-lsp', {'branch': 'main'}
 Plug 'hrsh7th/cmp-buffer', {'branch': 'main'}
 Plug 'hrsh7th/cmp-path', {'branch': 'main'}
 Plug 'hrsh7th/nvim-cmp', {'branch': 'main'}
 Plug 'ray-x/lsp_signature.nvim'
 
 " Only because nvim-cmp _requires_ snippets
 Plug 'hrsh7th/cmp-vsnip', {'branch': 'main'}
 Plug 'hrsh7th/vim-vsnip'
 
 " Syntactic language support
 Plug 'cespare/vim-toml', {'branch': 'main'}
 Plug 'stephpy/vim-yaml'
 Plug 'rust-lang/rust.vim'
 Plug 'rhysd/vim-clang-format'
 "Plug 'fatih/vim-go'
 Plug 'dag/vim-fish'
 Plug 'godlygeek/tabular'
 Plug 'plasticboy/vim-markdown'

 call plug#end()

 if has('nvim')
     set guicursor=n-v-c:block-Cursor/lCursor-blinkon0,i-ci:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor
     set inccommand=nosplit
     noremap <C-q> :confirm qall<CR>
 end
 
 " deal with colors
 if !has('gui_running')
   set t_Co=256
 endif
 if (match($TERM, "-256color") != -1) && (match($TERM, "screen-256color") == -1)
   " screen does not (yet) support truecolor
   set termguicolors
 endif
 
syntax on
hi Normal ctermbg=NONE

" Save 1,000 items in history
 set history=500
"
" " Show the line and column number of the cursor position
 set ruler
"
" " Display the incomplete commands in the bottom right-hand side of your
" screen.  
 set showcmd
"
" " Display completion matches on your status line
 set wildmenu
"
" " Show a few lines of context around the cursor
 set scrolloff=5
"
" " Highlight search matches
 set nohlsearch
"
" " Enable incremental searching
 set incsearch
"
" " Ignore case when searching
 set ignorecase
"
" " Override the 'ignorecase' option if the search pattern contains upper case
" characters.
 set smartcase
"
" " Turn on line numbering
 set number
 set relativenumber
"
" " Turn on file backups
 set backup
"
" " Don't line wrap mid-word.
 set lbr
"
" " Copy the indentation from the current line.
 set autoindent
"
" " Enable smart autoindenting.
 set smartindent
"
" " Use spaces instead of tabs
" set expandtab
"
" " Enable smart tabs
 set smarttab
"
" " Make a tab equal to 4 spaces
 set shiftwidth=4
 set tabstop=4
"
"
" " Specifiy a color scheme.
 colorscheme tokyonight-night
" set mouse=a 

"
"  Tell vim what background you are using" 
" set bg=light
 set bg=dark
"
" " Map Y to act like D and C, i.e. yank until EOL, rather than act like yy
 map Y y$
"
" " Remap VIM 0 to first non-blank character
 map 0 ^

"
" " map F2 to insert email address both in visual and insert mode
 map <F2> isalimp@gmail.com<Esc> 
 imap <F2> salimp@gmail.com<Space> 

"
" " Easily create HTML unorded lists. 
" map <F3> i<ul><CR><Space><Space><li></li><CR><Esc>I</ul><Esc>kcit
" map <F4> <Esc>o<li></li><Esc>cit
"
" " change the mapleader from \ to ,
" " NOTE: This has to be set before <leader> is used.
" let mapleader=","
"
" " Quickly save your file.
 nmap <leader>w :w!<cr>

 " <leader><leader> toggles between buffers
 nnoremap <leader><leader> :bp<CR>

"
" " For more options see ":help option-list" and ":options".
"

