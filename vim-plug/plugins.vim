"auto-install vim-plug
let vim_plug_just_installed = 0
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
  let vim_plug_just_installed = 1
endif

call plug#begin('~/.config/nvim/autoload/plugged')


"Colour scheme
" My fave colour schemes:
" dracula/dracula-theme, rakr/vim-one, gosukiwi/vim-atom-dark,
" phanviet/vim-monokai-pro rhysd/vim-color-spring-night arzg/vim-colors-xcode
" kyoz/purify
""Plug 'arzg/vim-colors-xcode'
""Plug 'rakr/vim-one'
""Plug 'gosukiwi/vim-atom-dark'
""Plug 'phanviet/vim-monokai-pro'
""Plug 'rhysd/vim-color-spring-night'
""Plug 'kyoz/purify'
""Plug 'folke/tokyonight.nvim', { 'branch': 'main'}
""Plug 'jacoborus/tender.vim'
""Plug 'rafi/awesome-vim-colorschemes'
""Plug 'rebelot/kanagawa.nvim'
""Plug 'EdenEast/nightfox.nvim'
""Plug 'catppuccin/nvim', {'as': 'catppuccin'}
""Plug 'Mofiqul/dracula.nvim'

Plug 'ellisonleao/gruvbox.nvim'
""
"beacon
Plug 'DanilaMihailov/beacon.nvim'

"dirdiff
Plug 'cossonleo/dirdiff.nvim'
"Airlinethemes
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"Markdown preview
""Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }}

"root directory change
Plug 'ahmedkhalf/lsp-rooter.nvim'

"Startify
Plug 'mhinz/vim-startify'

"Autoclose
Plug 'max-0406/autoclose.nvim'

"lsp
"Plug  'neovim/nvim-lspconfig'
"Plug  'hrsh7th/nvim-cmp'
"Plug  'kabouzeid/nvim-lspinstall'

"Autocomplete plugin
"Also do :CocInstall coc-clangd coc-tsserver coc-eslint coc-json coc-prettier coc-css coc-python coc-java 
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"Language packs
Plug 'sheerun/vim-polyglot'

"whichkey
Plug 'folke/which-key.nvim'

"Debugging
"I can't actually debug in nvim yet... This is a WIP
Plug 'puremourning/vimspector'

"Asyncrun
Plug 'skywind3000/asyncrun.vim'

"Nvim motions
Plug 'phaazon/hop.nvim'

"cscope 
"Plug 'mfulz/cscope.nvim'

"Comment Plugin
Plug 'preservim/nerdcommenter'

"Class/module browser
Plug 'preservim/tagbar'

"Auto-format plugin
Plug 'sbdchd/neoformat'

"Code folding
Plug 'tmhedberg/SimpylFold'

" Code and files fuzzy finder
 Plug 'ctrlpvim/ctrlp.vim'

"TreeSitter
Plug 'nvim-treesitter/nvim-treesitter'

"Haskell
Plug 'neovimhaskell/haskell-vim'
Plug 'alx741/vim-hindent'

"ToggleTerm
Plug 'akinsho/nvim-toggleterm.lua'

"Go
Plug 'fatih/vim-go'

"Grammar checking because I can't english
Plug 'rhysd/vim-grammarous'

"Telescope Requirements
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

"Telescope
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'fannheyward/telescope-coc.nvim'
Plug 'nvim-telescope/telescope-frecency.nvim'
Plug 'tami5/sqlite.lua'

"grep 
"Plug 'mhinz/vim-grepper'
Plug 'qalshidi/vim-bettergrep'

"devicons
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'preservim/nerdtree'

"scrollview
"Plug 'dstein64/nvim-scrollview'
Plug 'RRethy/vim-illuminate'

"quickfix list
Plug 'kevinhwang91/nvim-bqf'
Plug 'seandewar/vim-qftoggle'
"Plug 'milkypostman/vim-togglelist'
Plug 'junegunn/fzf',{ 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'



call plug#end()
