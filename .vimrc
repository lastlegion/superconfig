set nocompatible		"makes vim behave
set t_Co=256			"256 terminal colors
set expandtab			"insert space whenever the tab key is pressed
set autoindent			"Indentation fix
set backspace=2
set tabstop=4			"Insert 4 spaces when tabbed
set shiftwidth=4		"Insert 4 spaces when autoindent
set softtabstop=4       "Backspace 4 spaces when tabbed
set smartindent			"Smart indentation based on code syntax
set number				"Line numbering
"colorscheme torte		"colors
let g:zenburn_high_Contrast=1
colorscheme zenburn

call pathogen#infect()	"Pathogen - plugin manager
filetype plugin indent on

"Auto complete parenthesis, brackets and braces
"inoremap ( ()<Left>		
inoremap [ []<Left>
inoremap { {}<Left>
inoremap ' ''<Left>
inoremap " ""<Left>
inoremap ( ()<Left>

"Autocomplete javascript
"autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS


set cursorline			"highlight current line

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use


"Tagbar
nmap <F8> :TagbarToggle<CR> 


"Syntastic automatic syntax checking
"set statusline+=%#warningmsg#
""set statusline+=%{SyntasticStatuslineFlag()}
""set statusline+=%*
""let g:syntastic_enable_signs=1
""let g:syntastic_auto_loc_list=1

""set gfn=Incosolata\ Tahoma\ Ubuntu\ 13



set ruler				"Show a ruler with line number

"PHP syntax check
set makeprg=php\ -l\ %
set errorformat=%m\ in\ %f\ on\ line\ %l

"File encoding and decoding
set fileencodings=ucs-bom,utf-8,gbk,big5,latin1
set termencoding=utf-8,gbk
if has ('multi_byte') && v:version > 601
	  if v:lang =~? '^\(zh\)\|\(ja\)\|\(ko\)'
		      set ambiwidth=double
	  endif
endif


"Copy paste to clipboard
set clipboard=unnamedplus
