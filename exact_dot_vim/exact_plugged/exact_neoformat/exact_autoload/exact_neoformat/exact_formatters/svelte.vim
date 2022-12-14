function! neoformat#formatters#svelte#enabled() abort
    return ['prettier']
endfunction

function! neoformat#formatters#svelte#prettier() abort
    return {
        \ 'exe': 'prettier',
        \ 'args': ['--stdin-filepath', '--parser=svelte', '--plugin-search-dir=.', '"%:p"'],
        \ 'stdin': 1,
        \ 'try_node_exe': 1,
        \ }
endfunction
