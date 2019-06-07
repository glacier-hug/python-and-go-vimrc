if jedi#init_python() && g:jedi#auto_initialization && g:jedi#completions_enabled
    call jedi#setup_completion()
endif
if g:jedi_motion

    if !&magic
        if g:jedi_warning
            call jedi#error("jedi motion requires `&magic` option. Enable them or disable g:jedi_motion")
        endif
        finish
    endif

    nnoremap <buffer> ]]  :<C-U>call jedi#move('^<Bslash>(class<Bslash><bar><Bslash>%(async<Bslash>s<Bslash>+<Bslash>)<Bslash>=def<Bslash>)<Bslash>s', '')<CR>
    nnoremap <buffer> [[  :<C-U>call jedi#move('^<Bslash>(class<Bslash><bar><Bslash>%(async<Bslash>s<Bslash>+<Bslash>)<Bslash>=def<Bslash>)<Bslash>s', 'b')<CR>
    nnoremap <buffer> ]C  :<C-U>call jedi#move('^<Bslash>(class<Bslash><bar><Bslash>%(async<Bslash>s<Bslash>+<Bslash>)<Bslash>=def<Bslash>)<Bslash>s', '')<CR>
    nnoremap <buffer> [C  :<C-U>call jedi#move('^<Bslash>(class<Bslash><bar><Bslash>%(async<Bslash>s<Bslash>+<Bslash>)<Bslash>=def<Bslash>)<Bslash>s', 'b')<CR>
    nnoremap <buffer> ]M  :<C-U>call jedi#move('^<Bslash>s*<Bslash>(async<Bslash>s<Bslash>+<Bslash>)<Bslash>=def<Bslash>s', '')<CR>
    nnoremap <buffer> [M  :<C-U>call jedi#move('^<Bslash>s*<Bslash>(async<Bslash>s<Bslash>+<Bslash>)<Bslash>=def<Bslash>s', 'b')<CR>

    onoremap <buffer> ]]  :<C-U>call jedi#move('^<Bslash>(class<Bslash><bar><Bslash>%(async<Bslash>s<Bslash>+<Bslash>)<Bslash>=def<Bslash>)<Bslash>s', '')<CR>
    onoremap <buffer> [[  :<C-U>call jedi#move('^<Bslash>(class<Bslash><bar><Bslash>%(async<Bslash>s<Bslash>+<Bslash>)<Bslash>=def<Bslash>)<Bslash>s', 'b')<CR>
    onoremap <buffer> ]C  :<C-U>call jedi#move('^<Bslash>(class<Bslash><bar><Bslash>%(async<Bslash>s<Bslash>+<Bslash>)<Bslash>=def<Bslash>)<Bslash>s', '')<CR>
    onoremap <buffer> [C  :<C-U>call jedi#move('^<Bslash>(class<Bslash><bar><Bslash>%(async<Bslash>s<Bslash>+<Bslash>)<Bslash>=def<Bslash>)<Bslash>s', 'b')<CR>
    onoremap <buffer> ]M  :<C-U>call jedi#move('^<Bslash>s*<Bslash>(async<Bslash>s<Bslash>+<Bslash>)<Bslash>=def<Bslash>s', '')<CR>
    onoremap <buffer> [M  :<C-U>call jedi#move('^<Bslash>s*<Bslash>(async<Bslash>s<Bslash>+<Bslash>)<Bslash>=def<Bslash>s', 'b')<CR>

    vnoremap <buffer> ]]  :call jedi#vmove('^<Bslash>(class<Bslash><bar><Bslash>%(async<Bslash>s<Bslash>+<Bslash>)<Bslash>=def<Bslash>)<Bslash>s', '')<CR>
    vnoremap <buffer> [[  :call jedi#vmove('^<Bslash>(class<Bslash><bar><Bslash>%(async<Bslash>s<Bslash>+<Bslash>)<Bslash>=def<Bslash>)<Bslash>s', 'b')<CR>
    vnoremap <buffer> ]M  :call jedi#vmove('^<Bslash>s*<Bslash>(async<Bslash>s<Bslash>+<Bslash>)<Bslash>=def<Bslash>s', '')<CR>
    vnoremap <buffer> [M  :call jedi#vmove('^<Bslash>s*<Bslash>(async<Bslash>s<Bslash>+<Bslash>)<Bslash>=def<Bslash>s', 'b')<CR>

    onoremap <buffer> C  :<C-U>call jedi#select('^<Bslash>s*class<Bslash>s', 0)<CR>
    onoremap <buffer> aC :<C-U>call jedi#select('^<Bslash>s*class<Bslash>s', 0)<CR>
    onoremap <buffer> iC :<C-U>call jedi#select('^<Bslash>s*class<Bslash>s', 1)<CR>
    vnoremap <buffer> aC :<C-U>call jedi#select('^<Bslash>s*class<Bslash>s', 0)<CR>
    vnoremap <buffer> iC :<C-U>call jedi#select('^<Bslash>s*class<Bslash>s', 1)<CR>

    onoremap <buffer> M  :<C-U>call jedi#select('^<Bslash>s*<Bslash>(async<Bslash>s<Bslash>+<Bslash>)<Bslash>=def<Bslash>s', 0)<CR>
    onoremap <buffer> aM :<C-U>call jedi#select('^<Bslash>s*<Bslash>(async<Bslash>s<Bslash>+<Bslash>)<Bslash>=def<Bslash>s', 0)<CR>
    onoremap <buffer> iM :<C-U>call jedi#select('^<Bslash>s*<Bslash>(async<Bslash>s<Bslash>+<Bslash>)<Bslash>=def<Bslash>s', 1)<CR>
    vnoremap <buffer> aM :<C-U>call jedi#select('^<Bslash>s*<Bslash>(async<Bslash>s<Bslash>+<Bslash>)<Bslash>=def<Bslash>s', 0)<CR>
    vnoremap <buffer> iM :<C-U>call jedi#select('^<Bslash>s*<Bslash>(async<Bslash>s<Bslash>+<Bslash>)<Bslash>=def<Bslash>s', 1)<CR>

endif
