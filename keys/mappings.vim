"------------ AUTO SAVE -------------"
augroup autosourcing
    autocmd!
    autocmd! bufwritepost ~/.config/nvim/init.vim source %
augroup END

"Setting Mapping
set list listchars=tab:»·,trail:·
imap jj <Esc>
imap jj <c-c>
vmap v <Esc>

map ; :
let g:mapleader=','

nnoremap <leader><leader> <c-^>

"Search
nnoremap / /\v
vnoremap / /\v
map <CR> :nohlsearch<CR>

"Window Management
"setting split
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

"Nerd setting
nmap ,e :NERDTreeToggle<CR>

"Setting Number
nmap ,r :set relativenumber<CR>
nmap ,rd :set nornu<CR>

"Setting FZM CTRLP
  map <C-P> :Files<CR>
  map <C-G> :GFiles<CR>
  map <C-B> :Buffer<CR>a

"Setting UndoTree
noremap <leader>u :UndotreeShow<CR>
"Settin ale
  let b:ale_fixers = {'javascript': ['prettier', 'eslint']}
"setting save sudo
comman! -nargs=0 Sw w !sudo tee % > /dev/null

"Run Code
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
map <buffer> <silent> <F8> :w<Cr>:!clear<Cr>:!python3 %<Cr>

nnoremap ,n :!node "%"<CR>

" commentary
noremap <leader>/ :Commentary<CR>

" Setting Warp
noremap <leader>z :set linebreak<CR>
noremap <leader>x :set nolinebreak<CR>


"###Luke Setting###||
"===================||
" Enable atucompletion
set wildmode=longest,list,full
" Disable automatic commenting
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
" Perform dot command over  visual blocks:
vnoremap . :normal .<CR>
" Goyo plugin makes text more readable when writing prose:
map <leader>f :Goyo \| set bg=light \| set linebreak<CR>
" Spell-check set to <leader>o, 'o' 'orthography':
map <leader>o :setlocal spell! spelllang=en_us<CR>
" Splits open at the bottom and right, which is non-retarded, unlike vim defaults.
set splitbelow splitright

" vimling:
nm <leader><leader>d :call ToggleDeadKeys()<CR>
imap <leader><leader>d <esc>:call ToggleIPA()<CR>a
nm <leader><leader>i :call ToggleIPA<CR>
imap <leader><leader>i <esc>:call ToggleIPA<CR>a
nm <leader><leader>q :call ToggleProse()<CR>

" Replace ex mode with gq
map Q gq

" Check file in shellcheck:
map <leader>s :!clear && shellcheck -x %<CR>

" Open my bibliography file in split
map <leader>b :vsp<space>$BIB<CR>
map <leader>r :vsp<space>$REFER<CR>

" Replace all is aliased to S.
nnoremap S :%s//g<Left><Left>

" Ensure files are read as what I want:
let g:vimwiki_ext2syntax = {'.Rmd': 'markdown', '.rmd': 'markdown','.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
map <leader>v :VimwikiIndex
let g:vimwiki_list = [{'path': '~/vimwiki', 'syntax': 'markdown', 'ext': '.md'}]
autocmd BufRead,BufNewFile /tmp/calcurse*,~/.calcurse/notes/* set filetype=markdown
autocmd BufRead,BufNewFile *.ms,*.me,*.mom,*.man set filetype=groff
autocmd BufRead,BufNewFile *.tex set filetype=tex

" Automatically deletes all trailing whitespace and newlines at end of file on save.
  autocmd BufWritePre * %s/\s\+$//e
autocmd BufWritePre * %s/\n\+\%$//e
autocmd BufWritePre *.[ch] %s/\%$/\r/e

" Function for toggling the bottom statusbar:
let s:hidden_all = 1
function! ToggleHiddenAll()
    if s:hidden_all  == 0
        let s:hidden_all = 1
        set noshowmode
        set noruler
        set laststatus=0
        set noshowcmd
    else
        let s:hidden_all = 0
        set showmode
        set ruler
        set laststatus=2
        set showcmd
    endif
endfunction
nnoremap <leader>h :call ToggleHiddenAll()<CR>
