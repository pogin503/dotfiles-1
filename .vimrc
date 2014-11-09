if has('vim_starting')
  set nocompatible
  set runtimepath+=~/.dots/vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.dots/vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'ujihisa/unite-colorscheme'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'Lokaltog/vim-powerline'
call neobundle#end()

filetype plugin indent on     " required!
NeoBundleCheck

" =========================
" basic
" =========================
set viminfo=
set vb t_vb=   " ビープをならさない
set clipboard+=unnamed " OSのクリップボードを使用する
set clipboard=unnamed "ヤンクした文字は、システムのクリップボードに入れる"

"-----------
" display
"-----------
set title "編集中のファイル名を表示
set autoindent "新しい行のインデントを現在行と同じにする
set number "行番号表示
set smartindent "オートインデント
set smarttab "新しい行を作った時に高度な自動インデントを行う
set tabstop=4 "タブ幅の設定
set showmatch "閉括弧が入力された時、対応する括弧を強調する
"カーソル行をハイライト
set cursorline
" カレントウィンドウにのみ罫線を引く
augroup cch
  autocmd! cch
  autocmd WinLeave * set nocursorline
  autocmd WinEnter,BufRead * set cursorline
augroup END

"-----------
" color
"-----------
colorscheme solarized
syntax enable "カラー表示
syntax on "コードの色分け

"-----------
" search
"-----------
set incsearch "インクリメンタルサーチを行う
set ignorecase "大文字/小文字の区別なく検索する
set smartcase "検索文字列に大文字が含まれている場合は区別して検索する
set wrapscan "検索時に最後まで行ったら最初に戻る
set hlsearch   " 検索文字をハイライト
" 検索結果のハイライトをEsc連打でクリアする
nnoremap <ESC><ESC> :nohlsearch<CR>

"=============================
" powerline
"=============================
set laststatus=2 " statusline表示
set ruler "カーソルが何行目の何列目に置かれているかを表示する
let g:Powerline_symbols = 'fancy'
set t_Co=256
