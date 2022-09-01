-- autocmds
local autocmd = vim.api.nvim_create_autocmd

-- auto resize panes
autocmd("VimResized", {
  pattern = "*",
  command = "tabdo wincmd =",
})
