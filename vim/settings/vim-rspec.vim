map <Leader>rcf :call RunCurrentSpecFile()<CR>
map <Leader>rns :call RunNearestSpec()<CR>
map <Leader>rls :call RunLastSpec()<CR>
map <Leader>ras :call RunAllSpecs()<CR>

let g:rspec_command = "Dispatch bundle exec rspec {spec}"
