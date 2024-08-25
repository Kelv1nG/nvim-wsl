-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "\\", "<C-w>", {
  desc = "Show window menu",
  remap = true,
})

vim.keymap.set("n", "<leader>d", function()
  vim.lsp.buf.clear_references()
  vim.lsp.buf.document_highlight()
  vim.diagnostic.show()
end, { desc = "Refresh diagnostics" })
