syntax on
set number

" set highligh search
set hlsearch

" use mouse click options
" set mouse=v
" set -g mouse on
set mouse=a


" use gtags script (uncomment if want to use)
" so /opt/gtags.vim

" also delek is good
colorscheme slate

" use copy and paste shortcuts: Ctrl-c and Ctrl-v
vnoremap <C-c> "+y
map <C-v> "+P

" opens search results in a window w/ links and highlight the matches (with a blacklist use --exclude *,{json,pyc})
command! -nargs=+ Grep execute 'silent grep! -I -r -n . -e <args>' | copen | execute 'silent /<args>'

" shift-control-* Greps for the word under the cursor
:nmap <leader>g :Grep <c-r>=expand("<cword>")<cr><cr>

" for linux copy paste? 
" vnoremap <C-c> "*y :let @+=@*<CR>

" prevent vulns
set modelines=0
set nomodeline
