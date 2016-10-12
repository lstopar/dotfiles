" move to the window in the direction shown, or create a new window
function! WinMove(key)
    let t:curwin = winnr()
    exec "wincmd ".a:key
    if (t:curwin == winnr())
        if (match(a:key,'[jk]'))
            wincmd v
        else
            wincmd s
        endif
        exec "wincmd ".a:key
    endif
endfunction

function! ToPrevLine()
    let l:lineN = line('.')
    let l:colN = col('.')

    if l:colN == 1 && l:lineN > 1
        return "\<up>\<end>"
    else
        return "\<left>"
    endif
endfunction

function! ToNextLine()
    let l:lineN = line('.')
    let l:colN = col('.')

    let l:line = getline('.')
    let l:nLines = line('$')

    if l:colN == strlen(l:line) + 1 && l:lineN < l:nLines
        return "\<down>\<home>"
    else
        return "\<right>"
    endif
endfunction
