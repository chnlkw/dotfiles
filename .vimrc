set ai
set tabstop=4
set shiftwidth=4
set mouse=a
set nu

colorscheme default
set background=dark

nnoremap <F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>:!cscope -Rbq <CR>:cscope reset<CR><CR>
map <F9> :WMToggle<CR>:Tagbar<CR>

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'simplyzhao/cscope_maps.vim'
Bundle 'Lokaltog/vim-distinguished'
Bundle 'tomasr/molokai'
"colorscheme molokai
Bundle 'scrooloose/nerdcommenter'
Bundle 'majutsushi/tagbar'
Bundle 'lekv/vim-clewn'
Bundle 'justinmk/vim-syntax-extra'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'minibufexpl.vim'
Bundle 'The-NERD-tree'
Bundle 'winmanager'
Bundle 'bufexplorer.zip'
Bundle 'taglist.vim'
Bundle 'clang-complete'
"Bundle 'OmniCppComplete'
" non github repos
Bundle 'git://git.wincent.com/command-t.git'
" git repos on your local machine (ie. when working on your own plugin)
"Bundle 'file:///Users/gmarik/path/to/plugin'
" ...

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

"MiniBufExpl
let g:miniBufExplMapWindowNavVim=1
let g:miniBufExplMapWindowNavArrows=1
let g:miniBufExplMapCTabSwitchBufs=1
let g:miniBufExplModSelTarget=1
let g:miniBufExplMoreThanOne=0

"WinManager
let g:winManagerWindowLayout='NERDTree'

" For NERDTree plugin
"autocmd vimenter * NERDTree
"map <leader>t :NERDTreeToggle<CR>
"let NERDTreeShowHidden=1
"let NERDTreeShowBookmarks=1

"Used by winmanager
let g:NERDTree_title="[NERDTree]"
function! NERDTree_Start()
    exe 'NERDTree'
endfunction

function! NERDTree_IsValid()
    return 1
endfunction

"clang-complete

let g:clang_complete_copen=1
let g:clang_hl_errors=1
let g:clang_snippets=1
let g:clang_close_preview=1
let g:clang_use_library=1
let g:clang_user_options='-std=c++11 -I/usr/include'
