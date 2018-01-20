



syntax on
set number
set nocompatible
filetype off

set wildmenu
set wildmode=list
set complete-=k complete+=k
set completefunc=syntaxcomplete#Complete
set tags=tags;/

" ctrl-space for autocomplete
 inoremap <C-Space> <C-n>
 if has("gui_running") == 0
	 if has("unix")
		 inoremap <Nu1> <C-n>
	 endif
 endif

 if has("win32") || has("win64")
	 set dictionary-=~/vimfiles/linux_words.dict dictionary+=~/vimfiles/linux_words.dict
 else
	 set dictionary-=/usr/share/dict/words dictionary+=/usr/share/dict/words
 endif

 function SetLovePrefs()
	 if has("win32") || has("win64")
		         setlocal dictionary-=~/vimfiles/love-dictionary/love.dict dictionary+=~/vimfiles/love-dictionary/love.dict
			 setlocal dictionary-=~/vimfiles/lua.dict dictionary+=~/vimfiles/lua.dict
			 end
		 endfunction

		 autocmd FileType lua setlocal tabstop=2 shiftwidth=2 softtabstop=2
   		 autocmd FileType lua call SetLovePrefs()
   		 autocmd FileType lua setlocal iskeyword+=:
    		 autocmd FileType lua setlocal iskeyword+=.

	if has("win32") || has("win64")
  		command -nargs=* Love10 :!"C:\Program Files\LOVE-0.10.2\lovec.exe" . <args>
  		command -nargs=* Lua51  :!"C:\Program Files (x86)\Lua\5.1\lua.exe" <args>
	end

set incsearch
set hlsearch
set foldenable
set foldlevelstart=10

set cursorline 

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()

set laststatus=2

" This is the Vundle package, which can be found on GitHub.
" For GitHub repos, you specify plugins using the
" 'user/repository' format
Plugin 'gmarik/vundle'

" We could also add repositories with a ".git" extension
Plugin 'scrooloose/nerdtree.git'

" To get plugins from Vim Scripts, you can reference the plugin
" by name as it appears on the site
Plugin 'Buffergator'

" Now we can turn our filetype functionality back on
filetype plugin indent on

" Plugin 'vim-airline/vim-airline'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'Valloric/YouCompleteMe'
Plugin 'severin-lemaignan/vim-minimap'
Plugin 'gmmatooten/vim-love-docs'
Plugin 'dracula/vim'
Plugin 'morhetz/gruvbox'
colorscheme dracula

" Markdown settings
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_toml_fronmatter = 1
let g:vim_markdown_json_frontmatter = 1

" Theme settings
let g:gruvbox_italic=0
let g:gruvbox_underline=0
let g:gruvbox_invert_indent_guides=1
let g:gruvbox_improved_warnings=1
colorscheme gruvbox
set background=dark

" Toggle NERDTree on/off
map <C-n> :NERDTreeToggle<CR>

" Show hidden files
let NERDTreeShowHidden=1
set  rtp+=/usr/lib/python3.6/site-packages/powerline/bindings/vim/
set laststatus=2
set t_Co=256

map <alt+F6> : !ispell %<CR>: e %<CR>

" A Vim Plugin for Lively Previewing LaTeX PDF Output
Plugin 'xuhdev/vim-latex-live-preview'
let g:livepreview_previewer = 'open -a mupdf'
