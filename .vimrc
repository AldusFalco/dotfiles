syntax on
set number

" use mouse clicks
set mouse=a

" use gtags script (uncomment if want to use)
" so /opt/gtags.vim

colorscheme slate

" use copy and paste
vnoremap <C-c> "+y
map <C-v> "+P

" opens search results in a window w/ links and highlight the matches (with a blacklist use --exclude *,{json,pyc})
command! -nargs=+ Grep execute 'silent grep! -I -r -n . -e <args>' | copen | execute 'silent /<args>'

" shift-control-* Greps for the word under the cursor
:nmap <leader>g :Grep <c-r>=expand("<cword>")<cr><cr>

" prevent vulns
set modelines=0
set nomodeline
