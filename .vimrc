" vim-plug plugins
call plug#begin('~/.vim/plugged')
" Git plugin
Plug 'https://github.com/tpope/vim-fugitive.git'
call plug#end()

" clang-format
map <C-F> :py3f /usr/share/clang/clang-format.py<cr>
imap <C-F> <c-o>:py3f /usr/share/clang/clang-format.py<cr>

" Replace no longer works
imap <Insert> <Nop>
inoremap <S-Insert> <Insert>

" Set spell check
:set backspace=indent,eol,start
:set spelllang=en
:set spell
hi clear SpellBad
hi SpellBad cterm=underline

:set mouse-=a

" Set 80 char line
:set colorcolumn=80

" Python insert 4 spaces for tab
au FileType python setl shiftwidth=4 tabstop=4 expandtab

"Remove all trailing whitespace by pressing F6
nnoremap <F6> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

:syntax on
" Try the following if your GUI uses a dark background.
:highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
" Show trailing whitepace and spaces before a tab:
:autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\t/

" Show current relative line numbers
set number                      
set relativenumber

" Show a tab as >---
set list
set listchars=tab:>-
