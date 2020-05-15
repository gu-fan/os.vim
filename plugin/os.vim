let s:is_windows = has('win16') || has('win95')
            \ || has('win32') || has('win64')
let s:is_cygwin = has('win32unix')

let g:_v = {
        \ 'is_os2' : has('os2'),
        \ 'is_amiga' : has('amiga'),
        \ 'is_dos' : has('dos16') || has('dos32'),
        \ 'is_unix': has('unix'),
        \ 'is_windows': s:is_windows,
        \ 'is_cygwin' : s:is_cygwin,
        \ 'is_mac' : !s:is_windows && !s:is_cygwin
            \ && (has('mac') || has('macunix') || has('gui_macvim') 
            \ || (!isdirectory('/proc') && executable('sw_vers'))),
        \ 'in_gui': has('gui_running'),
        \ 'in_term': !has('gui_running')
        \ }

let g:os = g:_v
