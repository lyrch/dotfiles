" Table of Contents
" 1 Setup
" 2 Vundle setup
" 3 General editor tools
"   1 NerdTREE
"   2 Syntax checking
"   3 Change surrounding plugin
" 4 Language specific tools
"   1 Ruby plugins
"   2 Rust
"   3 Markdown
" 5 UI config
" 6 Wrapup
" 7 General config

" Setup



set nocompatible
" Turn on syntax highlighting if it exists
filetype off
call plug#begin()
Plug 'junegunn/vim-plug'

" General editor tools

" NERDTree
Plug 'scrooloose/nerdtree'
nnoremap <silent> <leader>nt :call NERDTreeFindOrClose()<CR>
function! NERDTreeFindOrClose()
  if exists('t:NERDTreeBufName') && bufwinnr(t:NERDTreeBufName) != -1
    NERDTreeClose
  else
    if bufname('%') == ''
      NERDTree
    else
      NERDTreeFind
    endif
  endif
endfunction

" vim-arpeggio
Plug 'kana/vim-arpeggio'


" Syntax checking
if exists('*getmatches')
  Plug 'scrooloose/syntastic'
  let g:syntastic_error_symbol          = '✗✗'
  let g:syntastic_warning_symbol        = '⚠⚠'
  let g:syntastic_style_error_symbol    = '✗'
  let g:syntastic_style_warning_symbol  = '⚠'
  let g:syntastic_auto_loc_list         = 1 " Close the location-list when errors are gone
  let g:syntastic_loc_list_height       = 5
  let g:syntastic_sh_checkers           = ['shellcheck', 'checkbashisms', 'sh']
  let g:syntastic_sh_checkbashisms_args = '-x'
  let g:syntastic_ruby_checkers         = ['mri', 'jruby', 'rubocop']
  let g:syntastic_ruby_rubocop_args     = '--display-cop-names'
  let g:syntastic_scss_checkers         = ['sass']
  let g:syntastic_sass_checkers         = ['sass']
  let g:syntastic_xml_checkers          = ['xmllint']
  let g:syntastic_xslt_checkers         = ['xmllint']
  """ npm install js-yaml
  let g:syntastic_yaml_checkers         = ['jsyaml']
  Plug 'dbakker/vim-lint'
endif

"" ds/cs/ys for deleting, changing, your surrounding chars (like ', ", etc.)
Plug 'tpope/vim-surround'

"" editorconfig plugin to share project style configs
Plug 'editorconfig/editorconfig-vim'

" Language specific tools
"" Ruby
Plug 'vim-ruby/vim-ruby'

"" Rust
Plug 'rust-lang/rust.vim'

"" Markdown
Plug 'JamshedVesuna/vim-markdown-preview'

" UI Config
Plug 'flazz/vim-colorschemes'

Plug 'powerline/powerline'

" coffee-script
Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }

" General Config
  
  set number
  scriptencoding utf-8
  set tabstop=2                    " set the default tabstops
  set shiftwidth=2                 " set the default autoindent
  set softtabstop=2
  set expandtab
  set backspace=indent,eol,start   " Set for maximum backspace smartness
  set nowrap                       " Soft (without changing text) wrapping.
  set ignorecase                   " ignore case in searches
  set cursorline                   " highlights the current line
  set showmatch                    " Show the matching bracket
  set textwidth=80                 " Keep the lines a resonable length
  match ErrorMsg '\%>80v.\+'       " Highlight lines that extend beyond 80 characters

" UI Config
Plug 'flazz/vim-colorschemes'
set rtp+=/usr/local/lib/python2.7/site-packages/powerline/bindings/vim

Plug 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}

" Wrap up
call plug#end()


if has('syntax')
  syntax enable
endif

filetype plugin indent on

if !exists('g:loaded_arpeggio')
  call arpeggio#load()
endif

Arpeggio inoremap jk  <Esc>

" Need to set colorscheme after plug#end()
colorscheme molokai
