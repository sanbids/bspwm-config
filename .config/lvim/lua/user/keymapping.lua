vim.cmd("noremap <up> <nop>")
vim.cmd("noremap <Down> <Nop>")
vim.cmd("noremap <Left> <Nop>")
vim.cmd("noremap <Right> <Nop>")
vim.cmd("inoremap <Up> <Nop>")
vim.cmd("inoremap <Down> <Nop>")
vim.cmd("inoremap <Left> <Nop>")
vim.cmd("inoremap <Right> <Nop>")
vim.cmd("vnoremap im aBoV")
vim.cmd("nnoremap J 5j")
vim.cmd("nnoremap K 5k")
vim.cmd('nnoremap "" vi"')
vim.cmd("nnoremap {{ viB")
vim.cmd("nnoremap (( vib")
vim.cmd("nnoremap [[ vi[")
vim.cmd("vnoremap am aBjoV")

vim.leader = "space"
vim.api.nvim_set_keymap('i', 'jk', '<ESC>', { noremap = true })
vim.api.nvim_set_keymap('i', 'kj', '<ESC>', { noremap = true })
vim.api.nvim_set_keymap('i', 'kl', '<ESC>', { noremap = true })
vim.api.nvim_set_keymap('i', 'lk', '<ESC>', { noremap = true })
vim.api.nvim_set_keymap("n", ";", ":SymbolsOutline<cr>", { noremap = true })
-- vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "ff", ":e %:h/")
