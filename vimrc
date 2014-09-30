syntax enable
set background=dark

" Need this as silly gnome terminal doesn't advertise 256 colour support
if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif

"colorscheme zenburn

" This gives nice pretty borders
colorscheme anfractuosity

" execute pathogen#infect()

" Show status bar all the time
set laststatus=2

" Use GB spelling
set spelllang=en_gb
autocmd BufRead,BufNewFile *.tex setlocal spell

" Important to toggle between splits
set mouse=a
set ttymouse=xterm2

" Fancy tag lists
let Tlist_Show_One_File = 0
let Tlist_Use_Right_Window = 1
let Tlist_Auto_Open = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_File_Fold_Auto_Close = 1
let Tlist_Enable_Fold_Column = 0
let Tlist_Exit_OnlyWindow = 1
let Tlist_Compact_Format = 1

let tlist_tex_settings = 'latex;c:chapters;s:sections;t:subsections;u:subsubsections'
