set runtimepath+=$GOROOT/misc/vim

" gofmt Go source when saved
autocmd FileType go autocmd BufWritePre <buffer> Fmt
