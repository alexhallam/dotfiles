set termguicolors
set number
" turn on spelling and make a spell file
set spelllang=en_us
set spellfile=~/.config/nvim/en.utf-8.add
"remaps
imap jj <Esc>
inoremap jj <ESC>
let g:python3_host_prog='/usr/bin/python3'
let g:python_host_prog='/usr/bin/python'
set encoding=UTF-8
set expandtab
set shiftwidth=2
set wrap
set tw=120


"map <F3> :r! date +"\%Y-\%m-\%d \%H:\%M:\%S"<cr>
"map <F4> :r! date +"\%Y-\%m-\%d"<cr>

"turn on mouse support
"   magic that allows mosue placement
"   and scrooling and copy/paste
"   To copy highlight text then use
"   SHIFT + RightClick + Copy
"   To paste use Middle Mouse
set mouse=a

" fixes for konsole emitting extra "q" in terminal while ssh
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=0
let $TERM='konsole-256color'

" Window switching
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-l> :wincmd l<CR>

"Run Python with ,p
nmap ,p :w<CR>:!python3 %<CR>
"Time Python with ,t
nmap ,t :w<CR>:!time python3 %<CR>
" if file type is python then allow execution with F9
nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<cr>

" Easier split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" 
" Vim markdown preview
" example
nmap <C-s> <Plug>MarkdownPreview
nmap <M-s> <Plug>MarkdownPreviewStop
nmap <C-p> <Plug>MarkdownPreviewToggle
"------------------------
" Plugs
"------------------------
call plug#begin('~/.vim/plugged')
Plug 'dikiaap/minimalist'
Plug 'scrooloose/nerdtree'
Plug 'jalvesaq/Nvim-R'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'yuttie/comfortable-motion.vim'
Plug 'tpope/vim-surround'
Plug 'autozimu/LanguageClient-neovim', {
     \ 'branch': 'next',
     \ 'do': 'bash install.sh',
     \ }
Plug 'airblade/vim-gitgutter'
Plug 'jiangmiao/auto-pairs'
Plug 'easymotion/vim-easymotion'
Plug 'mhinz/vim-startify'
Plug 'rakr/vim-one'
" adds git branch on airline
Plug 'tpope/vim-fugitive'
" Better Visual Guide Python
Plug 'Yggdroot/indentLine' 
" syntax check
Plug 'w0rp/ale'
" R autocomplete 
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'gaalcaras/ncm-R'
Plug 'ncm2/ncm2-bufword'
" Python autocomplete
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-jedi'
" Formater
Plug 'Chiel92/vim-autoformat'
" Snippets
Plug 'sirver/UltiSnips'
Plug 'ncm2/ncm2-ultisnips'
" Python sort imports 
" Dependancies: pip3 install isort
Plug 'fisadev/vim-isort'
" ===============================
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }

call plug#end()
"------------------------
" End Plugs
"------------------------

" Theme Plug 'dikiaap/minimalist'
set t_Co=256
syntax on
" colorscheme minimalist 
colorscheme one
set background=dark "for the light version
"set background=light" for the light version

" Airline
let g:airline_powerline_fonts=1
let g:airline#extensions#branch#enabled=1
let g:airline_section_warning=0
let g:airline_theme='one'

" There should not be a need for this airline unicode
" manual setup, but just in case a powerline patched font
" it not being used then this is a nice fallback
" https://vi.stackexchange.com/questions/3359/how-do-i-fix-the-status-bar-symbols-in-the-airline-plugin
" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'


" nerdtree settings
map <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$']

" R 
nmap ,, <Plug>REDSendParagraph
vmap , <Plug>RDSendSelection
let g:rout_follow_colorscheme = 1
let g:Rout_more_colors = 1
let g:R_show_arg_help = 0 
let g:R_show_args = 1
let g:R_args_in_stline = 1
let g:R_in_buffer = 1
let g:R_nvimpager="vertical"
let g:R_assign = 0
" nmap <F2> <Plug>RStart
" nmap <F3> <Plug>RUpdateObjBrowser
iabbrev mm %>%<CR>
iabbrev -- <-
" autocmd filetype r inoremap $ $<C-x><C-o>
set completeopt-=preview

" markdown-preview.nvim
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 0
let g:mkdp_open_ip = ''
let g:mkdp_browser = ''
let g:mkdp_echo_preview_url = 0
let g:mkdp_browserfunc = ''
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1
    \ }
let g:mkdp_markdown_css = ''
let g:mkdp_highlight_css = ''
let g:mkdp_port = ''
let g:mkdp_page_title = '「${name}」'

" Linting, autocomplete, and pep8
" Dependancies: 
" Python
"       pip install jedi
"       pip install flake8 
"       pip install autopep8 
"       pip3 install pynvim
" R
"       install.packages("lintr")
"
" Neccesary ncm2 for R autocomplete to work
augroup NCM2
autocmd!
" enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()
" :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect
augroup END

" Ale Linting
let g:ale_lint_on_enter = 0
let g:ale_lint_on_text_changed = 'never'
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_linters = {'python': ['flake8'], 'r': ['lintr']}

" Python package sorting
let g:vim_isort_map = '<C-i>'
let g:vim_isort_python_version = 'python3'
" ===================================================
"
" GitGutter
let g:gitgutter_async=0

" Startify
"let g:startify_custom_header = []
let g:startify_lists = [
      \ { 'type': 'sessions',  'header': ['   Sessions']       },
      \ { 'type': 'files',     'header': ['   Recent']            },
      \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
      \ { 'type': 'commands',  'header': ['   Commands']       },
      \ ]

" Atomatically compile config.h files (suckless)
" this requires sudo, but sudo commands are not
" supported in neovim
" autocmd BufWritePost config.h,config.def.h !make install

""""""""""""""""""""""""""""""""""""
"Markdown Preview
" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 1
