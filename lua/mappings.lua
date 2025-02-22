require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })

map("n", "<leader>fm", function()
  require("conform").format()
end, { desc = "File Format with conform" })

map("i", "jk", "<ESC>", { desc = "Escape insert mode" })

map("n", "<C-h>", "<cmd> TmuxNavigateLeft", {desc = "Go to tmux Window Left"})
map("n", "<C-l>", "<cmd> TmuxNavigateRight", {desc = "Go to tmux Window Right"})
map("n", "<C-j>", "<cmd> TmuxNavigateDown", {desc = "Go to tmux Window Down"})
map("n", "<C-k>", "<cmd> TmuxNavigateUp", {desc = "Go to tmux Window Up"})

map("n", "<Up>", "<Nop>")
map("n", "<Down>", "<Nop>")
map("n", "<Left>", "<Nop>")
map("n", "<Right>", "<Nop>")
