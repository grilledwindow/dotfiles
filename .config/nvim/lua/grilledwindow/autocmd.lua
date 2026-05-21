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
:augroup scssindent
:  autocmd FileType scss setlocal expandtab
:  autocmd FileType scss setlocal tabstop=4
:  autocmd FileType scss setlocal shiftwidth=4
:augroup END
]]

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

vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
        vim.lsp.document_color.enable(false)
    end,
})

vim.api.nvim_create_autocmd('FileType', {
    pattern = { '<filetype>' },
    callback = function() vim.treesitter.start() end,
})
