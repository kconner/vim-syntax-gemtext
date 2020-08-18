" Vim file type detection for Gemtext markup

" Add this file to ~/.vim/ftdetect/gemtext.vim

au BufRead,BufNewFile *.gmi set filetype=gemtext
au BufRead,BufNewFile *.gemini set filetype=gemtext
