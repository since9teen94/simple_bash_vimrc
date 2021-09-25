"leader key to space bar
let mapleader = "\<space>"
"emmet expansion key is /'
let g:user_emmet_expandabbr_key = "/\'"
"remap escape to jj in insert mode
inoremap jj <esc>
"a quality of life with the jk keys
inoremap jk <esc>O
"use alt+j to navigate autocompletes
inoremap <esc>j <c-n>
"use alt+k to navigate autocompletes
inoremap <esc>k <c-p>
"use alt+t to navigate line autocompletes
inoremap <esc>t <c-x><c-l>
"use alt+a,o,e,u,i in insert mode to easily insert registers
inoremap <esc>a <c-r>a
inoremap <esc>o <c-r>o
inoremap <esc>e <c-r>e
inoremap <esc>u <c-r>u
inoremap <esc>i <c-r>i
"use alt+a,o,e,u,i in normal mode to easily fill registers
nnoremap <esc>a "ayiw
nnoremap <esc>o "oyiw
nnoremap <esc>e "eyiw
nnoremap <esc>u "uyiw
nnoremap <esc>i "iyiw
"react error, with usestate, when the usestate line is set up
nnoremap <esc>r yypf[wwiError<esc>wwwiError<esc>
"quick save with leader s
nnoremap <leader>s :w<cr>
"quick save and exit with leader q
nnoremap <leader>q :wq<cr>
"quick change inside word
nnoremap <leader>i ciw
"quick yank inside word
nnoremap <leader>y yiw
"quick paste inside word, changes word to last yanked item
nnoremap <leader>v viwp
"use to set up the usestate line in react
inoremap s/, <esc>:s/set\(.\)/set\u\1/<cr>A
"alt+c for react, sets up a component
inoremap <esc>c <c-r>%<esc>:s/.js//<cr>A<space>= (props) => {<cr>}<esc>O
"shortcut for last line in react, export default
inoremap <esc>x export default <c-r>%<esc>:s/.js//<cr>A;
"shortcut for const, primarily a quality of life hack in react
iab c const
"shortcut for react, primarily a quality of life hack
inoremap e/, e.target.value
"shortcut for useState(""); was used when learning react useState
iab u <space>= useState("");
"shortcut for setting up a react component that uses useState, first line
"import
inoremap r/, import React, {useState} from 'react';<cr><cr>
"a shortcut for a default html label and input
inoremap i/, <label for="xx">xx</label><cr><input type="text" name="xx" id="xx"><esc>:-1,.s/xx//g<left><left>
"shortcut for making database calls in Flask
inoremap m/, mysql=connectToMySQL(SCHEMA)<cr>query="xx"<cr>data={"xx":xx}<cr>xx=mysql.query_db(query, data)<esc>3k/xx<cr>ciw
"shortcut for routes in flask
iab @ @app.route('/<space><backspace>')<left><left><c-r>r<esc>
"shortcut for the end of the Flask page, if __name__ == '__main__'
iab __n if __name__=='__main__':<cr>app.run(debug=True)<space><backspace><esc>
"shortuct for flask check for user id in session / logged in
inoremap uid/, if 'userid' in session:<cr><backspace>return redirect('/<space><backspace>')<esc>O
"shortcut for request.form[''] 
inoremap rf/, request.form['']<left><left>
"shortcut for error messages in flask
inoremap fm/, {% with messages = get_flashed_messages() %}<cr><tab>{% if messages %}<cr><tab>{% for message in messages %}<cr><tab><p>{{message}}</p><cr><backspace>{% endfor %}<cr><backspace>{% endif %}<cr><backspace>{% endwith %}
"shortcut used in making flash messages in flask
inoremap f/, flash("xx")<esc>Ois_valid=False<esc>/xx<cr>ciw

"plugins and other settings 
call plug#begin()
Plug 'prettier/vim-prettier'
Plug 'tpope/vim-surround'
Plug 'hdima/python-syntax'
Plug 'neoclide/coc.nvim'
Plug 'mattn/emmet-vim'
Plug 'pangloss/vim-javascript'
Plug 'groenewege/vim-less'
Plug 'raimondi/delimitmate'
Plug 'scrooloose/nerdcommenter'
call plug#end()

set mouse=a
set number
set relativenumber
syntax on
" colorscheme Atelier_SeasideDark
set tabstop=4
set expandtab
set softtabstop=4
set autoindent
set belloff=all
set background=dark
