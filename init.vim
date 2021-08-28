"=================================================================================
"general
"=================================================================================

syntax on
set ma
set mouse=a
set cursorline
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoread
set nobackup
set nowritebackup
set noswapfile
set nu 
set foldlevelstart=99
set scrolloff=7
set hidden
"set termguicolors
"use y and p with the system clipboard
set clipboard=unnamedplus

"==================================================================================
"plugins
"==================================================================================

source $HOME/.config/nvim/themes/airline.vim
source $HOME/.config/nvim/vim-plug/plugins.vim
"set tags=/home/adshas0/views/adshas0_ax_view_1/wlan2/tags
"Aesthetic
colorscheme xcodedarkhc
set background =dark

"==============================================================================
"key combos
"==============================================================================

let g:python3_host_prog='/usr/bin/python3'
let g:loaded_python_provider=0
"ToggleTerm 
let g:toggleterm_terminal_mapping = '<C-t>'
let g:asyncrun_open=6
let g:asyncrun_bell=1
let g:startify_session_dir = '~/.config/nvim/session'
let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]



let g:startify_custom_header = [
            \'   |  \/  | ___ _ __   __ _ ___| |__  |\  | |_   _(_)_ __ ___',
            \'   | |\/| |/ _ \  _ \ / _` / __|  _ \ | \ | \ \ / / |  _ ` _ \ ',
            \'   | |  | |  __/ | | | (_| \__ \ | | || |\  |\ V /| | | | | | |',
            \'   |_|  |_|\___|_| |_|\__,_|___/_| |_||_| \_| \_/ |_|_| |_| |_|',
            \]

set encoding=UTF-8
let mapleader = ";"

"Navigate buffers
nnoremap <leader>bn :bnext<CR>
nnoremap <leader>bp :bprevious<CR>
nnoremap <leader>bf :bfirst<CR>
nnoremap <leader>bl :blast<CR>

"Other
nnoremap <leader><CR> :source ~/.config/nvim/init.vim<CR>
nnoremap <leader>fe :Telescope file_browser<CR>
nnoremap <leader>fr :Telescope live_grep<CR>
nnoremap <leader>f :call CocAction('format')<CR>

"TagbarToggle
nmap <F8> :TagbarToggle<CR>
map <F7> <ESC>:exec &mouse!=""? "set mouse=" : "set mouse=nv"<CR>

"NvimTree 
nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>
highlight NvimTreeFolderName guifg=pink
highlight NvimTreeFolderIcon guifg=green



"ToggleTerm 
"nnoremap <leader>tm <Cmd>exe v:count1 . "ToggleTerm"<CR>
"inoremap <leader>tm <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>
nmap <F1>  :1ToggleTerm direction=float<CR>
nmap <F2>  :2ToggleTerm direction=window<CR>
"nmap <F3>  :3ToggleTerm direction=vertical<CR>
nmap <F3>  <esc><Cmd>exe v:count1 . "3ToggleTerm direction=vertical"<CR>
nnoremap <F6> :AsyncRun -mode=async -pos=right cc_ax_compile<cr>
nnoremap <F9> :AsyncRun -mode=async -pos=right cc_checkout % <cr>
nnoremap <leader>tu :AsyncRun -mode=async -pos=right cc_undo_checkout % <cr>
nnoremap <leader>tc <cmd>ToggleTermCloseAll<cr>
nnoremap <leader>to <cmd>ToggleTermOpenAll<cr>

"lua << EOF
"local noremap_opts = { noremap = true, silent = true }
"
" tnoremap('<esc>', [[<C-\><C-n>]], noremap_opts)
" tnoremap('jk', [[<C-\><C-n>]], noremap_opts)
" tnoremap('<C-h>', [[<C-\><C-n><C-W>h]], noremap_opts)
" tnoremap('<C-j>', [[<C-\><C-n><C-W>j]], noremap_opts)
" tnoremap('<C-k>', [[<C-\><C-n><C-W>k]], noremap_opts)
" tnoremap('<C-l>', [[<C-\><C-n><C-W>l]], noremap_opts)
""EOF
"tnoremap '<esc>' <c-\><c-n>
"tnoremap <M-(> <Esc>
"tnoremap <C-v><Esc> <Esc>
""Terminal mode:
tnoremap <esc> <c-\><c-n>
tnoremap <M-h> <c-\><c-n><c-w>h
tnoremap <M-j> <c-\><c-n><c-w>j
tnoremap <M-k> <c-\><c-n><c-w>k
tnoremap <M-l> <c-\><c-n><c-w>l
""Insert mode:
"inoremap <M-h> <Esc><c-w>h
"inoremap <M-j> <Esc><c-w>j
"inoremap <M-k> <Esc><c-w>k
"inoremap <M-l> <Esc><c-w>l
"" Visual mode:
"vnoremap <M-h> <Esc><c-w>h
"vnoremap <M-j> <Esc><c-w>j
"vnoremap <M-k> <Esc><c-w>k
"vnoremap <M-l> <Esc><c-w>l
"" Normal mode:
"nnoremap <M-h> <c-w>h
"nnoremap <M-j> <c-w>j
"nnoremap <M-k> <c-w>k
"nnoremap <M-l> <c-w>l

"lua << EOF
"function _G.set_terminal_keymaps()
"  local opts = {noremap = true}
"  vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<c-\><c-n>]], opts)
"  vim.api.nvim_buf_set_keymap(0, 't', 'jk', [[<c-\><c-n>]], opts)
"  vim.api.nvim_buf_set_keymap(0, 't', '<c-h>', [[<c-\><c-n><c-w>h]], opts)
"  vim.api.nvim_buf_set_keymap(0, 't', '<c-j>', [[<c-\><c-n><c-w>j]], opts)
"  vim.api.nvim_buf_set_keymap(0, 't', '<c-k>', [[<c-\><c-n><c-w>k]], opts)
"  vim.api.nvim_buf_set_keymap(0, 't', '<c-l>', [[<c-\><c-n><c-w>l]], opts)
"end
"
"-- if you only want these mappings for toggle term use term://*toggleterm#* instead
"vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymap()')
"EOF



"cscope 
map g<C-_> :vert scs find s <C-R>=expand("<cword>")<CR><CR>
map s<C-_> :vert scs find 0 <C-R>=expand("<cword>")<CR><CR>
"nmap <leader>_ :scs find s <C-R>=expand("<cword>")<CR><CR>
"nmap <C-o>g :scs find g <C-R>=expand("<cword>")<CR><CR>
"nmap <C-o>c :scs find c <C-R>=expand("<cword>")<CR><CR>
"nmap <C-o>t :scs find t <C-R>=expand("<cword>")<CR><CR>
"nmap <C-o>e :scs find e <C-R>=expand("<cword>")<CR><CR>
"nmap <C-o>f :scs find f <C-R>=expand("<cfile>")<CR><CR>
"nmap <C-o>i :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
"nmap <C-o>d :scs find d <C-R>=expand("<cword>")<CR><CR>
"nmap <C-o>a :scs find a <C-R>=expand("<cword>")<CR><CR>
"

"Telescope
nnoremap <leader>fg <cmd>Telescope tags<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
"nnoremap <leader>fg <cmd>lua require('telescope.builtin').tags()<cr>
autocmd StdinReadPre * let s:std
"==============================================================================
" plugin configs
"==============================================================================

let $FZF_DEFAULT_OPTS='--reverse'
let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }

" Focus and redistribute split windows
noremap ff :resize 100 <CR> <BAR> :vertical resize 220<CR>
noremap fm <C-w>=

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

"****************************************************
"Markdown Preview Recommended Settings
"****************************************************
" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 0

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 1 

" set to 1, the vim will refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 0

" set to 1, the MarkdownPreview command can be use for all files,
" by default it can be use in markdown file
" default: 0
let g:mkdp_command_for_global = 1 

" set to 1, preview server available to others in your network
" by default, the server listens on localhost (127.0.0.1)
" default: 0
let g:mkdp_open_to_the_world = 0

" use custom IP to open preview page
" useful when you work in remote vim and preview on local browser
" more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
" default empty
let g:mkdp_open_ip = ''

" specify browser to open preview page
" default: ''
let g:mkdp_browser = ''

" set to 1, echo preview page url in command line when open preview page
" default is 0
let g:mkdp_echo_preview_url = 0

" a custom vim function name to open preview page
" this function will receive url as param
" default is empty
let g:mkdp_browserfunc = ''

" options for markdown render
" mkit: markdown-it options for render
" katex: katex options for math
" uml: markdown-it-plantuml options
" maid: mermaid options
" disable_sync_scroll: if disable sync scroll, default 0
" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
"   middle: mean the cursor position alway show at the middle of the preview page
"   top: mean the vim top viewport alway show at the top of the preview page
"   relative: mean the cursor position alway show at the relative positon of the preview page
" hide_yaml_meta: if hide yaml metadata, default is 1
" sequence_diagrams: js-sequence-diagrams options
" content_editable: if enable content editable for preview page, default: v:false
" disable_filename: if disable filename header for preview page, default: 0
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false,
    \ 'disable_filename': 0
    \ }

" use a custom markdown style must be absolute path
" like '/Users/username/markdown.css' or expand('~/markdown.css')
let g:mkdp_markdown_css = ''

" use a custom highlight style must absolute path
" like '/Users/username/highlight.css' or expand('~/highlight.css')
let g:mkdp_highlight_css = ''

" use a custom port to start server or random for empty
let g:mkdp_port = ''

" preview page title
" ${name} will be replace with the file name
let g:mkdp_page_title = '「${name}」'

" recognized filetypes
" these filetypes will have MarkdownPreview... commands
let g:mkdp_filetypes = ['markdown']

"normal/insert
nnoremap <C-p> :MarkdownPreview

"Telescope
" will find .lua file that exist at runtime
" should be unique
lua require("myterm") 
lua require("bashbunni") 
nnoremap <C-_> <cmd>lua require("bashbunni").curr_buf() <cr>
" nnoremap <C-_> :Telescope current_buffer_fuzzy_find sorting_strategy=ascending prompt_position=top <cr> 
" nnoremap <C-_> <cmd>lua require('telescope.builtin').current_buffer_fuzzy_find({sorting_strategy="ascending", prompt_position="top"})<cr>
nnoremap <F4> :lua package.loaded.bashbunni = nil <cr>:source ~/.config/nvim/init.vim <cr>:set tags=.tags<cr>:cscope add .cscope.out<cr>
nnoremap <leader>ff :Telescope find_files <cr>

"cscope add .cscope.out
