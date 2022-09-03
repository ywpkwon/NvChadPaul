-- autocmds
local autocmd = vim.api.nvim_create_autocmd

-- auto resize panes
autocmd("VimResized", {
  pattern = "*",
  command = "tabdo wincmd =",
})

-- remove trailing spaces when save
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = { "*" },
  command = [[%s/\s\+$//e]],
})
