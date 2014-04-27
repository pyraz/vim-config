" Toggle off filetype to force reload of runpath
filetype off
filetype plugin indent off
set runtimepath+=$GOROOT/misc/vim
filetype plugin indent on

" gofmt Go source when saved
autocmd FileType go autocmd BufWritePre <buffer> Fmt

" vim compiler plug
autocmd FileType go compiler go
