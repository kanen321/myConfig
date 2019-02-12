set nocompatible                    " Make vim behave more useful way

so ~/.vim/plugins.vim               " Manage plugins by vundle



"-------------- Themes and color --------------
set t_CO=256                    " Number of colors in terminal
colorscheme atom-dark-256       " My Vim TUI color scheme
syntax on       " Enable syntax highlighting

"--------------------UI tweaks--------------------
set linespace=16        " Set the line height
set number              " Show line numbers
set cursorline          " Highlight current line 
filetype indent on      " Load filetype-specific indent files
set noerrorbells       " Disable bell for errors that display messages
set vb t_vb=           " Disable bell for errors that do not display messages
set guioptions-=l      " Hide left scroll bar
set guioptions-=L      " Hide left scroll bar in splitted window
set guioptions-=r      " Hide right hand scroll bar
set guioptions-=R      " Hide right hand scroll bar in splitted window
set showmatch          " Highlight matching {[()]} automatically
set wildmenu           " Visualize autocomplete menu for command
set scrolljump=5       " Lines to scroll when cursor leaves screen
set scrolloff=3        " Minium lines to keep above and below the cursor

" Some tweaks of the atom-dark theme
" Normal fg and bg color
hi Normal        guifg=#eeeeee guibg=#252b3a
" fg and bg color of visual mode
hi Visual        guifg=#cdfbff guibg=#1bb1b2
hi CursorLine                   guibg=#2F374D
hi Cursor           guifg=NONE  guibg=#2196f3
" bg color of line number column
hi LineNr                      guibg=bg




"-------------- Indentation --------------
set tabstop=4                   " Number of spaces per tab
set shiftwidth=4                " Indent 4 columns for << and >> operations
set expandtab                   " Replace tab with space
set autoindent                  " Indent at the same level of the previous line




"-------------- Mappings --------------
let mapleader=','           " Change leader to comma
" Shortcut to open vimrc file quickly
nmap <leader>ev :tabedit ~/.vimrc <CR>
nmap <D-1> :tabn1<CR>
nmap <D-2> :tabn2<CR>
nmap <D-3> :tabn3<CR>
nmap <D-4> :tabn4<CR>
nmap <D-5> :tabn5<CR>
nmap <D-6> :tabn6<CR>
map <D-e> <C-^>




"-------------- Searching --------------
set hlsearch                " Highlight search result
set incsearch               " Search as characters in real time
" Turn off search highlight
nnoremap <leader> <space> :noh<CR>




"--------------------Autocmd--------------------
augroup autosourcing
    " Clear all autocmds in this group
    autocmd!
    " Refresh vimrc automatically after changing setting
    autocmd BufWritePost .vimrc so %
augroup END


"--------------------Backup--------------------
augroup autosourcing
set backup                      " Backup current file
set writebackup                 " Delete old backup
" Directories for the backup files
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
" No backup in these directories
set backupskip=/tmp/*,/private/tmp/*

" Directories for the swp files
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp




"-------------- Split --------------
" Move cursor among windows by ctrl + h / j / k / l
set splitbelow          " Below split the new window
set splitright          " Right split the new window

nmap <C-h> <C-w><C-h>
nmap <C-j> <C-w><C-j>
nmap <C-k> <C-w><C-k>
nmap <C-l> <C-w><C-l> 
" Toggle NERDTree sidebar
nmap <C-n> :NERDTreeToggle<CR>
