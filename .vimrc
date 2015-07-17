" Vim starter kit configuration file. Specifies how you want your editor to
" behave when you press buttons.
" Author:        Alex Chu (http://github.com/arctangent1759)
" Homepage:      http://github.com/arctangent1759/vim-starter-kit
" Version:       0.0.0
"
" Various vim configs for inspiration:
"   http://github.com/Arctangent1759/vim-stuff
"   http://github.com/CollinJ/dotfiles/blob/master/.vimrc
"   https://github.com/zachlatta/dotfiles/blob/master/vimrc

" Disable vi compatibility. This makes your vim config incompatible with
" really old legacy systems, but lets you use all the awesome new features
" that vim provides.
set nocompatible

" Set up the Vundle package manager. Vundle is a popular package manager for
" vim that can install and manage plugins from Github or vim.org. There are
" alternatives like Pathogen, but Vundle is the one I find the easiest to use.
" See documentation at https://github.com/gmarik/Vundle.vim
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle.
" To install plugins, just add 'Plugin <Github or vim.org path here>' here.
" For example:
" Plugin 'bling/vim-airline'

Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'bling/vim-airline'
Plugin 'tomasr/molokai'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'

call vundle#end()
filetype plugin indent on

"YCM Stuff
let g:ycm_global_ycm_extra_conf = '~/.vim/ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0

" Set your leader key here. The leader key is an interface used by a lot of
" plugins to namespace their commands from the ones provided by default in
" vim. What this means is that the leader key is your new best friend, because
" it will let you interact with all sorts of useful plugins while in normal
" mode. Mine is set below. Feel free to change it.
let mapleader=";"

" This enables syntax highlighting, making coding that much more awesome.
syntax enable

" set 80 characters per lin
set formatoptions+=w
set tw=80

" to deal with tmux colors
set term=screen-256color

" Enables clearer view of airline"
set t_Co=256
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

"" powerline symbols
"let g:airline_left_sep = ''
"let g:airline_left_alt_sep = ''
"let g:airline_right_sep = ''
"let g:airline_right_alt_sep = ''
"let g:airline_symbols.branch = ''
"let g:airline_symbols.readonly = ''
"let g:airline_symbols.linenr = ''
"
"" old vim-powerline symbols
"let g:airline_left_sep = '⮀'
"let g:airline_left_alt_sep = '⮁'
"let g:airline_right_sep = '⮂'
"let g:airline_right_alt_sep = '⮃'
"let g:airline_symbols.branch = '⭠'
"let g:airline_symbols.readonly = '⭤'
"let g:airline_symbols.linenr = '⭡'

" Set the colorscheme to molokai 
let g:molokai_original = 1
colorscheme molokai

" Notifies vim of your terminal background preferences. This changes the
" behavior of the colorscheme to enhance contrast.
set background=light

" Line numbering. To disable, run :set nonumber.
set number

" Makes the backspace key not break on cygwin and some old terminals.
set backspace=indent,eol,start 

" Smart tabbing behavior based on the tabbing level of the last line.
set smarttab

" Code with 2 spaces.
set tabstop=2
set shiftwidth=2
set expandtab

" highlight all matches.
set hlsearch
"This unsets the "last search pattern" register by hitting return
nnoremap <CR> :noh<CR><CR>
" incremental search
set incsearch
" ignore case when searching
set ignorecase
" no ignorecase if Uppercase char present
set smartcase

"spellchecker
setlocal spell spelllang=en_us
" Make 81st column standout
highlight ColorColumn ctermbg=magenta

" Shows the command you're entering into normal mode in the status bar.
set showcmd

" Pretty completion menu for command mode.
set wildmenu
set wildignore=*.o,*~,*.pyc

" Makes unicode characters display nicely.
set encoding=utf-8

" No swaps. Swaps are annoying. If you expect your terminal to crash
" regularly, and want vim to back up your work, you might want to remove this.
set noswapfile

" Mappings. These change the things that happen when you press buttons in
" certain modes. The first character of each command determines the mode in
" which the mapping is active. Here are some common ones:
"  Character | Mode
" -----------|-------------
"      n     | normal
"      i     | insert
"      c     | command
"      v     | visual
"      o     | operator
"    blank   | all modes
" The 'noremap' means that each mapping is independent of other mappings. This
" is the recommended way to write vim mappings.
"
" A couple of mappings that I'm particularly fond of. They're commented out in
" case you want to develop and learn your own keybindings.  Uncomment them if
" you want to use them.

" Allows you to exit insert mode into normal mode by tapping jk. With this
" mapping, you won't have to reach for the escape key as often. It's good for
" beginners because it encourages them to go into normal mode more often,
" rather than just using the arrow keys to get around a document. The author
" of Learn Vimscript the Hard Way lists a couple of good reasons why this
" mapping is elegant:
" http://learnvimscriptthehardway.stevelosh.com/chapters/10.html
" inoremap jk <esc>

" Allows copying and pasting from the system clipboard using control c and
" control v on vim installations compiled with x11 support. Usually, this is
" true if you have gvim installed.
" vnoremap <c-c> "+y
" nnoremap <c-c> "+y
" vnoremap <c-v> "+p
" nnoremap <c-v> "+p

" map semicolon to colon
" nnoremap ; :
" nnoremap : ;

