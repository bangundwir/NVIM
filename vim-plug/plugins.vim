" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    Plug 'tpope/vim-surround'
	"Plug Theme
    Plug 'morhetz/gruvbox'
    Plug 'joshdick/onedark.vim'
    "theme
    Plug 'preservim/nerdtree'
    Plug 'junegunn/goyo.vim'
    Plug 'jreybert/vimagit'
    Plug 'lukesmithxyz/vimling'
    Plug 'vimwiki/vimwiki'
    Plug 'bling/vim-airline'
		Plug 'vim-airline/vim-airline-themes'
    Plug 'tpope/vim-commentary'
    Plug 'ap/vim-css-color'
    Plug 'mattn/emmet-vim'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install()   }   }
    Plug 'junegunn/fzf.vim'
    Plug 'Luochen1990/rainbow'
    Plug 'aaren/arrowkeyrepurpose'
    Plug 'EinfachToll/DidyouMean'
    Plug 'dense-analysis/ale'
    Plug 'pangloss/vim-javascript'
    Plug 'leafgarland/typescript-vim'

    "new
    Plug 'mbbill/undotree'
    Plug 'tpope/vim-commentary'

    call plug#end()
