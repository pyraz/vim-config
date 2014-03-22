let g:auto_save = 0

" Only enable auto saving if under version control
let s:in_git = system('git rev-parse --is-inside-work-tree')

if s:in_git =~ 'true'
  let g:auto_save = 1
endif
