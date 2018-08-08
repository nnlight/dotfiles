:map <F11> :source ~/.gvimrc<CR>
"set fileencodings=ucs-bom,utf8,koi8-r
"set encoding=utf8
"nnoremap <C-]> <Esc>:exe "ts " . expand("<cword>")<Esc>

"search the keyword after or under the cursor through ID database
no _] :sp<CR>:! lid -R grep <cword> %:p:h > <C-R>=&errorfile<CR><CR>:cf<CR>

"grep the keyword after or under the cursor in *.[ch]
no _[ :sp<CR>:! find \| grep .*[ch]$ \| xargs grep -ns <cword> > <C-R>=&errorfile<CR><CR>:cf<CR>

:behave mswin
set selectmode=mouse,key
set keymodel=startsel,stopsel   " use shift for text selection

:map <C-x> "+x
:map <C-c> "+y
:map <C-v> "+gP
:imap <C-v> <C-r><C-o>+

:map <S-Del> "+x
:imap <S-Del> "+x
:map <C-Ins> "+y
:imap <C-Ins> "+y

":imap <S-Ins> "*gP
:map <S-Ins> "+gP
:imap <S-Ins> <C-r><C-o>+
" see :help i_ctrl-r_ctrl-o for explanation 


set tag=tags,../tags
set modeline                    " type `:h modeline'
set autoindent                  " type :help autoindent
set cindent                     " 
set sw=4                        " shiftwidth for (auto)indent
set expandtab tabstop=4
"set softtabstop=4
set incsearch
set ignorecase                  " in search patterns
set hls
"set nohls
" for automatic formatting (see also `:h formatoptions')
set formatoptions+=ro           " Automatically insert the current comment leader
autocmd BufRead *.c,*.h,*.cc,*.cpp set cinoptions=>4,p4,t0,+4,{0,}0,:2,=2,e0,^0,(0,)20,*30
"set nowrap
set ruler                       " Show the line and column number
"set equalalways                 " :sp -> spit into equal tabs

"set nobackup                    " do not create backup files
"set nowritebackup
set noswapfile                  " do not create swap files



:syntax on
":colors blue
:set lines=45
:set co=122


  highlight Normal guibg=Darkblue guifg=White
"  highlight Comment	term=bold ctermfg=6 gui=NONE guifg=Green
"  highlight Constant	ctermfg=2 guifg=#dddddd gui=NONE
"  highlight Constant	ctermfg=2 guifg=#ffdddd gui=NONE
"  highlight Constant	ctermfg=2 guifg=#cccccc gui=NONE
"  highlight Constant	ctermfg=2 guifg=#cfffcd gui=NONE
"  highlight Constant	ctermfg=2 guifg=#c7ff90 gui=NONE
"  highlight Constant	ctermfg=2 guifg=#b9ffff gui=NONE
  highlight Global	guifg=#ffa500 gui=bold
  highlight Statement	start=t_md stop=t_me gui=NONE ctermfg=2 guifg=Yellow
autocmd BufRead *.c,*.h,*.cc,*.cpp so $HOME/.vim/ecomp.vim


"see :help section
"   :map [[ ?{<CR>w99[{
"   :map ][ /}<CR>b99]}
"   :map ]] j0[[%/{<CR>
"   :map [] k$][%?}<CR>
:map [[ ][<S-%>


