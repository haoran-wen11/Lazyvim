local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map("n", "x", '"_x')
map("i", "jk", "<Esc>")

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
map("n", "ss", ":split<Return>", opts)
map("n", "sv", ":vsplit<Return>", opts)

-- Move window
map("n", "sh", "<C-w>h")
map("n", "sk", "<C-w>k")
map("n", "sj", "<C-w>j")
map("n", "sl", "<C-w>l")

-- Resize window
map("n", "<S-left>", "<C-w>>")
map("n", "<S-right>", "<C-w><")
map("n", "<S-up>", "<C-w>+")
map("n", "<S-down>", "<C-w>-")

--Toggle/hide terminal
map("n", "<C-`>", "<Leader>ft", { remap = true, silent = true })
map("t", "<C-`>", "<C-/>", { remap = true, silent = true })

-- Comment
map("n", "<C-/>", function()
  require("Comment.api").toggle.linewise.count(vim.v.count > 0 and vim.v.count or 1)
end, opts)
map("v", "<C-/>", "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>", opts)

-- Oil
map("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- -- Diagnostics
-- map("n", "<C-j>", function()
--   vim.diagnostic.goto_next()
-- end, opts)

-- local discipline = require("craftzdog.discipline")
--
-- discipline.cowboy()
--
-- map("n", "<leader>r", function()
--   require("craftzdog.utils").replaceHexWithHSL()
-- end)
