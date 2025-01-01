local autocmd = vim.api.nvim_create_autocmd

autocmd('BufNewFile', {
    pattern = '*.svelte',
    command = 'set syntax=html'
})
autocmd('BufRead', {
    pattern = '*.svelte',
    command = 'set syntax=html'
})
