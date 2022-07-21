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
set timeoutlen=500
set relativenumber
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
colorscheme atom-dark-256
set background=dark
set grepprg=rg 

"==============================================================================
"key combos
"==============================================================================

let g:python3_host_prog='/usr/bin/python3'
let g:loaded_python_provider=0
"ToggleTerm 
let g:toggleterm_terminal_mapping = '<C-t>'
let g:asyncrun_open=8
let g:asyncrun_bell=1
let g:startify_session_dir = '~/.config/nvim/session'
let g:startify_lists = [
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
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

lua <<EOF
require('bqf').setup({
auto_resize_height=false 
})
EOF

"Navigate buffers
"nnoremap <leader>bn :bnext<CR>
nnoremap <s-Tab> :bnext<CR>
nnoremap <leader>bp :bprevious<CR>
nnoremap <leader>bf :bfirst<CR>
nnoremap <leader>bl :blast<CR>

"Other
nnoremap <leader><CR> :source ~/.config/nvim/init.vim<CR>
nnoremap <leader>fe :Telescope file_browser<CR>
nnoremap <leader>fr :Telescope live_grep<CR>
nnoremap <leader>fp :Telescope grep_string<CR>
nnoremap <leader>ff :Telescope find_files <cr>
nnoremap <leader>fo :Telescope oldfiles<cr>
nnoremap <leader>f :call CocAction('format')<CR>

"Hop 
nnoremap <leader>gw :HopWord<cr>
nnoremap <leader>gl :HopLine<cr>


"TagbarToggle
nmap <F8> :TagbarToggle<CR>
map <F7> <ESC>:exec &mouse!=""? "set mouse=" : "set mouse=nv"<CR>

"NvimTree 
"nnoremap <C-n> :NvimTreeToggle<CR>
"nnoremap <leader>r :NvimTreeRefresh<CR>
"nnoremap <leader>n :NvimTreeFindFile<CR>
"highlight NvimTreeFolderName guifg=pink
"highlight NvimTreeFolderIcon guifg=green

"MergeChange
nnoremap <s-m>  <ESC>dp


"NERDTree 
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <leader>r :NERDTreeRefreshRoot<CR>
nnoremap <leader>n :NERDTreeFind<CR>

"print 
nnoremap <leader>pp  oprintk("%s:%d\r\n",__func__,__LINE__);/*ASHOK*/<ESC>:w!<CR>
nnoremap <leader>pl  oprintf("%s:%d\r\n",__func__,__LINE__);fflush(stdout);/*ASHOK*/<ESC>:w!<CR>

"ToggleTerm 
"nnoremap <leader>tm <Cmd>exe v:count1 . "ToggleTerm"<CR>
"inoremap <leader>tm <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>
nmap <F1>  :1ToggleTerm direction=float<CR>
nmap <F2>  :2ToggleTerm direction=window<CR>
"nmap <F3>  :3ToggleTerm direction=vertical<CR>
nmap <F3>  <esc><Cmd>exe v:count1 . "3ToggleTerm direction=vertical"<CR>
nnoremap <F6> :AsyncRun -mode=async -pos=right cc_ax_compile<cr>
nnoremap <F9> :AsyncRun -mode=async -pos=right cc_checkout % <cr>
nnoremap <leader>tu :AsyncRun -mode=async -pos=right cc_undo_co % <cr>
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
map <leader>pt :vert scs find t <C-R>=expand("<cword>")<CR><CR>
map <leader>ps :lcs find 0 <C-R>=expand("<cword>")<CR><CR>
map <leader>pe :lcs find c <C-R>=expand("<cword>")<CR><CR>
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
map <C-g> :Grep <C-R>=expand("<cword>")<CR><Space> 
"Telescope
nnoremap <leader>fa <cmd>Telescope tags<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fc <cmd>Telescope frecency<cr>
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

"Hop setup
lua require("hop").setup()

"Telescope
" will find .lua file that exist at runtime
" should be unique
"lua require("lsp") 
lua require("myterm") 
lua require("bashbunni") 
nnoremap <C-_> <cmd>lua require("bashbunni").curr_buf() <cr>
" nnoremap <C-_> :Telescope current_buffer_fuzzy_find sorting_strategy=ascending prompt_position=top <cr> 
" nnoremap <C-_> <cmd>lua require('telescope.builtin').current_buffer_fuzzy_find({sorting_strategy="ascending", prompt_position="top"})<cr>
"nnoremap <F4> :lua package.loaded.bashbunni = nil <cr>:source ~/.config/nvim/init.vim <cr>:set tags=.tags<cr>:cscope add .cscope.out<cr>
nnoremap <F4> :lua package.loaded.bashbunni = nil <cr>:set tags=.tags<cr>:cscope add .cscope.out<cr>
nnoremap <F10> :Ctoggle<cr>

"cscope add .cscope.out
