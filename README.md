# NVIM

## Install
- sudo apt-get install neovim
## Install vim-plug
###### Unix, Linux
https://github.com/junegunn/vim-plug

```sh
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

## Install TMUX
https://github.com/gpakosz/.tmux

## My Configuration 
- Setting Vim
    - Memperbarui Pengaturan
        - source $
    - Pindah ke file lain
        - ,,
    - Membuat File baru
        - :w
    - Membuka File
        - :e   
    - Copy Paste Lansung Banyak
        - Y2p
    - Cara run Code
        - Python
            - Menjalan kan dengan cara F9
                - autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
                - autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
        - Javascript/NodeJs
            - Cara Menjalankanya dengan cara (,n) 
                - nnoremap ,n :!node "%"<CR>
    - Cara Paste file di vim dengan mengunakan `Ctrl + Shift + v`
    - Cara Mengunakan emmet
        - cara menjalankan emmet dengan perintah `ctrl+y,`
        - html:5 
        - h1+ul>(li>a)*10
        - h1+ul>(li>a>img)*10
    - Navigasi wrap
        - warp < , z>
        - nowarp <, x>
       
 ### NVIM v-.7.0-dev
 ```
 sudo add-apt-repository ppa:neovim-ppa/unstable
 sudo apt-get update
 sudo apt-install neovim
 ```
