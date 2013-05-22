" Plugins Installed: 
" :read !ls ~/.vim/bundle
"Zoomwin-vim
"ack.vim
"ctrlp.vim
"gundo.vim
"nerdcommenter
"nerdtree
"perlomni.vim
"profont-powerline
"syntastic
"tabular
"tagbar
"vim-colors-solarized
"vim-easymotion
"vim-extradite
"vim-fugitive
"vim-perl
"vim-powerline
"vim-rails
"vim-repeat
"vim-ruby

execute pathogen#infect()
syntax on
filetype plugin indent on

syntax enable
set background=dark
colorscheme solarized

" ================ General Config ===================
set ruler
set nu
set showmatch
set backspace=indent,eol,start
set pastetoggle=<C-p>
set ic
set showcmd " shows commands in lower right
set incsearch
set wildmenu " Enhance comand line completion

" ================ Indentation ======================
set autoindent
set smartindent
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab


" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points

" ================ Turn Off Swap Files ==============

set noswapfile
set nobackup
set nowb

" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
" Only works all the time.

silent !mkdir ~/.vim/backups > /dev/null 2>&1
set undodir=~/.vim/backups
set undofile

" ================ Folds ============================

set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

" ================ Completion =======================

"set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
"set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
"set wildignore+=*vim/backups*
"set wildignore+=*sass-cache*
"set wildignore+=*DS_Store*
"set wildignore+=vendor/rails/**
"set wildignore+=vendor/cache/**
"set wildignore+=*.gem
"set wildignore+=log/**
"set wildignore+=tmp/**
"set wildignore+=*.png,*.jpg,*.gif

"

" ================ Scrolling ========================

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

" Testing. This should save history for buffers
set hidden
set history=1000

" No more annoying sound
set visualbell

" highlight search results
set hls

" Custom file type syntax highlighting
au BufRead,BufNewFile *.djhtml set filetype=html
au BufRead,BufNewFile *.soy set filetype=clojure
au BufRead,BufNewFile .bash_config set ft=sh syntax=sh
au BufRead,BufNewFile .jshintrc set ft=javascript
au BufRead,BufNewFile *.tt2 setf html
au BufRead,BufNewFile *.tt setf html
au BufRead,BufNewFile *.js.tt set filetype=javascript
au BufRead,BufNewFile Rexfile set filetype=perl

" let c-x c-k autocomplete dictionary words
" set dictionary+=/usr/share/dict/words
         
" Use mouse
set mouse=a

" Map leader
map , \
map ,, \\

" Make Y consistent with C and D.  See :help Y.
nnoremap Y y$

" Map window movement
noremap H <C-w>h
noremap J <C-w>j
noremap K <C-w>k
noremap L <C-w>l

" Splits
noremap vv :vsplit<CR>
noremap ss :split<CR>

" Render Partial
noremap <C-H> :Rextract 
	
set showmode

:set wrap

" Remap CtrlP to Ctr T
noremap <C-t> :CtrlP<CR>
noremap ,n :NERDTreeToggle<CR>

" ---------------------------------------------------------------
" Functions
" ---------------------------------------------------------------

"" Move current tab into the specified direction.
" @param direction -1 for left, 1 for right.
function! TabMove(direction)
    " get number of tab pages.
    let ntp=tabpagenr("$")
    " move tab, if necessary.
    if ntp > 1
        " get number of current tab page.
        let ctpn=tabpagenr()
        " move left.
        if a:direction < 0
            let index=((ctpn-1+ntp-1)%ntp)
        else
            let index=(ctpn%ntp)
        endif

        " move tab page.
        execute "tabmove ".index
    endif
endfunction

" Move tab left or right
map <C-H> :call TabMove(-1)<CR>
map <C-L> :call TabMove(1)<CR>



" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags


" Make it easy to copy and paste. There's probably a better way
"let g:copy_mode = 0
"function! CopyModeToggle()
  "if g:copy_mode == 0
    "set nonu
    "<C-w>o
    "set mouse-=a
    "let g:copy_mode = 1
  "else
    "set nu
    "<C-w>o
    "set mouse=a
    "let g:copy_mode = 0
  "endif
"endfunction
" Yes.. This is infact dum

"noremap <C-c> :call CopyModeToggle()<cr>
"
" Copies into the clipboard
noremap <slilent> <C-c> :w !pbcopy<cr>


" =========== NEED AUTO COMPLETION =======
