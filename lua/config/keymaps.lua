local discipline = require("craftzdog.discipline")

discipline.cowboy()

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map("i", "jk", "<Esc>")
map("n", "x", '"_x')

-- Increment/decrement
map("n", "+", "<C-a>")
map("n", "-", "<C-x>")

-- Select all
map("n", "<C-a>", "gg<S-v>G")

-- Save with root permission (not working for now)
--vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

-- Disable continuations
map("n", "<Leader>o", "o<Esc>^Da", opts)
map("n", "<Leader>O", "O<Esc>^Da", opts)

-- Jumplist
map("n", "<C-m>", "<C-i>", opts)

-- New tab
map("n", "te", ":tabedit")
map("n", "<tab>", ":tabnext<Return>", opts)
map("n", "<s-tab>", ":tabprev<Return>", opts)
-- Split window
-- map("n", "ss", ":split<Return>", opts)
-- map("n", "sv", ":vsplit<Return>", opts)

-- Move window
map("n", "<C-h>", "<C-w>h")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-l>", "<C-w>l")

-- Resize window
map("n", "<C-w><left>", "<C-w><")
map("n", "<C-w><right>", "<C-w>>")
map("n", "<C-w><up>", "<C-w>+")
map("n", "<C-w><down>", "<C-w>-")

-- Diagnostics
-- map("n", "<C-j>", function()
--   vim.diagnostic.goto_next()
-- end, opts)

-- Oil
map("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- Toggle terminal
<<<<<<< HEAD
map("n", "<C-`>", "<C-/>", { remap = true, desc = "Toggle terminal" })
map("t", "<C-`>", "<C-/>", { remap = true, desc = "Toggle off terminal" })
=======
map("n", "<C-`>", "<C-/>", { noremap = true, desc = "Toggle terminal" })
map("t", "<C-`>", "<C-/>", { noremap = true, desc = "Toggle off terminal" })
>>>>>>> 9c20f01 (first commit)

map("n", "<leader>r", function()
  require("craftzdog.utils").replaceHexWithHSL()
end)
