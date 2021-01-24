# NVIM

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
