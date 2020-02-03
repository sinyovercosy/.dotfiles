" better indent
" set shiftwidth=2
" set tabstop=2
set textwidth=80
if exists('+breakindent')
  set breakindent
endif

" Is this peaksea?
set background=dark
colorscheme solarized8
let g:lightline.colorscheme = 'solarized'

" Screw tabs
let g:lightline.tabline = {'left': [ ['buffers'] ], 'right': [ ['close'] ]}
let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
let g:lightline.component_type   = {'buffers': 'tabsel'}
set showtabline=2       " Always show tabline
if has('gui_running')
    set guioptions-=e   " Don't use GUI tabline
endif
let g:lightline#bufferline#show_number  = 1
let g:lightline#bufferline#shorten_path = 1
let g:lightline#bufferline#unnamed      = '[No Name]'

" Lines exist
set noshowmode

" Eradicate the error bell
set noeb vb t_vb=

" Small hands
inoremap jk <esc>

" Mac is dumb
nmap ∆ <M-j>
nmap ˚ <M-k>
vmap ∆ <M-j>
vmap ˚ <M-k>

" Copy Pasta
set clipboard=unnamed

" AFS needs to update vim
let g:go_version_warning = 0
"
" Working fast editing and reloading of vimrc configs
map <leader>e :e! ~/.dotfiles/my_configs.vim<cr>
autocmd! bufwritepost ~/.dotfiles/my_configs.vim :silent !cp ~/.dotfiles/my_configs.vim ~/.vim_runtime/my_configs.vim

" LaTeX
let g:tex_flavor = "latex"

" OCaml Merlin
let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"

" omnicompletion 
set omnifunc=syntaxcomplete#Complete
set completeopt=longest,menuone
