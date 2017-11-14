set nocompatible
filetype off			" required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

" Required!
Plugin 'gmarik/vundle'

" External plugins
Plugin 'scrooloose/syntastic'
"Plugin 'altercation/vim-colors-solarized'
Plugin 'SirVer/ultisnips'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'tmux-plugins/vim-tmux-focus-events'
Plugin 'epeli/slimux'
Plugin 'morhetz/gruvbox'

" Slimux
map <Leader>s :SlimuxREPLSendLine<CR>
vmap <Leader>s :SlimuxREPLSendSelection<CR>
map <Leader>a :SlimuxShellLast<CR>
map <Leader>k :SlimuxSendKeysLast<CR>

let g:slimux_select_from_current_window = 1

" Configure GitGutter
"let g:gitgutter_override_sign_column_highlight = 0
"highlight SignColumn ctermbg=white

" Configure Powerline status bar
set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=screen-256color
set termencoding=utf-8
set laststatus=2
set background=dark
set number
set nuw=6
colorscheme gruvbox

syntax on

" Google Vim settings and plugins
source /usr/share/vim/google/default.vim

Glug codefmt
Glug clang-format
Glug critique
Glug grok
Glug syntastic-google
Glug ultisnips-google
Glug whitespace
Glug youcompleteme-google

" Key Bindings
noremap <C-K> :ClangFormat<CR>
inoremap <C-K> <C-O>:ClangFormat<CR>
let g:UltiSnipsExpandTrigger = "<c-h>"
let g:UltiSnipsJumpForwardTrigger = "<c-h>"
let g:UltiSnipsJumpBackwardTrigger = "<c-l>"

" Blaze
Glug blaze
Glug blazedeps
nnoremap ,be :call blaze#LoadErrors()  " Load errors from blaze
nnoremap ,bl :call blaze#ViewCommandLog()  " View build log
nnoremap ,bd :call blaze#BuildOrTestTargets()  " Run blaze on targets
"nnoremap ,bu :call blaze#UpdateTargetDeps()  " Run 'update deps' on targets
nnoremap ,bb :call blaze#BuildTargets()  " Run 'blaze build'
nnoremap ,bt :call blaze#TestTargets()  " Run 'blaze test'
nnoremap ,bu :call blazedeps#BlazeDepsUpdate()  " Run 'Update dependencies in BUILD'

Glug easygoogle
call easygoogle#rc()

" Powerline
"set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

" Always show statusline
"set laststatus=2

noremap <C-K> :pyf /usr/lib/clang-format/clang-format.py<CR>
inoremap <C-K> <C-O>:pyf /usr/lib/clang-format/clang-format.py<CR>

" Enable all plugins, should be the last line.
filetype plugin indent on	" required!

set tabstop=2 shiftwidth=2 expandtab
