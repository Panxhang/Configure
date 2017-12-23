set nocompatible
filetype off
set rtp+=/etc/vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'Valloric/YoucompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'Lokaltog/powerline',{'rtp': 'powerline/bindings/vim/'}

call vundle#end()
filetype plugin indent on 
set encoding=utf-8
set fileencodings=utf-8,chinese,latin-1
set termencoding=utf-8
if has("win32")
	set fileencodings=chinese
else
	set fileencodings=utf-8
endif

"解决菜单乱码
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

let g:ycm_autoclose_preview_window_after_completion=1
let python_highlight_all=1

"显示行号
set nu!

colorscheme desert
syntax enable
syntax on 
call togglebg#map("<F5>")

"NERDTree快捷键
nmap <F2> :NERDTree <CR>
"NERDTree配置
let g:NERDTreeWinPos="left"
let g:NERDTreeWinSize=25
let g:NERDTreeShowLineNumber=1
let g:neocomplcache_enable_at_startup=1
"默认窗口最大化打开
au GUIEnter * simalt ~x

set laststatus=2
set t_Co=256

"将折叠按键设置为space
nnoremap <space> za
