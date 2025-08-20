local autocmd = vim.api.nvim_create_autocmd

autocmd('BufNewFile', {
    pattern = '*.svelte',
    command = 'set syntax=html'
})
autocmd('BufRead', {
    pattern = '*.svelte',
    command = 'set syntax=html'
})

vim.cmd [[
:augroup Binary
:  au!
:  au BufReadPre  *.dat let &bin=1
:  au BufReadPost *.dat if &bin | %!xxd
:  au BufReadPost *.dat set ft=xxd | endif
:  au BufWritePre *.dat if &bin | %!xxd -r
:  au BufWritePre *.dat endif
:  au BufWritePost *.dat if &bin | %!xxd
:  au BufWritePost *.dat set nomod | endif
:augroup END
]]

vim.cmd [[
:augroup fgo
:  au!
:  au BufReadPre  ~/Downloads/com.aniplex.fategrandorder.en/files/data/* let &bin=1
:  au BufReadPost ~/Downloads/com.aniplex.fategrandorder.en/files/data/* if &bin | %!xxd
:  au BufReadPost ~/Downloads/com.aniplex.fategrandorder.en/files/data/* set ft=xxd | endif
:  au BufWritePre ~/Downloads/com.aniplex.fategrandorder.en/files/data/* if &bin | %!xxd -r
:  au BufWritePre ~/Downloads/com.aniplex.fategrandorder.en/files/data/* endif
:  au BufWritePost ~/Downloads/com.aniplex.fategrandorder.en/files/data/* if &bin | %!xxd
:  au BufWritePost ~/Downloads/com.aniplex.fategrandorder.en/files/data/* set nomod | endif
:augroup END
]]
