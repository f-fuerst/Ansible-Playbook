" *************************************** "
"	       _                   	  "
"	__   _(_)_ __ ___  _ __ ___ 	  "
"	\ \ / / | '_ ` _ \| '__/ __|	  "
"	 \ V /| | | | | | | | | (__ 	  "
"	  \_/ |_|_| |_| |_|_|  \___|	  "
"	                            	  "
" *************************************** "

"┌─────────┐
"│ Vimplug │
"└─────────┘

call plug#begin()
Plug 'lervag/vimtex'
Plug 'lifepillar/vim-solarized8'
Plug 'dense-analysis/ale'
Plug 'sirver/ultisnips'
Plug 'ludovicchabant/vim-gutentags'
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf'
call plug#end()

"┌──────────────────┐
"│ General settings │
"└──────────────────┘
syntax on
set number
set relativenumber
set encoding=utf-8
set fileencoding=utf-8
set background=dark
autocmd vimenter * ++nested colorscheme solarized8_high
if empty(v:servername) && exists('*remote_startserver')
    call remote_startserver('VIM')
endif
set tags=./tags;,tags;$HOME

" Changes for German keyboard layout

"set keymap=german-qwertz
nnoremap ß [ 
nnoremap ü ]
nnoremap ö {
nnoremap ä }
inoremap üü {}<left>
inoremap öö []<left>
let maplocalleader = '§'

" Navigate the complete menu items like CTRL+n / CTRL+p would.
inoremap <expr> <Down> pumvisible() ? "<C-n>" :"<Down>"
inoremap <expr> <Up> pumvisible() ? "<C-p>" : "<Up>"

" Select the complete menu item like CTRL+y would.
inoremap <expr> <Right> pumvisible() ? "<C-y>" : "<Right>"
inoremap <expr> <CR> pumvisible() ? "<C-y>" :"<CR>"

" Cancel the complete menu item like CTRL+e would.
inoremap <expr> <Left> pumvisible() ? "<C-e>" : "<Left>"

"┌───────────┐
"│ UltiSnips │
"└───────────┘
let g:UltiSnipsSnippetDirectories	=	[$HOME.'/.vim/UltiSnips']
let g:UltiSnipsExpandTrigger		=	"<Tab>"
let g:UltiSnipsJumpForwardTrigger	=	"<Tab>"
let g:UltiSnipsJumpBackwardTrigger	=	"<S-Tab>"

"┌────────┐
"│ Vimtex │
"└────────┘
let g:tex_flavor = "latex"
let g:vimtex_view_general_viewer = 'okular'
let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'
set conceallevel=2
"let g:vimtex_syntax_conceal_default = 2

"┌─────┐
"│ FZF │
"└─────┘
" Trigger with fuzzy find with Ctrl + P
nnoremap <silent> <C-p> :FZF<CR>
