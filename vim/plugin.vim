"
" all plugin settings here
"

" setup Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" making vim looks good
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" vim as ide
Plugin 'preservim/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'majutsushi/tagbar'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-scripts/a.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'nathanaelkane/vim-indent-guides'

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on

"
" individual setup for plugins
"

" solarized scheme
syntax enable
set background=dark
colorscheme solarized
let g:solarized_termcolors=256

" vim-airline/vim-airline
" always show statusbar
set laststatus=2
" show PASTE if in paste mode
let g:airline_detect_paste=1
" show airlien for tabs too
let g:airline#extensions#tabline#enabled=1
" use the solarized theme for the airline status bar
let g:airline_theme='solarized'

" preservim/nerdtree
" open/close NERDTree with \t
nmap <silent> <leader>t :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.pyc$','\~$','\.swp']
let NERDTreeWinSize=25
" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" scrooloose/syntastic
let g:syntastic_error_symbol='x'
let g:syntastic_warning_symbol='^'

" xolox/vim-easytags
" where to look for tags files
"set tags=./tags;,~/.vimtags
set tags=~/.vimtags
" sensible default settings
let g:easytags_events=['BufReadPost','BufWritePost']
let g:easytags_async=1
let g:easytags_dynamic_files=2
let g:easytags_resolve_links=1
let g:easytags_suppress_ctags_warning=1

" majutsushi/tagbar
" open/close tagbar with \b
nmap <silent> <leader>b :TagbarToggle<CR>
let g:tagbar_ctags_bin = 'ctags'
let g:tagbar_width = 25

" airblade/git-gitgutter
" in vim-airline, only display 'hunk' if the diff is non-zero
let g:airline#extensions#hunks#non_zero_only=1

" vim-indent-guides
let g:indent_guides_auto_colors = 0
let g:indent_guides_guide_size=1
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4

" ctags 
let Tlist_Ctags_Cmd='/usr/local/bin/ctags'
