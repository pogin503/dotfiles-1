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
set formatoptions+=mM "整形オプションにマルチバイト追加
set backspace=indent,eol,start "BSで何でも消せるようにする
set viminfo=
set vb t_vb=   " ビープをならさない
set clipboard+=unnamed " OSのクリップボードを使用する
set clipboard=unnamed "ヤンクした文字は、システムのクリップボードに入れる"
set scrolloff=5 "カーソルの上、下に表示する最小限の行数
set textwidth=0 " 入力されているテキストの最大幅 「0」で無効
set hidden " 保存しないで他のファイルを表示することが出来るようにする
set formatoptions=lmoq " 自動整形の実行方法
set nobackup "バックアップは作成しない
set noswapfile "スワップファイルを作成しない
set autoread " Vimの外部で変更されたことが判明したとき、自動的に読み直す

"-----------
" View
"-----------
set title "編集中のファイル名を表示
set ruler  "ルーラー表示
set number "行番号表示
set showmatch "閉括弧が入力された時、対応する括弧を強調する
"カーソル行をハイライト
set cursorline
" カレントウィンドウにのみ罫線を引く
augroup cch
  autocmd! cch
  autocmd WinLeave * set nocursorline
  autocmd WinEnter,BufRead * set cursorline
augroup END

hi clear CursorLine
hi CursorLine gui = underline
highlight CursorLine ctermbg = black guibg = black

" コマンド実行中は再描画しない
set lazyredraw
" 高速ターミナル接続を行う
set ttyfast

"-----------
" tabIndent
"-----------
set tabstop=4
set softtabstop=4
set noexpandtab
set expandtab
set smarttab
set shiftwidth=4
set shiftround
set nowrap
set autoindent
set smartindent

"-----------
" color
"-----------
"let g:solarized_termcolors=256
let g:solarized_degrade=0
let g:solarized_bold=1
let g:solarized_underline=1
let g:solarized_italic=1
let g:solarized_termtrans=0
let g:solarized_contrast="high"
let g:solarized_visibility="high"
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

"------------------
"   Move
"------------------
" insert mode での移動
inoremap  <C-e> <END>
inoremap  <C-a> <HOME>
" インサートモードでもhjklで移動（Ctrl押すけどね）
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

"=============================
" powerline
"=============================
set encoding=utf-8 " Necessary to show unicode glyphs
set laststatus=2 " statusline表示
set guifont=Ricty_for_Powerline:h16
set guifontwide=Ricty:h16
set ruler "カーソルが何行目の何列目に置かれているかを表示する
let g:Powerline_symbols = 'fancy'
set t_Co=256
