"NeoBundle Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif


" Required:
set runtimepath^=/Users/onishi/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('/Users/onishi/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
"NeoBundle 'Shougo/neosnippet.vim'
"NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'

" solarized
NeoBundle 'altercation/vim-colors-solarized'
" " mustang
NeoBundle 'croaker/mustang-vim'
" " jellybeans
NeoBundle 'nanotech/jellybeans.vim'
" " molokai
NeoBundle 'tomasr/molokai'

" NeoBundle 'Shougo/unite.vim'
NeoBundle 'ujihisa/unite-colorscheme'

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

"" solarized設定
let g:solarized_termcolors=256
let g:solarized_termtrans=1
let g:solarized_hitrail=1
let g:solarized_visibility=1
set background=dark
colorscheme solarized

"" Ordinary
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"" シンタックスハイライトをon
syntax enable

"" 各種ファイルの保存先指定
set viminfo+=n~/.vim/viminfo.txt
set directory=~/.vim/directory
set backupdir=~/.vim/backupdir
set undodir=~/.vim/undodir
set tags+=.git/tags

"" 文字コード、ファルフォーマット
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,iso-2022-jp,euc-jp,ucs-2,cp932,sjis
set fileformats=unix,dos,mac

"" 全角文字を全角表示で
set ambiwidth=double

"" クリップボード使用
set clipboard=unnamed

"" ステータスライン設定
set statusline=%F%m%r%h%w\ [%{&ff}]\ [%04l,%04v][%p%%]
set laststatus=2

"" 自動再読み込み
set autoread

"" 挿入モードに入る時に表示
set showmode

"" 対応する括弧をハイライト
set showmatch

"" 自動インデント
" :set autoindent
set smartindent
"" タブで空白入力
set expandtab
"" インデント文字数
set tabstop=4
set shiftwidth=4
set softtabstop=0


"" インクリメンタルサーチon
set incsearch
"" 検索時に大文字小文字を区別しない
set ignorecase
"" 検索語に大文字を含む場合は大文字小文字を区別する
set smartcase
"" 検索結果をハイライト
set hlsearch

"" 自動でコメントアウトされちゃうのやめる
autocmd FileType * setlocal formatoptions-=ro

