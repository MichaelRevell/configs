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
"vim-unimpaired
"vim-ruby

execute pathogen#infect()

" ==================== General Config ======================
set ruler
set nu " Show numbers
set showmatch
set backspace=indent,eol,start
set ic
set showcmd " shows commands in lower right
set incsearch
set wildmenu " Enhance comand line completion
noremap <F3> :GundoToggle<CR>
noremap Q :quitall<CR>

" Testing. This should save history for buffers
set hidden
set history=1000

" No more annoying sound
set visualbell

" highlight search results
set hls

" Use mouse
set mouse=a

" Map leader
map , \
map ,, \\

" Make Y consistent with C and D.  See :help Y.
nnoremap Y y$

" Functions Keys
noremap <F2> :registers<CR>
inoremap <F2> <esc>:registers<CR>

" Splits
noremap vv :vsplit<CR>
noremap ss :split<CR>

" Render Partial
noremap <C-H> :Rextract
	
set showmode

set wrap

" Remap CtrlP to Ctr T
noremap <C-t> :CtrlP<CR>
noremap ,n :NERDTreeToggle<CR>

" ======================= Script Runner ====================
let g:script_runner_perl = "perl -Ilib -MData::Dumper -Mv5.10 -Mwarnings -MFile::Slurp"
let g:script_runner_javascript = "node"

" ====================== Edit   Vimrc ======================
" source $MYVIMRC reloads the saved $MYVIMRC
:nmap <Leader>s :source $MYVIMRC

" opens $MYVIMRC for editing, or use :tabedit $MYVIMRC
:nmap <Leader>e :e $MYVIMRC

" ====================== Color Scheme ======================
set background=dark
colorscheme solarized

" ===================== AUTO COMPLETION ====================

setlocal omnifunc=syntaxcomplete#Complete "Default
" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" let c-x c-k autocomplete dictionary words
"set dictionary+=/usr/share/dict/words

let g:acp_behaviorPerlOmniLength = 0
"let g:acp_completeOption = '.,w,b,k'
":acpDisable

" EXPERIMENTAL!!!
:set completeopt=longest,menuone
"The above command will change the 'completeopt' option so that Vim's popup
"menu doesn't select the first completion item, but rather just inserts the
"longest common text of all matches; and the menu will come up even if there's
"only one match. (The longest setting is responsible for the former effect and
"the menuone is responsible for the latter.)

:inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
"The above mapping will change the behavior of the <Enter> key when the popup
"menu is visible. In that case the Enter key will simply select the
"highlighted menu item, just as <C-Y> does.

inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
  \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

"In the above mappings, the first will make <C-N> work the way it normally
"does; however, when the menu appears, the <Down> key will be simulated. What
"this accomplishes is it keeps a menu item always highlighted. This way you
"can keep typing characters to narrow the matches, and the nearest match will
"be selected so that you can hit Enter at any time to insert it. In the above
"mappings, the second one is a little more exotic: it simulates <C-X><C-O> to
"bring up the omni completion menu, then it simulates <C-N><C-P> to remove the
"longest common text, and finally it simulates <Down> again to keep a match
"highlighted.
"Here is a hacky example of a set of mappings that first close any popups that
"are open which means you can seamlessly switch between omni and user
"completions. Then they try the omni or user complete function. If the menu is
"visible they use the above trick to keep the text you typed and select the
"first.

" open omni completion menu closing previous if open and opening new menu without changing the text
inoremap <expr> <C-Space> (pumvisible() ? (col('.') > 1 ? '<Esc>i<Right>' : '<Esc>i') : '') .
            \ '<C-x><C-o><C-r>=pumvisible() ? "\<lt>C-n>\<lt>C-p>\<lt>Down>" : ""<CR>'
" open user completion menu closing previous if open and opening new menu without changing the text
inoremap <expr> <S-Space> (pumvisible() ? (col('.') > 1 ? '<Esc>i<Right>' : '<Esc>i') : '') .
            \ '<C-x><C-u><C-r>=pumvisible() ? "\<lt>C-n>\<lt>C-p>\<lt>Down>" : ""<CR>'
" The AutoComplPop plugin automatically opens popup menu for completions as
" you type.
"
"
" *end experimental*

" ===================== Syntax Highlighting ================
syntax on
filetype plugin indent on
syntax enable

" Custom file type syntax highlighting
au BufRead,BufNewFile *.djhtml set filetype=html
au BufRead,BufNewFile *.soy set filetype=clojure
au BufRead,BufNewFile .bash_config set ft=sh syntax=sh
au BufRead,BufNewFile .jshintrc set ft=javascript
au BufRead,BufNewFile *.tt2 setf html
au BufRead,BufNewFile *.tt setf html
au BufRead,BufNewFile *.js.tt set filetype=javascript
au BufRead,BufNewFile Rexfile set filetype=

" ======================== Navigation ======================

" <C-U> Scroll up
" <C-D> Scroll down

" Map window movement
noremap H <C-w>h
noremap J <C-w>j
noremap K <C-w>k
noremap L <C-w>l

" ======================= Copy & Paste =====================
" Requires MacVim
set clipboard+=unnamed  "" Sets all to clipboard
noremap <C-c> "+y " Copy to OS X Buffer

" *note* Lets remap this to something else
set pastetoggle=<C-v> " Paste Mode for OS X pasting

" ======================== Indentation =====================
set autoindent
set smartindent
set shiftwidth=2
set softtabstop=2 " Remove this if you want spaces
set tabstop=2
set expandtab


" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

set linebreak    "Wrap lines at convenient points

" =================== Turn Off Swap Files ==================

set noswapfile
set nobackup
set nowb

" ==================== Persistent Undo =====================
" Keep undo history across sessions, by storing in file.
" Only works all the time.

silent !mkdir ~/.vim/backups > /dev/null 2>&1
set undodir=~/.vim/backups
set undofile

" ====================== Folds =============================

set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

" ====================== Completion ========================

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

" ========================= Scrolling ======================

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1


" ====================== Silly Columns =====================
" Highlight column 80 and don't make it bright red like an idiot would (needs
" to be done after syntax set)
" This breaks auto complete for some reason :-(
highlight ColorColumn guibg=#220000
set colorcolumn=80

" ====================== MacVim Settings ===================

if has("gui_running")
  set guifont=Monaco:h13
  colorscheme solarized
endif

" ---------------------------------------------------------------
" Programing Language Specific Config
" ---------------------------------------------------------------

" ==================== Ruby on Rails ======================
"  - Vim will load/evaluate code in order to provide completions.  This may
"   cause some code execution, which may be a concern. This is no longer
"   enabled by default, to enable this feature add >
     let g:rubycomplete_buffer_loading = 1
"<- In context 1 above, Vim can parse the entire buffer to add a list of
"   classes to the completion results. This feature is turned off by default,
"   to enable it add >
     let g:rubycomplete_classes_in_global = 1
"<  to your vimrc
" - In context 2 above, anonymous classes are not supported.
" - In context 3 above, Vim will attempt to determine the methods supported by
"   the object.
" - Vim can detect and load the Rails environment for files within a rails
"   project. The feature is disabled by default, to enable it add >
     let g:rubycomplete_rails = 1
"<  to your vimrc



" ---------------------------------------------------------------
" Functions
" ---------------------------------------------------------------

" =============== Tab Browsing ===============
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

" Create tabs
map <C-w><C-T> :tabnew<CR>
noremap [n  :tabnew<CR>
noremap tn :tabnew<CR>

" Change tabs
noremap th  :tabfirst<CR>
noremap tj  :tabprev<CR>
noremap tk  :tabnext<CR>
noremap tl  :tablast<CR>
noremap tt  :tabedit<Space>
noremap tm  :tabm<Space>
noremap td  :tabclose<CR>
noremap tc  :tabclose<CR>

" Jump to tabs
noremap t1 1gt
noremap t2 2gt
noremap t3 3gt
noremap t4 4gt
noremap t5 5gt
noremap t6 6gt
noremap t7 7gt
noremap t8 8gt
noremap t9 9gt

" Move tab left or right
map <C-H> :call TabMove(-1)<CR>
map <C-L> :call TabMove(1)<CR>

function! CleverTab()
  if pumvisible()
    return "\<C-N>"
  endif
  if strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
    return "\<Tab>"
  elseif exists('&omnifunc') && &omnifunc != ''
    return "\<C-X>\<C-O>"
  else
    return "\<C-N>"
  endif
endfunction

inoremap <Tab> <C-R>=CleverTab()<CR>


