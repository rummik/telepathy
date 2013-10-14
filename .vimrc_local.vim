" See https://github.com/chameleoid/style for more information about this file
"
" To use this file:
"
" Install https://code.google.com/p/lh-vim/source/browse/misc/trunk/plugin/local_vimrc.vim
" which loads `_vimrc_local.vim` files, as well as adding the following lines
" to your `~/.vimrc`:
"     " Use .vimrc_local.vim instead of _vimrc_local.vim
"     let g:local_vimrc = '.vimrc_local.vim'
"
"
" Or, for those who don't wish to set `g:local_vimrc`, you can symlink it to
" `_vimrc_local.vim`:
"     ln -s .vimrc_local.vim _vimrc_local.vim`
"
"
" Note: `_vimrc_local.vim` is ignored in our `.gitignore`, so there shouldn't
" be any issues with you using it

setl smarttab
setl noexpandtab

if bufname("%") =~? '\.jshintrc$'
	setl filetype=javascript
endif

if &filetype == 'yaml'
	setl expandtab
	setl shiftwidth=8 tabstop=8
endif

if &filetype == 'markdown'
	setl expandtab
	setl shiftwidth=2 tabstop=2
	setl linebreak textwidth=80
	setl foldmethod=marker
endif

if &filetype == 'html'
	setl filetype=htmldjango
endif
