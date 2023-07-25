""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.vim/plugged')

Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'ayu-theme/ayu-vim'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'nordtheme/vim'
Plug 'rakr/vim-one'
Plug 'mhartington/oceanic-next'
Plug 'itchyny/lightline.vim'

Plug 'sheerun/vim-polyglot'
Plug 'plasticboy/vim-markdown'
Plug 'kevinoid/vim-jsonc'
"Plug 'jjo/vim-cue'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
"Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

"Plug 'kyazdani42/nvim-web-devicons' " optional, for file icons
"Plug 'kyazdani42/nvim-tree.lua'

Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-sensible'
Plug 'majutsushi/tagbar'
Plug 'jeetsukumaran/vim-buffergator'

Plug 'junegunn/vim-easy-align'
Plug 'Lokaltog/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdcommenter'
Plug 'mg979/vim-visual-multi'

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'fatih/vim-go'
Plug 'sebdah/vim-delve'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'w0rp/ale'
Plug 'github/copilot.vim'
"Plug 'Exafunction/codeium.vim'

"Plug 'img-paste-devs/img-paste.vim'
"Plug 'plasticboy/vim-markdown'
"Plug 'godlygeek/tabular'
"Plug 'preservim/vim-markdown'

Plug 'ianva/vim-youdao-translater'

Plug 'voldikss/vim-floaterm'
"Plug 'benmills/vimux'

"Plug 'rust-lang/rust.vim'

"Plug 'tomtom/quickfixsigns_vim'
"Plug 'jceb/vim-hier'

Plug 'ojroques/vim-oscyank', {'branch': 'main'}

" Initialize plugin system
call plug#end()


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Common settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set termguicolors     " enable true colors support
set background=dark

"set background=light
"color PaperColor

color gruvbox

"color onedark
"color solarized


"let ayucolor="light"  " for light version of theme
"let ayucolor="mirage" " for mirage version of theme
"let ayucolor="dark"   " for dark version of theme
"colorscheme ayu


"colorscheme onehalfdark
"let g:airline_theme='onehalfdark'

"colorscheme nord

"colorscheme one

"colorscheme OceanicNext
"let g:airline_theme='oceanicnext'
"let g:oceanic_next_terminal_bold = 1
"let g:oceanic_next_terminal_italic = 1

"hi Normal guibg=NONE ctermbg=NONE
"hi LineNr guibg=NONE ctermbg=NONE
"hi SignColumn guibg=NONE ctermbg=NONE
"hi EndOfBuffer guibg=NONE ctermbg=NONE

let mapleader=","
set encoding=utf-8
set fileencoding=utf-8 " current editing file
set fileencodings=ucs-bom,utf-8,gbk,cp936,latin-1 " file encoding support
set incsearch
set ignorecase
set smartcase
set autoread
set tabstop=8
"set cmdheight=2
"set laststatus=2
set pvh=30
"set updatetime=2000
set updatetime=200
set shortmess+=c " Don't pass messages to |ins-completion-menu|.
set colorcolumn=80
set pastetoggle=<F12>
set mouse=
set signcolumn=yes

"" Always show the signcolumn, otherwise it would shift the text each time
"" diagnostics appear/become resolved.
"if has("nvim-0.5.0") || has("patch-8.1.1564")
"  " Recently vim can merge signcolumn and number column into one
"  set signcolumn=number
"else
"  set signcolumn=yes
"endif

set foldenable
set foldmethod=syntax
set foldlevel=999
" space to swich fold-unfold
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>

set number
set relativenumber
set cursorline   "突出显示当前行
"set cursorcolumn
set nowritebackup
set nobackup     "设置无备份文件
"set wildmenu     " show a navigable menu for tab completion
set wildmode=longest,list,full

set maxmempattern=20000000
set nospell
"set spell
"setlocal spellfile+=~/.vim/spell/en.utf-8.add
"setlocal spellfile+=oneoff.utf-8.add
"setlocal spell spelllang=en_us,cjk

" Jump to the last position when reopenning a file addr
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

set list
"set listchars=tab:>-,trail:~,extends:>,precedes:<
set listchars=tab:▸\ ,trail:▫,extends:>,precedes:<
au FileType go set nolist

" cS to clear tail spaces
" cM to clear tail ^M
nmap CS :%s/\s\+$//g<CR>:noh<CR>
nmap CM :%s/\r$//g<CR>:noh<CR>

nmap <c-w>" :split<CR>
nmap <c-w>% :vsplit<CR>
nmap <leader>c  :cclose<CR>

let &t_SI="\eP\e[5 q\e\\"
let &t_EI="\eP\e[1 q\e\\"
let &t_SR="\eP\e[3 q\e\\"

nnoremap <leader><leader><tab>  mc80A <esc>080lDgelD`cP

let g:python_host_prog  = "/usr/bin/python2"
"let g:python3_host_prog  = "/usr/bin/python3"


"let g:python_host_prog  = "/usr/bin/python2"
""let g:python3_host_prog = $PY3_PATH
""let g:tagbar_ctags_bin  = "/opt/homebrew/bin/ctags"

"let g:ruby_host_prog = "/usr/bin/ruby"

if !exists("g:os")
    if has("win64") || has("win32") || has("win16")
        let g:os = "Windows"
    else
        let g:os = substitute(system('uname'), '\n', '', '')
    endif
endif
if has("gui_running")
    if g:os == "Darwin"
        ""set guifont=Fira\ Mono:h12
        let g:tagbar_ctags_bin = "/opt/homebrew/opt/ctags/bin/ctags"
        let g:python3_host_prog  = "/opt/homebrew/bin/python3"
    elseif g:os == "Linux"
        ""set guifont=Fira\ Mono\ 10
    elseif g:os == "Windows"
        ""set guifont=Fira_Mono:h12:cANSI
    endif
endif


"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif


"if has("win32")
  """Windows options here
"else
  "if has("unix")
    "let s:uname = system("uname")
    "if s:uname == "Darwin\n"
      "let g:tagbar_ctags_bin = "/opt/homebrew/opt/ctags/bin/ctags"
      "let g:python3_host_prog  = "/opt/homebrew/bin/python3"
    "endif
  "endif
"endif

" not works on mac
"if has('mac')
    "let g:tagbar_ctags_bin = "/opt/homebrew/opt/ctags/bin/ctags"
    "let g:tagbar_ctags_bin = "/opt/homebrew/bin/python3"
"endif

let g:clipboard = {
      \   'name': 'myClipboard',
      \   'copy': {
      \      '+': ['tmux', 'load-buffer', '-'],
      \      '*': ['tmux', 'load-buffer', '-'],
      \    },
      \   'paste': {
      \      '+': ['tmux', 'save-buffer', '-'],
      \      '*': ['tmux', 'save-buffer', '-'],
      \   },
      \   'cache_enabled': 1,
      \ }

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug 'morhetz/gruvbox'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:gruvbox_italic=1
let g:gruvbox_transparent_bg=1
let g:gruvbox_undercurl=1
let g:gruvbox_hls_cursor='orange'
let g:gruvbox_italicize_strings=1
let g:gruvbox_invert_tabline=1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug 'vim-airline/vim-airline'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"let g:airline_theme                        = 'minimalist'
let g:airline_powerline_fonts              = 1
let g:airline#extensions#tabline#enabled   = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_statusline_ontop             = 1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug 'fatih/vim-go'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

au FileType go nmap <leader>R  <Plug>(go-run)
au FileType go nmap <leader>T  <Plug>(go-test-func)
au FileType go nmap <leader>,  :GoSameIdsToggle<CR>
au FileType go nmap <leader>ds <Plug>(go-def-split)
au FileType go nmap <leader>dv <Plug>(go-def-vertical)
au FileType go nmap <leader>dt <Plug>(go-def-tab)

let g:go_highlight_types                 = 1
let g:go_highlight_extra_types           = 1
let g:go_highlight_functions             = 1
let g:go_highlight_function_calls        = 1
let g:go_highlight_function_parameters   = 1
let g:go_highlight_fields                = 1
let g:go_highlight_build_constraints     = 1
let g:go_highlight_generate_tags         = 1
let g:go_highlight_string_spellcheck     = 1
let g:go_highlight_format_strings        = 1
let g:go_highlight_variable_declarations = 1
let g:go_highlight_variable_assignments  = 1
let g:go_highlight_operators             = 1


let g:go_def_mode                    = 'gopls'
let g:go_info_mode                   = 'gopls'
let g:go_gocode_propose_source       = 1
let g:go_gocode_unimported_packages  = 1
let g:go_doc_max_height              = 30
let g:go_doc_popup_window            = 1
let g:go_fmt_command                 = "goimports"
let g:go_list_type                   = "quickfix"
let g:go_list_height                 = 20
let g:go_updatetime                  = 100 " ms

let g:syntastic_go_checkers          = ['golint', 'govet', 'gometalinter', 'golangci-lint']
let g:syntastic_mode_map             = { 'mode': 'active', 'passive_filetypes': ['go'] }

"let g:go_metalinter_deadline         = "10s"
"let g:go_metalinter_autosave         = 1
"let g:go_metalinter_command          = 'golangci-lint'
"let g:go_metalinter_autosave_enabled = []

"let g:go_metalinter_enabled          = ['all']
"let g:go_metalinter_autosave_enabled = ['vet','revive','errcheck','staticcheck','unused','varcheck']


"let g:syntastic_go_checkers          = ['errcheck']
""let g:syntastic_go_gometalinter_args = ['--disable-all', '--enable=errcheck']
"let g:syntastic_go_gometalinter_args = ['--enable-all', '--disable=errcheck']
"let g:syntastic_mode_map             = { 'mode': 'active', 'passive_filetypes': ['go'] }

let g:go_addtags_transform = 'camelcase'
"let g:go_debug = ['shell-commands','lsp']

autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
autocmd Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')

autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4
autocmd BufNewFile,BufRead *.go.tmpl set filetype=gotexttmpl


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug 'neoclide/coc.nvim'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

au FileType c nmap <c-]> <Plug>(coc-definition)

let g:coc_global_extensions = ['coc-highlight', 'coc-lists', 'coc-pairs', 'coc-snippets', 'coc-tslint-plugin', 'coc-tsserver', 'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-yank', 'coc-prettier']

" coc-git
" navigate chunks of current buffer
nmap [g <Plug>(coc-git-prevchunk)
nmap ]g <Plug>(coc-git-nextchunk)
" show chunk diff at current position
nmap gs <Plug>(coc-git-chunkinfo)
" show commit contains current position
nmap gc <Plug>(coc-git-commit)
" create text object for git chunks
omap ig <Plug>(coc-git-chunk-inner)
xmap ig <Plug>(coc-git-chunk-inner)
omap ag <Plug>(coc-git-chunk-outer)
xmap ag <Plug>(coc-git-chunk-outer)

nmap <silent> gdp <Plug>(coc-diagnostic-prev)
nmap <silent> gdn <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> vgd       :vsp<CR><Plug>(coc-definition)
nmap <silent> gd        <Plug>(coc-definition)
nmap <silent> gy        <Plug>(coc-type-definition)
nmap <silent> gi        <Plug>(coc-implementation)
nmap <silent> gr        <Plug>(coc-references)
nmap <silent> rn        <Plug>(coc-rename)
nmap <silent> rf        <Plug>(coc-refactor)
nmap <silent> gl        :CocList<CR>
nmap <silent> <leader>k :call CocActionAsync('doHover')<CR>

" Use K to show documentation in preview window.
"nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

xmap <silent><leader>f  <Plug>(coc-format-selected)
nmap <silent><leader>f  <Plug>(coc-format-selected)

" Use <c-space> to trigger completion.
"inoremap <silent><expr> <c-space> coc#refresh()

"Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

"To make <CR> to confirm selection of selected complete item or notify coc.nvim
"to format on enter.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"


" Use <C-l> for trigger snippet expand.
"imap <C-l> <Plug>(coc-snippets-expand)
vmap <CR> <Plug>(coc-snippets-select)


let g:airline_section_error = '%{airline#util#wrap(airline#extensions#coc#get_error(),0)}'
let g:airline_section_warning = '%{airline#util#wrap(airline#extensions#coc#get_warning(),0)}'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug 'w0rp/ale'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"nmap <silent> [s        <Plug>(ale_previous_wrap)
"nmap <silent> ]s        <Plug>(ale_next_wrap)
"nmap <silent> <leader>s :ALEToggle<CR>
"
"let g:ale_sign_error         = '✗'
"let g:ale_sign_warning       = '⚠'
"let g:ale_sign_column_always = 1
"let g:ale_set_loclist        = 0
"let g:ale_set_quicklist      = 1
"
"let g:airline#extensions#ale#enabled = 1

"let g:ale_linters = {'go': ['gofmt', 'gofumpt', 'goimports', 'golines', 'golangci-lint', 'gometalinter']}
"let g:ale_go_golangci_lint_options = ''



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug 'junegunn/fzf.vim'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nnoremap <silent> <expr> <c-p> (expand('%') =~ 'NERD_tree' ? "\<c-w>\<c-w>" : '').":Files\<cr>"
nnoremap <silent> <expr> <c-h> (expand('%') =~ 'NERD_tree' ? "\<c-w>\<c-w>" : '').":Ag\<cr>"
" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

let g:fzf_action = {
      \ 'ctrl-t': 'tab split',
      \ 'ctrl-x': 'split',
      \ 'ctrl-v': 'vsplit' }

"let g:fzf_layout = { 'down': '40%' }
let g:fzf_layout = { 'window': { 'width': 1, 'height': 1 } }

command! -bang -nargs=* GGrep
  \ call fzf#vim#grep(
  \   'git grep --line-number -- '.shellescape(<q-args>), 0,
  \   fzf#vim#with_preview({'dir': systemlist('git rev-parse --show-toplevel')[0]}), <bang>0)

if has('nvim') && !exists('g:fzf_layout')
  autocmd! FileType fzf
  autocmd  FileType fzf set laststatus=0 noshowmode noruler
    \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug 'scrooloose/nerdtree'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nmap <F2> :NERDTreeToggle<CR>
nmap <F5> :NERDTreeFind<CR>

let NERDTreeWinSize=28

"autocmd StdinReadPre * let s:std_in=1
"
"" Start NERDTree when Vim is started without file arguments.
"autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
"
"" Start NERDTree. If a file is specified, move the cursor to its window.
"autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif
"
"" Start NERDTree when Vim starts with a directory argument.
"autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') | execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif
"
"" Exit Vim if NERDTree is the only window remaining in the only tab.
"autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
"
"" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
"autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 | let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif
"
" Open the existing NERDTree on each new tab.
"autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif



"" open a NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | exe 'NERDTree' | endif
"autocmd VimEnter * if argc() == 0 | exe 'NERDTree' | endif

" open NERDTree automatically when vim starts up on opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug 'majutsushi/tagbar'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nmap <F3> :TagbarToggle<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug 'jeetsukumaran/vim-buffergator'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:buffergator_viewport_split_policy    = "N"
let g:buffergator_hsplit_size              = "50"
let g:buffergator_show_full_directory_path = "0"


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug 'Lokaltog/vim-easymotion'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

let g:EasyMotion_smartcase = 1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug 'junegunn/vim-easy-align'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug 'SirVer/ultisnips'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"let g:UltiSnipsExpandTrigger       = "<CR>"
"let g:UltiSnipsExpandTrigger       = "<c-l>"
"let g:UltiSnipsJumpForwardTrigger  = "<c-j>"
"let g:UltiSnipsJumpBackwardTrigger = "<c-k>"
"" If you want :UltiSnipsEdit to split your window.
"let g:UltiSnipsEditSplit           = "vertical"


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug 'jjo/vim-cue'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"au BufRead,BufNewFile *.cue set filetype=cue
"au BufRead,BufNewFile *.cue nmap <leader>= :!cue fmt %<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug 'rust-lang/rust.vim'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:rustfmt_autosave = 1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug 'ianva/vim-youdao-translater'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vnoremap <silent> <leader>y :<C-u>Ydv<CR>
nnoremap <silent> <leader>y :<C-u>Ydc<CR>
noremap <leader>yd :<C-u>Yde<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug 'voldikss/vim-floaterm'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nnoremap   <silent>   <F6>    :FloatermNew ranger<CR>
tnoremap   <silent>   <F6>    <C-\><C-n>:FloatermNew ranger<CR>
nnoremap   <silent>   <F7>    :FloatermNew<CR>
tnoremap   <silent>   <F7>    <C-\><C-n>:FloatermNew<CR>
nnoremap   <silent>   <F8>    :FloatermPrev<CR>
tnoremap   <silent>   <F8>    <C-\><C-n>:FloatermPrev<CR>
nnoremap   <silent>   <F9>    :FloatermNext<CR>
tnoremap   <silent>   <F9>    <C-\><C-n>:FloatermNext<CR>
nnoremap   <silent>   <F12>   :FloatermToggle<CR>
tnoremap   <silent>   <F12>   <C-\><C-n>:FloatermToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug 'sebdah/vim-delve'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:delve_new_command = "new"
"let g:delve_use_vimux   = 1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug 'airblade/vim-gitgutter'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let gitgutter_highlight_linenrs = 1


nmap ]h <Plug>(GitGutterNextHunk)
nmap [h <Plug>(GitGutterPrevHunk)

nmap ghs <Plug>(GitGutterStageHunk)
nmap ghu <Plug>(GitGutterUndoHunk)

nmap ghp <Plug>(GitGutterPreviewHunk)

command! Gqf GitGutterQuickFix | copen
nmap <leader>gd :GitGutterDiffOrig<CR>
nmap <leader>gf :GitGutterFold<CR>
nmap <leader>hg :GitGutterLineHighlightsToggle<CR>
nmap <leader>nhg :GitGutterLineNrHighlightsToggle<CR>

omap ih <Plug>(GitGutterTextObjectInnerPending)
omap ah <Plug>(GitGutterTextObjectOuterPending)
xmap ih <Plug>(GitGutterTextObjectInnerVisual)
xmap ah <Plug>(GitGutterTextObjectOuterVisual)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plug 'ojroques/vim-oscyank'  " clipboard over ssh through tmux
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:oscyank_max_length = 0  " maximum length of a selection
let g:oscyank_silent     = 0  " disable message on successful copy
let g:oscyank_trim       = 0  " trim surrounding whitespaces before copy
let g:oscyank_osc52      = "\x1b]52;c;%s\x07"  " the OSC52 format string to use

nmap <leader>c <Plug>OSCYankOperator
nmap <leader>cc <leader>c_
vmap <leader>c <Plug>OSCYankVisual

" yank operation don't need to use the *" register (system clipboard)
"set clipboard+=unnamedplus

autocmd TextYankPost *
    \ if v:event.operator is 'y' && v:event.regname is '+' |
    \ execute 'OSCYankRegister +' |
    \ endif
