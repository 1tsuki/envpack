" personal settings
scriptencoding utf-8
set nocompatible

set number
set fileencodings=utf-8,euc-jp,iso-2022-jp,cp932
set autoindent smartindent
set smarttab
set tabstop=2 softtabstop=2 shiftwidth=2
set expandtab
set showmatch matchtime=1
set matchpairs+=<:>
set whichwrap+=h,l,<,>,[,],b,s,~
set nowrap
set ruler
set ruf=%45(%12f%=\ %m%{'['.(&fenc!=''?&fenc:&enc).']'}\ %l-%v\ %p%%\ [%02B]%)
set statusline=%f:%{substitute(getcwd(),'.*/','','')}\ %m%=%{(&fenc!=''?&fenc:&enc).':'.strpart(&ff,0,1)}\ %l-%v\ %p%%\ %02B
set showcmd
set cmdheight=1
set laststatus=2
set ignorecase
set incsearch
set hlsearch
set clipboard=unnamed
set lcs=tab:>.
set list
syntax enable

" neobundle settings
filetype off
let s:neobundledir = expand('~/.vim/bundle')

" if NeoBundle already installed
if isdirectory(s:neobundledir)
  if has('vim_starting')
    execute 'set runtimepath+=' . s:neobundledir . '/neobundle.vim'
  endif
  call neobundle#rc(s:neobundledir)

  NeoBundle 'Shougo/neobundle.vim'
  NeoBundle 'Shougo/neocomplcache.vim'
  NeoBundle 'Shougo/unite.vim'
  NeoBundle 'Shougo/vimfiler.vim'
  NeoBundle 'Shougo/vimproc', { "build": {"unix": "make -f make_unix.mak", }, }
  NeoBundle 'mattn/zencoding-vim.git'
  NeoBundle 'sudo.vim'
  NeoBundle 'lastpos.vim'
  NeoBundle 'altercation/vim-colors-solarized'

  if neobundle#exists_not_installed_bundles()
    NeoBundleInstall
  endif

" if NeoBundle not installed
else
  command! NeoBundleInit call s:neobundle_init()
  function! s:neobundle_init()
    call mkdir(s:neobundledir, 'p')
    execute 'cd' s:neobundledir
    call system('git clone https://github.com/Shougo/neobundle.vim')
    execute 'set runtimepath+=' . s:neobundledir . '/neobundle.vim'
    call neobundle#rc(s:neobundledir)
    NeoBundle 'Shougo/unite.vim'
    NeoBundle 'Shougo/vimproc', { 'build': { 'unix': 'make -f make_unix.mak', }, }
    NeoBundleInstall
  endfunction
endif

filetype plugin indent on

