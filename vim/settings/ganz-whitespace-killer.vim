" via: http://rails-bestpractices.com/posts/60-remove-trailing-whitespace
" Strip trailing whitespace
function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction

command! StripTrailingWhitespaces call <SID>StripTrailingWhitespaces()

nmap ,sw :StripTrailingWhitespaces<CR>

autocmd BufWritePre *.rb,*.js,*.coffee :call <SID>StripTrailingWhitespaces()
autocmd BufWritePre *.scss,*.haml,*.slim,*.html,*.builder :call <SID>StripTrailingWhitespaces()
autocmd BufWritePre *.txt,*.md,*.markdown :call <SID>StripTrailingWhitespaces()
