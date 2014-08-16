" Turn on Solarized 256 colors
if &t_Co == 256
  let g:solarized_termcolors=256
endif

if has("gui_running")
  set background=light
else
  set background=dark
endif

colorscheme solarized
