function! neoformat#formatters#markdown#enabled() abort
   return ['remark', 'prettier']
endfunction

function! neoformat#formatters#markdown#prettier() abort
    return {
        \ 'exe': 'prettier',
        \ 'args': ['--stdin-filepath', '"%:p"'],
        \ 'stdin': 1,
        \ 'try_node_exe': 1,
        \ }
endfunction

function! neoformat#formatters#markdown#remark() abort
    return {
            \ 'exe': 'remark',
            \ 'args': ['--no-color', '--silent'],
            \ 'stdin': 1,
            \ 'try_node_exe': 1,
            \ }
endfunction
