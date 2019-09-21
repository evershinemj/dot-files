set hlsearch 
set autoindent
syntax on
filetype plugin indent on

" source Vundle-init.vim
source ~/Vundle-init.vim
set modeline
" set modelines=1     "set how many lines at top and bottom to to processed
set modelines=3
" set confirm
" need not press return when messages are less or equal to  3 lines
"
set cmdheight=3  

" set commentstring?

" :set makeprg=gcc\ -o\ $*\ $*

" isfname option affects normal mode command 'gf'
" and insert mode command ''
set isfname-==  " make 'gf' and 'i_' work better

packadd completeall

set complete+=k~/mydict/coding-common

set thesaurus+=~/mydict/phonetic-symbols
set complete+=k~/mydict/phonetic-symbols

set suffixesadd+=.c,.java,.py,.cpp,.h

" set backupdir=~/backups
" let backupext = '-' . strftime('%Y%b%d-%X') . '~'
" autocmd BufRead ~/.vimrc  setlocal backup

" overrides global option 'hidden'
set bufhidden=
" set bufhidden=hidden
" set bufhidden=unload
" set bufhidden=delete

" set buftype=nofile  " used for scratches
" set buftype=nowrite
" set buftype=quickfix

" reset the default path to empty for command line completion consideration
" set path=

" 'path' better includes file in current directory
" otherwise gf doesn't work
set path+=$VIM_HOME

set path+=$VIMLEARNING

" set splitbelow?   default: nosplitbelow
" set splitright?   default: nosplitright

" /* * * * * * * * * * *
"  *   set autochdir   *
"  * * * * * * * * * * */

" PROBLEM SOLVED: vim starts with session file loaded without starting with vim -S <session-file>
" ROOT OF CAUSE: THERE IS A SESSION FILE IN $MYPLUGIN/Session.vim!
" the session file is regarded as a plugin by vim because it's imporperly put
" into plugin directory

" :%s/\v^"(\a)/" \1/gc
" :%s/\v^"(\a)/" \1/gn  " use flag n to just report number of matches without actaul substitution
" :%s/\v^"(\S)/" \1/gn
"
" l flag in :s means last: substitute current match and quit

" it's handy to dynamically set path in ex mode 
" and then use 'find' and 'tabf'

" au QuitPre * !todo -g 
" au QuitPre * exe '!todo -g' . '|' . 'sleep 3' 
" au VimLeave * sleep 5
" au VimLeavePre * exe '!todo -g' . '|' . 'sleep 5'
" au VimLeavePre * exe 'silent ' . '!todo -g' . '|' . 'sleep 5'
" au VimLeavePre * silent exe '!todo -g' . '|' . 'sleep 5'
" au VimLeave * exe '!todo -g' . '|' . 'sleep 5'
au FileAppendPost * echo 'append to a file'
au ShellFilterPost * echo 'filtered with a shell command'
au SessionLoadPost * echo 'loaded a session file'

highlight link cComment Question

" set spelllang+=cjk

" ##################
" # "set autochdir #
" ##################

" IMPORTANT
" must detect filetype for syntax file to work
au BufEnter *.howdoi    setlocal filetype=howdoi

  "  _________________________________
  " /                                 \
  " |  Commands here:                 |
  " \___________________________  __'\
  "                             |/   \\
  "                              \    \\  .
  "                                   |\\/|
  "                                   / " '\
  "                                   . .   .
  "                                  /    ) |
  "                                 '  _.'  |
  "                                 '-'/    \

" /*
"  *  "An exception is a string. Thus it can be matched with a pattern in :catch
"  *
" * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
"  */
"  usr 41.9  :h usr_41
"  Note: :Next(N) is predefined, which is the same as :previous
command MyNext :try | :next | :catch /E165:/ | :echo 'Hey, this is the last file!' | :catch /E163:/ | :echo 'One file only, man!' | :endtry 

command Quit :try | :q | :catch /E37:/ | :echo 'You forgot to save, man!' | :endtry

command -nargs=1 Edit :try | :e <args> | :catch /E37:/ | :echo 'Save before editing another file, my friend!' | :endtry

" in vim80/autoload/javascriptcomplete: javascriptcomplete#CompleteJS
" in vim80/ftplugin/javascript.vim: 
" setlocal omnifunc=javascriptcomplete#CompleteJS(findstart, base)
" set omnifunc?  omnifunc=javascriptcomplete#CompleteJS
"
" in vim80/autoload/htmlcomplete: htmlcomplete#CompleteTags
" in vim80/ftplugin/html.vim: 
" setlocal omnifunc=htmlcomplete#CompleteTags(findstart, base)
" set omnifunc?  omnifunc=htmlcomplete#CompleteTags
"
" in vim80/autoload/csscomplete: csscomplete#CompleteCSS
" in vim80/ftplugin/css.vim: 
" setlocal omnifunc=csscomplete#CompleteCSS(findstart, base)
" set omnifunc?  omnifunc=csscomplete#CompleteCSS
"
" in vim80/autoload/ccomplete: ccomplete#Complete
" in vim80/ftplugin/c.vim:
" setlocal ofu=ccomplete#Complete(findstart, base)
"
" in vim80/autoload/pythoncomplete: pythoncomplete#Complete
" in vim80/ftplugin/python.vim:
" setlopythonal ofu=pythoncomplete#Complete(findstart, base)
"
  "  _________________________________
  " /                                 \
  " |  Functions here:                |
  " \___________________________  __'\
  "                             |/   \\
  "                              \    \\  .
  "                                   |\\/|
  "                                   / " '\
  "                                   . .   .
  "                                  /    ) |
  "                                 '  _.'  |
  "                                 '-'/    \

function Spring() range
    :execute a:firstline . "," . a:lastline . "!boxes -f $BOXES_SYS_CONF -d 'spring'"
endfunction

function Parchment() range
    :execute a:firstline . "," . a:lastline . "!boxes -f $BOXES_SYS_CONF -d 'parchment'"
endfunction

function C() range
    :execute a:firstline . "," . a:lastline . "!boxes -f $BOXES_SYS_CONF -d 'c'"
endfunction

function Vimcmt() range
    :execute a:firstline . "," . a:lastline . "!boxes -f $BOXES_SYS_CONF -d 'vim-cmt'"
endfunction

function Sunset() range
    :execute a:firstline . "," . a:lastline . "!boxes -f $BOXES_SYS_CONF -d 'sunset'"
endfunction

function Twisted() range
    :execute a:firstline . "," . a:lastline . "!boxes -f $BOXES_SYS_CONF -d 'twisted'"
endfunction

function Unicornsay() range
    :execute a:firstline . "," . a:lastline . "!boxes -f $BOXES_SYS_CONF -d 'unicornsay'"
endfunction

function Mouse() range
    :execute a:firstline . "," . a:lastline . "!boxes -f $BOXES_SYS_CONF -d 'mouse'"
endfunction

function Javadoc() range
    :execute a:firstline . "," . a:lastline . "!boxes -f $BOXES_SYS_CONF -d 'javadoc'"
endfunction

function Javacmt() range
    :execute a:firstline . "," . a:lastline . "!boxes -f $BOXES_SYS_CONF -d 'java-cmt'"
endfunction

function Ian_jones() range
    :execute a:firstline . "," . a:lastline . "!boxes -f $BOXES_SYS_CONF -d 'ian_jones'"
endfunction

function Xes() range
    :execute a:firstline . "," . a:lastline . "!boxes -f $BOXES_SYS_CONF -d 'xes'"
endfunction

function Whirly() range
    :execute a:firstline . "," . a:lastline . "!boxes -f $BOXES_SYS_CONF -d 'whirly'"
endfunction

function Tjc() range
    :execute a:firstline . "," . a:lastline . "!boxes -f $BOXES_SYS_CONF -d 'tjc'"
endfunction

function Simple() range
    :execute a:firstline . "," . a:lastline . "!boxes -f $BOXES_SYS_CONF -d 'simple'"
endfunction

function Shell() range
    :execute a:firstline . "," . a:lastline . "!boxes -f $BOXES_SYS_CONF -d 'shell'"
endfunction

function Poundcmt() range
    :execute a:firstline . "," . a:lastline . "!boxes -f $BOXES_SYS_CONF -d 'pound-cmt'"
endfunction

function Scroll() range
    :execute a:firstline . "," . a:lastline . "!boxes -f $BOXES_SYS_CONF -d 'scroll'"
endfunction

function Peek() range
    :execute a:firstline . "," . a:lastline . "!boxes -f $BOXES_SYS_CONF -d 'peek'"
endfunction

function Nuke() range
    :execute a:firstline . "," . a:lastline . "!boxes -f $BOXES_SYS_CONF -d 'nuke'"
endfunction

function Html() range
    :execute a:firstline . "," . a:lastline . "!boxes -f $BOXES_SYS_CONF -d 'html'"
endfunction

function Htmlcmt() range
    :execute a:firstline . "," . a:lastline . "!boxes -f $BOXES_SYS_CONF -d 'html-cmt'"
endfunction

function Columns() range
    :execute a:firstline . "," . a:lastline . "!boxes -f $BOXES_SYS_CONF -d 'columns'"
endfunction

function Ccmt() range
    :execute a:firstline . "," . a:lastline . "!boxes -f $BOXES_SYS_CONF -d 'c-cmt'"
endfunction

function Ccmt2() range
    :execute a:firstline . "," . a:lastline . "!boxes -f $BOXES_SYS_CONF -d 'c-cmt2'"
endfunction

" path might be set several times by different initialization files
" so two entries in path might be the same
" set path?   path=...,,,... "same blank entries
" set path+=..

augroup lyrics
    au!
    "the execute command recognizes '|' as the separator of commands
    au VimLeave ~/lyrics/*      execute "argdo %s///g" . "|" . "write"
augroup END

" Lacks {event}!
" :au *.c,*.java,*.py,*.cpp   execute "inoremap ( ()<Esc>i<CR> | inoremap [ []<Esc>i<CR>"
" inoremap ( ()<Esc>i | inoremap [ []<Esc>i
" NOTE: this would result in ( mapped to ( ): there is a space before |
:augroup matchparen
    :au!
    :au BufEnter *.c,*.java,*.py,*.cpp   inoremap ( ()<Esc>i|inoremap [ []<Esc>i
:augroup END

" imap a b | imap c d

" append '-d .' to javac to automatically create
" packages as directories
" au FileType java set makeprg=javac -d .
"
"  / ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ \
" |  /~~\                                          /~~\  |
" |\ \   |  " set makeprg in filetype plugin      |   / /|
" | \   /|  " au FileType java set makeprg=javac  |\   / |
" |  ~~  |                                        |  ~~  |
" |      |                                        |      |
"  \     |~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~|     /
"   \   /                                          \   /
"    ~~~                                            ~~~
"
au FileType c,cpp,java set mps+==:;
" e for error messages
" default  e:ErrorMsg
" au BufWritePost ~/mydict/**     echo 'file sorted' | %sort
" s/\(echo.*\) | \(%sort\)/\2 | \1/  
" " need to escape ( and ) to make them meta chars
au BufWritePost ~/mydict/**     %sort | echo 'file sorted'
set highlight=e:ErrorMsg
set highlight=i:IncSearch
set highlight=d:Directory
set highlight=v:Visual
set highlight=V:VisualNOS  "visual mode selection not owned by vim  "default blue
set highlight=M:ModeMsg
set highlight=n:LineNr
set highlight=s:StatusLine
" customize highlight groups
set highlight=e:Search  
" set highlight+=v:IncSearch  
set highlight+=M:Directory  "change mode information to blue
" set highlight+=n:ErrorMsg
" set highlight=s:LineNr
set more
" set highlight=v:IncSearch
" set highlight=v:Directory
set shortmess+=w    "turn 'written' into '[w]' in messages
set shortmess-=l    "turn 'L' to lines and 'C' to characters
set statusline=the\ file\ name\ is\ \"%f\"
set statusline=%8.19f   "filename at least 8, at most 19 chars
set listchars+=tab:t~
set listchars+=trail:@
set listchars+=extends:>  "can be seen when 'wrap' is off
" set listchars+=space:^
set nowarn  "when issue a shell command with modified buffer, give no warning
set errorbells
set visualbell    "screen flashes when an error occur
set shiftround
set cursorline
set laststatus=2 "default 1
set selectmode=key
set keymodel=startsel
" set matchpairs+=<:>,':'
" set numberwidth=5
" set report?  "if report is set to 0 every linewise change will issue a
" message

sign define first text=>> texthl=Search
" exe "sign place 1 name=first line=1 file=" . expand("%:p")

" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function Include()
    " Get the current line
    let l:line = getline(".")

    let l:dir_list = split(&path, ",")
    " Loop through the local dirs looking for the file
    for l:cur_dir in l:dir_list
        if(filereadable(l:cur_dir . "/" . l:line))

            " System directory?
            if(match(l:cur_dir, "/usr/include") == 0)

                " Put the #include in the right place
                let l:line = "#include<" . l:line . ">"
            else
                " Put the #include in the right place
                let l:line = "#include\"" . l:line . "\""
            endif

            call setline(".", l:line)
            return
        endif
    endfor
endfunction
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" use unmap
" by default,  is the same as h 
" effect of using original  on 'trailing' in the next line: 3b<Space><Space>
" note: two trailing spaces on the next line! "use map or nmap to see the effect 
" map  3b  
map  3b
map  3w
ounmap 
ounmap 

" enter  with 019 or 19<Space>(any non-digit following is dealt with in the normal way)
" thus 19a results in a

" vap !boxes -f $BOXES_SYS_CONF -r
"

"  v}
"  _________________________
" /\                        \
" \_| 032: <Space>         |
"   | 048: 0               |
"   | 065: A               |
"   | 097: a               |
"   | o033:               |
"   | o33<Space>: <Space> |
"   |   ____________________|_
"    \_/______________________/

" map the Ctrl key by typing <C-V> <C-...>
" map  dd
" noremap  
" the above mappings shouldn't be set simultaneously

nmap ,uc !!boxes -f $BOXES_SYS_CONF -d unicornsay<CR>
nmap ,ruc !!boxes -f $BOXES_SYS_CONF -d unicornsay -r<CR>
vmap ,uc !boxes -f $BOXES_SYS_CONF -d unicornsay<CR>
vmap ,ruc !boxes -f $BOXES_SYS_CONF -d unicornsay -r<CR>
nmap ,sp !!boxes -f $BOXES_SYS_CONF -d spring<CR>
nmap ,rsp !!boxes -f $BOXES_SYS_CONF -d spring -r<CR>
vmap ,sp !boxes -f $BOXES_SYS_CONF -d spring<CR>
vmap ,rsp !boxes -f $BOXES_SYS_CONF -d spring -r<CR>
nmap ,su !!boxes -f $BOXES_SYS_CONF -d sunset<CR>
nmap ,rsu !!boxes -f $BOXES_SYS_CONF -d sunset -r<CR>
vmap ,su !boxes -f $BOXES_SYS_CONF -d sunset<CR>
vmap ,rsu !boxes -f $BOXES_SYS_CONF -d sunset -r<CR>
nmap ,mo !!boxes -f $BOXES_SYS_CONF -d mouse<CR>
nmap ,rmo !!boxes -f $BOXES_SYS_CONF -d mouse -r<CR>
vmap ,mo !boxes -f $BOXES_SYS_CONF -d mouse<CR>
vmap ,rmo !boxes -f $BOXES_SYS_CONF -d mouse -r<CR>

" mc for make comment
" use :global and :normal to insert '-f $BOXES_SYS_CONF '
"
" autocmd BufEnter * nmap ,mc !!boxes -f $BOXES_SYS_CONF -d pound-cmt<CR>
" autocmd BufEnter * vmap ,mc !boxes -f $BOXES_SYS_CONF -d pound-cmt<CR>
" autocmd BufEnter * nmap ,xc !!boxes -f $BOXES_SYS_CONF -d pound-cmt -r<CR>
" autocmd BufEnter * vmap ,xc !boxes -f $BOXES_SYS_CONF -d pound-cmt -r<CR>
" autocmd BufEnter *.html nmap ,mc !!boxes -f $BOXES_SYS_CONF -d html-cmt<CR>
" autocmd BufEnter *.html vmap ,mc !boxes -f $BOXES_SYS_CONF -d html-cmt<CR>
" autocmd BufEnter *.html nmap ,xc !!boxes -f $BOXES_SYS_CONF -d html-cmt -r<CR>
" autocmd BufEnter *.html vmap ,xc !boxes -f $BOXES_SYS_CONF -d html-cmt -r<CR>
" autocmd BufEnter *.[chly],*.[pc]c nmap ,mc !!boxes -f $BOXES_SYS_CONF -d c-cmt<CR>
" autocmd BufEnter *.[chly],*.[pc]c vmap ,mc !boxes -f $BOXES_SYS_CONF -d c-cmt<CR>
" autocmd BufEnter *.[chly],*.[pc]c nmap ,xc !!boxes -f $BOXES_SYS_CONF -d c-cmt -r<CR>
" autocmd BufEnter *.[chly],*.[pc]c vmap ,xc !boxes -f $BOXES_SYS_CONF -d c-cmt -r<CR>
" autocmd BufEnter *.C,*.cpp,*.java nmap ,mc !!boxes -f $BOXES_SYS_CONF -d java-cmt<CR>
" autocmd BufEnter *.C,*.cpp,*.java vmap ,mc !boxes -f $BOXES_SYS_CONF -d java-cmt<CR>
" autocmd BufEnter *.C,*.cpp,*.java nmap ,xc !!boxes -f $BOXES_SYS_CONF -d java-cmt -r<CR>
" autocmd BufEnter *.C,*.cpp,*.java vmap ,xc !boxes -f $BOXES_SYS_CONF -d java-cmt -r<CR>
" autocmd BufEnter .vimrc*,.exrc nmap ,mc !!boxes -f $BOXES_SYS_CONF -d vim-cmt<CR>
" autocmd BufEnter .vimrc*,.exrc vmap ,mc !boxes -f $BOXES_SYS_CONF -d vim-cmt<CR>
" autocmd BufEnter .vimrc*,.exrc nmap ,xc !!boxes -f $BOXES_SYS_CONF -d vim-cmt -r<CR>
" autocmd BufEnter .vimrc*,.exrc vmap ,xc !boxes -f $BOXES_SYS_CONF -d vim-cmt -r<CR>

autocmd BufReadPost * nmap ,mc !!boxes -f $BOXES_SYS_CONF -d pound-cmt<CR>
autocmd BufReadPost * vmap ,mc !boxes -f $BOXES_SYS_CONF -d pound-cmt<CR>
autocmd BufReadPost * nmap ,xc !!boxes -f $BOXES_SYS_CONF -d pound-cmt -r<CR>
autocmd BufReadPost * vmap ,xc !boxes -f $BOXES_SYS_CONF -d pound-cmt -r<CR>
autocmd BufReadPost *.html nmap ,mc !!boxes -f $BOXES_SYS_CONF -d html-cmt<CR>
autocmd BufReadPost *.html vmap ,mc !boxes -f $BOXES_SYS_CONF -d html-cmt<CR>
autocmd BufReadPost *.html nmap ,xc !!boxes -f $BOXES_SYS_CONF -d html-cmt -r<CR>
autocmd BufReadPost *.html vmap ,xc !boxes -f $BOXES_SYS_CONF -d html-cmt -r<CR>
autocmd BufReadPost *.[chly],*.[pc]c nmap ,mc !!boxes -f $BOXES_SYS_CONF -d c-cmt<CR>
autocmd BufReadPost *.[chly],*.[pc]c vmap ,mc !boxes -f $BOXES_SYS_CONF -d c-cmt<CR>
autocmd BufReadPost *.[chly],*.[pc]c nmap ,xc !!boxes -f $BOXES_SYS_CONF -d c-cmt -r<CR>
autocmd BufReadPost *.[chly],*.[pc]c vmap ,xc !boxes -f $BOXES_SYS_CONF -d c-cmt -r<CR>
autocmd BufReadPost *.C,*.cpp,*.java nmap ,mc !!boxes -f $BOXES_SYS_CONF -d java-cmt<CR>
autocmd BufReadPost *.C,*.cpp,*.java vmap ,mc !boxes -f $BOXES_SYS_CONF -d java-cmt<CR>
autocmd BufReadPost *.C,*.cpp,*.java nmap ,xc !!boxes -f $BOXES_SYS_CONF -d java-cmt -r<CR>
autocmd BufReadPost *.C,*.cpp,*.java vmap ,xc !boxes -f $BOXES_SYS_CONF -d java-cmt -r<CR>
autocmd BufReadPost .vimrc*,.exrc nmap ,mc !!boxes -f $BOXES_SYS_CONF -d vim-cmt<CR>
autocmd BufReadPost .vimrc*,.exrc vmap ,mc !boxes -f $BOXES_SYS_CONF -d vim-cmt<CR>
autocmd BufReadPost .vimrc*,.exrc nmap ,xc !!boxes -f $BOXES_SYS_CONF -d vim-cmt -r<CR>
autocmd BufReadPost .vimrc*,.exrc vmap ,xc !boxes -f $BOXES_SYS_CONF -d vim-cmt -r<CR>

" autocmd BufReadPost .vimrc*,.exrc nmap ,uc !!boxes -f $BOXES_SYS_CONF -d unicornsay|boxes -f $BOXES_SYS_CONF -d vim-cmt<CR>
" autocmd BufReadPost .vimrc*,.exrc vmap ,xuc !boxes -f $BOXES_SYS_CONF -d vim-cmt -r|boxes -f $BOXES_SYS_CONF -d unicornsay -r<CR>
" autocmd BufReadPost .vimrc*,.exrc nmap ,uc !!boxes -f $BOXES_SYS_CONF -d unicornsay|boxes -f $BOXES_SYS_CONF -d vim-cmt<CR>
" autocmd BufReadPost .vimrc*,.exrc vmap ,xuc !boxes -f $BOXES_SYS_CONF -d vim-cmt -r|boxes -f $BOXES_SYS_CONF -d unicornsay -r<CR>

" iabbrev -- ---------------------------------------------------------
" better use inoreabbrev
" abbr automatically adds a space at the end
"
" inoreabbrev -- ---------------------------------------------------------

" CAUTION: DON'T USE :imap ## #############
" remapping exhausts computer resources!
" using :inoremap ## ############# is fine, though
" ############################################################################
" # inoremap ## ############################################################ #
" ############################################################################

" set gdefault

" inoreabbrev {lhs} {rhs}

" set comments?
" set keymodel+=stopsel
set splitbelow "default nosplitbelow
set splitright "default nosplitright
" set cursorcolumn
set expandtab
" set smarttab
" %retab
set complete-=t
" set cedit? "default: 
" set viewdir?
" set breakat?
" BufRead is the same as BufReadPost
" whereas BufWrite is the same as BufWritePre

" set backupext&    "default: ~
autocmd BufReadPre ~/.bash_profile	set backup | echo 'set backup'
autocmd BufReadPre ~/.bashrc		set backup | echo 'set backup'
autocmd BufReadPre ~/.zshrc             set backup | echo 'set backup'
autocmd BufWritePost ~/.bash_profile	set nobackup | echo 'set nobackup'
autocmd BufWritePost ~/.bashrc		set nobackup | echo 'set nobackup'
autocmd BufWritePost ~/.zshrc		set nobackup | echo 'set nobackup'

" autocmd BufReadPre ~/.bash_profile,~/.bashrc,~/.zshrc	set virtualedit=all
" autocmd BufWritePost ~/.bash_profile,~/.bashrc,~/.zshrc	set virtualedit=

" autocmd BufWritePre *	    set spell

" ###################################################################################
" # " NOTE:                                                                         #
" # " *    matches any sequence of characters; Unusual: includes path separators    #
" # " advantage of using 'tags'(default) as tags filename:                          #
" # " vim has special syntax highlight for the 'tags' file                          #
" # " advantage of using a customized tags filename:                                #
" # " easy to identify                                                              #
" # autocmd BufWritePost ~/c/*,~/cpp/*,~/java/*,~/python/*  call system('ctags -R') #
" # autocmd BufWritePost ~/c/*.c            !ctags -f ctags ~/c/*.c                 #
" # autocmd BufWritePost ~/python/*.py      !ctags -f pytags ~/python/*.py          #
" # " ~/java/*.java could mean ~/java/.../*.java                                    #
" # " autocmd BufWritePost ~/java/*.java      !ctags -f javatags ~/java/*.java      #
" # autocmd BufWritePost ~/java/*.java      !ctags -f javatags *.java               #
" # autocmd BufWritePost ~/cpp/*.cpp        !ctags -f cpptags ~/cpp/*.cpp           #
" #                                                                                 #
" ###################################################################################
"
" automatically add comment header after pressing enter
autocmd FileType *                  set formatoptions+=ro

" allow virtualedit in visual block mode/insert mode/all modes
" set virtualedit=block|insert|all

" :nmap
" :imap
" :vmap
" :omap

" map <unique> ,br	:tabedit ~/.bashrc<CR>
noremap <unique> ,br	:tabedit ~/.bashrc<CR>
" map <unique> ,zsh	:tabedit $ZSH<CR>
" packadd ...
" let mapleader = '\'
" let maplocalleader = ','
let Tlist_Auto_Open = '1'
" set packpath? 
" nohlsearch "temporarily turns off highlight search

" imap <F2> <CR>Date: <Esc>:read !date<CR>k
" map <F2> oDate: <Esc>:read !date<CR>k
" nnoremap <silent> <F8> :TlistToggle<CR>

" inoremap  #in #include<stdio.h><CR>int main(){<CR><CR>}<Esc>ki<Tab>
" when starting vim with vim -u .vimrc, compatible is set on.
" to prevent that, nocompatible is set here 
set nocompatible

" print each file that is sourced
" set verbose=2
set verbosefile=~/verbosefile
" unlet! skip_defaults_vim
" source $VIMRUNTIME/defaults.vim
" set tildeop
" set cindent   "the cindent option is useful for C programs
" colorscheme evening
" colorscheme morning
" colorscheme industry
" colorscheme blue
colorscheme default
set smartindent
set lines=30 "default 24
set columns=90 "default 80 
" cinwords=if,else,while,do,for,switch
set cinwords+=until,def,class
" autocmd BufWritePre *  call system("say 'this buffer is to be written!'")
set tagbsearch "default on; assuming a sorted tags file, thus using binary search to make tag searching much faster
" set filetype "use this command to show the filetype of the
" current file
" confirm edit ...
" autocmd BufWritePre * echo "this buffer is to be written"
" autocmd BufWritePost * call system("say 'this buffer has been written'")
" autocmd BufWrite *.c call system("say 'a C buffer is being written'")
" BufCreate is same as BufAdd
" autocmd BufCreate * call system("say 'creating a new buffer'")
" autocmd BufDelete * call system("say 'deleting a buffer'")
" autocmd BufRead *.txt call system("say 'a text buffer is being read'")
" autocmd BufReadPre *.cpp !cal
" autocmd BufReadPost *.java !echo "a java buffer has been read"
" autocmd BufEnter * call system("say 'entering a buffer'")
" autocmd BufWinEnter * call system("say 'entering a buffer in a window'")
" autocmd BufWinLeave * call system("say 'leaving a buffer from a window'")
" autocmd BufLeave * call system("say 'leaving a buffer'")
" autocmd FileReadPre * call system("say 'a file is to be read'")
" autocmd FileReadPost * echo "a file has been read"
" autocmd FileType * echo "the filetype option has been set"
" autocmd Syntax * !echo "the syntax option has been set"
" autocmd VimEnter * call system("say 'welcome to use vim!'")
" autocmd VimLeavePre * echo "about to write the viminfo file"
" autocmd VimLeave * call system("say 'thank you for using vim!'")
" autocmd QuitPre * call system("say 'you have pressed quit'")
" autocmd ShellCmdPost * call system("say 'you have executed a shell command'")
"
" autocmd ShellFilterPost * call system("say 'you have filtered text through a shell command'")
"
" autocmd CmdUndefined * call system("say 'this command is undefined'")
" autocmd FuncUndefined * call system("say 'this function is undefined'")
" autocmd SourcePre * call system("say 'you are about to source a vim script'")
" autocmd VimResized * call system("say 'Vim is resized'")
" autocmd FocusGained * call system("say 'Vim has gained focus'")
" autocmd FocusLost * call system("say 'Vim has lost focus'")
" autocmd CursorMoved * echo "cursor has moved in normal mode"
" autocmd CursorMovedI * echo "cursor has move in insert mode"
" autocmd WinNew * echo "opening a new window"
" autocmd TabNew * echo "opening a new tab"
" autocmd WinEnter * echo "entering a new window"
" autocmd WinLeave * echo "leaving a new window"
" autocmd TabEnter * echo "entering a new tab"
" autocmd TabLeave * echo "leaving a tab"
" autocmd InsertEnter * echo "entering insert mode"
" autocmd InsertLeave * echo "leaving insert mode"
" autocmd TextChanged * echo "text has changed in normal mode"
" autocmd TextChangedI * echo "text has changed in insert mode"
" autocmd ColorScheme * call system("say 'a new colorscheme has been loaded'")
" autocmd MenuPopup * echo "showing a popup menu"
" autocmd CompleteDone * call system("say 'autocomplete is done'")
" autocmd CompleteDone * echo('autocomplete is done')
iabbrev #b /*************************************************
iabbrev #e <Space>*************************************************/
abbreviate teh the
" abbreviations are triggered by a chracter
" that can't be part of a word, such as a space
" the expansion doesn't happen when typing just "ad"
" this is different from mapping
" iabbrev ad advertisement
iabbrev happi happiness
iabbrev mem memory
" iabbrev resp responsibility
" shorthand
"
" abbrev dev development
"
" set foldcolumn=4
set foldclose=all
set foldmethod=manual "default
" set foldmethod=indent
" set foldmethod=marker
set foldlevel=3 "default zero
" set tags=./tags,./../tags,./*/tags
" set tags=./tags
set tags& "default: ./tags,tags
" set tags+=~/proj/**/tags "note the ** syntax
" set tags+=~/Documents/javasrc/tags
set previewheight=5 "default 12
" set path+=/usr/*/include
" args *.c
" argdo %s/\<void\>/int/ge | update
"
set nowrapscan
set startofline "default on
" set magic "default on
set softtabstop=4
set tabstop=8 "default and recommended value
" line breaks are automatically added if a line gets longer
" than 60 words
set smartcase
" set textwidth=60
" set linebreak
" runtime! ftplugin/man.vim
set showmatch
map <Up> gk
map <Down> gj
set dictionary=/usr/share/dict/words
set nrformats -=octal
set nrformats +=alpha
" checkpath "use this command to check which included files
" cannot be found in 'path'
" chechpath! "use this command to found which files are
" included
set guioptions+=b "horizontal scrollbar default off
set guioptions+=T
" set matchtime=15
set iskeyword+=-
set shiftwidth=4 "default is 8; used to specify the indent of >>
set updatetime=4000 " this is the default
set wildmenu
" cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h') . '/' : '%%'
" set sessionoptions+=resize
" :swapname
" :preserve
" set backup
" set backupext=.bak
" set patchmode=.orig
set winheight=2
set winminheight=2
" set equalalways
" saveas ...
" file ... 
" set autowrite
set scrolloff=5
set sidescrolloff=10
set scroll=10 "this changes the number of lines moved by Ctrl+U and Ctrl+D
set sidescroll=10 "this changes the number of new columns displayed each time the cursor hits the border
" set cmdheight=3
set nolist

" insert parentheses
" map <Leader>p i(<Esc>ea)<Esc>
" equivalent => map \p i(<Esc>ea)<Esc>
"
" insert curly braces
" map <Leader>b i{<Esc>ea}<Esc>
" equivalent =>map \c i{<Esc>ea}<Esc>
"
set ruler
set showcmd
set incsearch
" set wrap
" set backspace=indent,eol,start
set modifiable
set write
" set nomodifiable
" set nowrite
" set updatecount=200
" set noswapfile
set nu
syntax on "this triggers ':filetype on'"
" set spell
" map <unique> <Leader>a GouniqueLeader<Esc>
" map abc ogoodmorning!<Esc>
" omap <F7> a{
map <Space> W
" imap pu public
" imap pr private
" iabbre pr private
" imap vo void


command! DeleteFirst 1delete
" command! -nargs=+ Say :echo "<args>"

if !exists("*F3")
  source ~/F3.vim
endif
if !exists("*Show")
  source ~/Show.vim
endif
if !exists("*Count_words")
  source ~/Count_words.vim
endif
if !exists("*Number")
  source ~/Number.vim
endif
if !exists("*Min")
  source ~/Min.vim
endif 
if !exists("*matchstr")
  source ~/matchstr.vim
endif

source ~/wxm.vim
