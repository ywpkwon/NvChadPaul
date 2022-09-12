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

local enable_providers = {
      "python3_provider",
      "node_provider",
      -- and so on
    }

for _, plugin in pairs(enable_providers) do
  vim.g["loaded_" .. plugin] = nil
  vim.cmd("runtime " .. plugin)
end
