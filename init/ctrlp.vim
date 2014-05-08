" remap enter to open file in new tab
" while ctrl-t opens in same buffer
let g:ctrlp_prompt_mappings = {
  \ 'AcceptSelection("e")': ['<c-t>'],
  \ 'AcceptSelection("t")': ['<cr>', '<c-m>']
  \ }
