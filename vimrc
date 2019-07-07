syntax enable

" No longer need this - as rust.vim implements this
autocmd FileType rust setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab 
autocmd FileType python setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab  
autocmd FileType c setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab  
autocmd FileType cpp setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab  

set background=dark

" Need this as silly gnome terminal doesn't advertise 256 colour support
if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif

" Needed to get right-click menu in gvim, useful for spellchecking
set mousemodel=popup

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


" Pathogen plugin setup
execute pathogen#infect()
" syntax on
" filetype plugin indent on


" No longer need this - as rust.vim implements this
" Set .rs to mean filetype rust, instead of something odd
au BufRead,BufNewFile *.rs set filetype=rust
