set nocompatible
filetype off
set rtp+=/etc/vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'Valloric/YoucompleteMe'
"Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'scrooloose/nerdtree'
"Plugin 'Lokaltog/powerline',{'rtp': 'powerline/bindings/vim/'}
Plugin 'klen/python-mode'
Plugin 'vim-scripts/Indent-Guides'
Plugin 'vim-scripts/winmanager'
Plugin 'vim-scripts/Tagbar'
"Plugin 'vim-scripts/taglist.vim'

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

"let g:ycm_autoclose_preview_window_after_completion=1
"let python_highlight_all=1


colorscheme desert
call togglebg#map("<F5>")

"let g:neocomplcache_enable_at_startup=1
"默认窗口最大化打开
au GUIEnter * simalt ~x

"set laststatus=2

"将折叠按键设置为space
nnoremap <space> za
"configure syntastic syntax checking to check on open as well as save 
"let g:syntax_check_on_open=1
"let g:syntastic_html_tidy_ignore_errors=["proprietary attribute \"ng-"]
"let g:syntastic_always_popilate_loc_list=1
"let g:syntastic_auto_loc_list=1
"let g:syntastic_check_on_wq=0
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"基本配置
"------------------
"语法高亮
syntax on
syntax enable 
"显示行号
set number 
"标尺功能，显示当前光标所在的行列号
set ruler
"关闭vi模式
set nocp
"纵向新建窗口时在下方
set splitbelow
"横向新建窗口时在右方
set splitright
"继承前一行的缩进方式
set autoindent
"制表符为4
set tabstop=4
"统一缩进为4
set softtabstop=4
set shiftwidth=4
"不同文件类型采用不同的缩进
filetype indent on
"高亮被搜索的句子
set hlsearch
"在搜索时，输入的词句逐字符高亮
set incsearch
"在搜索的时候忽略大小写
set ignorecase
"高亮显示匹配的括号
set showmatch
"设置代码长度标记线
set colorcolumn=81
"允许使用退格键
set backspace=2
"历史命令保存行数
set history=100
"使用鼠标
set mouse=vi

"GUI配置------------------------
"关闭左侧垂直分割滚动条
set guioptions-=L
"关闭右侧滚动条
set guioptions-=r

"配色方案

"设置颜色
set t_Co=256
set background=dark
"界面主题
colorscheme molokai
"高亮光标所在行
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
hi CursorLine term=bold cterm=bold ctermfg=NONE ctermbg=236
hi cursorcolumn term=NONE cterm=None ctermfg=NONE ctermbg=236
set cursorline cursorcolumn
hi Comment cterm=NONE ctermbg=NONE ctermfg=245
hi Search cterm=bold ctermbg=32 ctermfg=251
hi IncSearch cterm=bold ctermbg=130 ctermfg=251
hi Visual cterm=bold ctermbg=239 ctermfg=NONE
hi ColorColumn cterm=NONE ctermbg=235 ctermfg=None
hi QuickFixLine cterm=bold ctermbg=238 ctermfg=None
hi Normal cterm=None ctermbg=NONE ctermfg=252
hi LineNr term=underline ctermbg=250 ctermfg=237
"对齐线颜色
hi IndentGUIdesOdd ctermbg=235
hi IndentGUIdesEven ctermbg=235
"匹配括号
hi MatchParen cterm=bold ctermfg=251 ctermbg=244
"提示符
hi Error cterm=bold ctermfg=161 ctermbg=234
hi vimError cterm=bold ctermfg=161 ctermbg=234
hi WarningMSG cterm=bold ctermfg=14 ctermbg=234
hi SignColumn cterm=NONE ctermfg=NONE ctermbg=234

"pythonmode插件配置
"Python 3 Syntax
let g:pymode_python = 'python3'

"开启代码折叠
"let g:pymode_folding = 1
"设置中断点
let g:pymode_breakpoint=1
let g:pymode_breakpoint_bind = '<leader>b'
"开启代码检查
let g:pymode_lint = 1
"每当保存时进行代码检查
let g:pymode_lint_on_write = 1
"编译时检查代码
"let g:PymodeLint_on_fly=0
"设置代码检查工具
let g:pymode_lint_checkers = ['pyflakes','pep8']
let g:pymode_lint_ignore = ["E501"]
"自定义检查符号

"不在父目录下查找，ropeproject，能提升响应速度
let g:pymode_rope_lookup_project=0
"代码补全
let g:pymode_rope_completion = 0
let g:pymode_rope_complete_on_dot = 0
let g:pymode_rope_completion_bind = '<C-N>'
let g:pymode_rope_autoimport_modules = ['os','numpy']
"关闭rope
let g:pymode_rope = 0
"检查代码错误
nmap e :PymodeLint <CR>
"自动修复PEP8格式错误
nmap t :PymodeLintAuto <CR>

"YouCompleteMe配置
"Python3
"let g:ycm_python_binary_path = '/root/panhang/anaconda3/bin/python3.6'
"不显示开启vim时检车ycm_extre_conf文件的信息
let g:ycm_confirm_extra_conf=0
"开启基于tag的补全，可以在这之后添加需要的标签路径
let g:ycm_collect_identifiers_from_tags_files=0
"注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings=0
"输入第n个字符开始补全
let g:ycm_min_num_of_chars_for_completion=2
"候选词下限
let g:ycm_min_num_identifier_candidate_chars=0
"禁止缓存匹配项，每次都重新生成匹配项
let g:ycm_cache_omnifunc=1
"开启语义
let g:ycm_seed_indentifiers_with_syntax=1
"开启补全函数、方法、类说明窗口，并自动关闭
let g:ycm_add_preview_to_completeopt=0
let g:ycm_autoclose_preview_window_after_insertion=0
"注释输入也能补全
let g:ycm_complete_in_comments=0
"在字符串中输入也能补全
let g:ycm_complete_in_strings=0
"设置在下面几种格式的文件上屏蔽ycm
let g:ycm_filetype_blacklist={
			\'tagbar':1,
			\'taglist':1,
			\'nerdtree':1,
			\'qf':1,
			\'notes':1,
			\'markdown':1,
			\'unite':1,
			\'text':1,
			\'vimwiki':1,
			\'pandoc':1,
			\'infolog':1,
			\'mail':1
			\}

"Winmanager配置
"设置界面分割
"设置winmanager的宽度，默认为25
let g:winManagerWidth = 30

"NERDTree配置
let g:NERDTreeAutoCentet=1
let g:NERDTreeMouseMode=1
let g:NERDTreeWinSize=30
let g:NERDTreeStatusline=1
let g:NERDTree_title='NERD Tree'
let g:NERDTreeNaturalSort=1
"function! NERDTree_Start()
"	exec 'NERDTree'
"endfunction
"function! NERDTree_IsValid()
"	return 1
"endfunction
nmap <F1> :NERDTreeToggle <CR>

"Taglist配置
"let g:Tlist_Show_One_File=1
"let g:Tlist_Exit_OnlyWindow=1
"let g:Tlist_File_Fold_Auto_Close=1
"let g:Tlist_Show_Menu=1
"nmap <F2> :TlistToggle <CR>

"Tagbar配置
let g:tagbar_width=30
nmap <F4> :TagbarToggle <CR>
