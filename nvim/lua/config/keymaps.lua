-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps -------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- delete single character without copying into register
-- keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set(
  "n",
  "<leader>sx",
  "<cmd>close<CR>",
  { desc = "Close current split" }
) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set(
  "n",
  "<leader>tx",
  "<cmd>tabclose<CR>",
  { desc = "Close current tab" }
) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set(
  "n",
  "<leader>tf",
  "<cmd>tabnew %<CR>",
  { desc = "Open current buffer in new tab" }
) --  move current buffer to new tab

keymap.set("i", "<C-b>", "<ESC>^i", { desc = "Move Beginning of line" })
keymap.set("i", "<C-e>", "<End>", { desc = "Move End of line" })
keymap.set("i", "<C-h>", "<Left>", { desc = "Move Left" })
keymap.set("i", "<C-l>", "<Right>", { desc = "Move Right" })
keymap.set("i", "<C-j>", "<Down>", { desc = "Move Down" })
keymap.set("i", "<C-k>", "<Up>", { desc = "Move Up" })

keymap.set("n", "<Esc>", "<cmd>noh<CR>", { desc = "General Clear highlights" })

keymap.set("n", "<C-h>", "<C-w>h", { desc = "Switch Window left" })
keymap.set("n", "<C-l>", "<C-w>l", { desc = "Switch Window right" })
keymap.set("n", "<C-j>", "<C-w>j", { desc = "Switch Window down" })
keymap.set("n", "<C-k>", "<C-w>k", { desc = "Switch Window up" })
keymap.set("n", "<S-Up>", "<S-Up>", { desc = "Increase Window Height" })

keymap.set("n", "<C-s>", "<cmd>w<CR>", { desc = "File Save" })
keymap.set("i", "<C-s>", "<C-s>l", { desc = "Save file in Insert mode" })
keymap.set("n", "<C-c>", "<cmd>%y+<CR>", { desc = "File Copy whole" })

-- keymap.set("n", "<leader>n", "<cmd>set nu!<CR>", { desc = "Toggle Line number" })
-- keymap.set("n", "<leader>rn", "<cmd>set rnu!<CR>", { desc = "Toggle Relative number" })
-- keymap.set("n", "<leader>ch", "<cmd>NvCheatsheet<CR>", { desc = "Toggle NvCheatsheet" })

keymap.set("n", "<leader>fm", function()
  require("conform").format({ lsp_fallback = true })
end, { desc = "Format Files" })

-- global lsp mappings
keymap.set(
  "n",
  "<leader>lf",
  vim.diagnostic.open_float,
  { desc = "Lsp floating diagnostics" }
)
keymap.set(
  "n",
  "[d",
  vim.diagnostic.goto_prev,
  { desc = "Lsp prev diagnostic" }
)
keymap.set(
  "n",
  "]d",
  vim.diagnostic.goto_next,
  { desc = "Lsp next diagnostic" }
)
keymap.set(
  "n",
  "<leader>q",
  vim.diagnostic.setloclist,
  { desc = "Lsp diagnostic loclist" }
)

-- Comment
keymap.set("n", "<leader>/", function()
  require("Comment.api").toggle.linewise.current()
end, { desc = "Comment Toggle" })

keymap.set(
  "v",
  "<leader>/",
  "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
  { desc = "Comment Toggle" }
)

-- blogutils

keymap.set("n", "<leader>`", "<S-u>", { desc = "Command for blogutils" })

-- telescope
keymap.set(
  "n",
  "<leader>fw",
  "<cmd>Telescope live_grep<CR>",
  { desc = "Telescope Live grep" }
)
keymap.set(
  "n",
  "<leader>fb",
  "<cmd>Telescope buffers<CR>",
  { desc = "Telescope Find buffers" }
)
keymap.set(
  "n",
  "<leader>fh",
  "<cmd>Telescope help_tags<CR>",
  { desc = "Telescope Help page" }
)

keymap.set(
  "n",
  "<leader>fo",
  "<cmd>Telescope oldfiles<CR>",
  { desc = "Telescope Find oldfiles" }
)
keymap.set(
  "n",
  "<leader>fz",
  "<cmd>Telescope current_buffer_fuzzy_find<CR>",
  { desc = "Telescope Find in current buffer" }
)
keymap.set(
  "n",
  "<leader>cm",
  "<cmd>Telescope git_commits<CR>",
  { desc = "Telescope Git commits" }
)
keymap.set(
  "n",
  "<leader>gt",
  "<cmd>Telescope git_status<CR>",
  { desc = "Telescope Git status" }
)
keymap.set(
  "n",
  "<leader>pt",
  "<cmd>Telescope terms<CR>",
  { desc = "Telescope Pick hidden term" }
)
keymap.set(
  "n",
  "<leader>th",
  "<cmd>Telescope themes<CR>",
  { desc = "Telescope Nvchad themes" }
)
keymap.set(
  "n",
  "<leader>ff",
  "<cmd>Telescope find_files<cr>",
  { desc = "Telescope Find files" }
)
keymap.set(
  "n",
  "<leader>fa",
  "<cmd>Telescope find_files follow=true no_ignore=true hidden=true<CR>",
  { desc = "Telescope Find all files" }
)

-- terminal
keymap.set(
  "t",
  "<C-x>",
  "<C-\\><C-N>",
  { desc = "Terminal Escape terminal mode" }
)

keymap.set("t", "<ESC>", function()
  local win = vim.api.nvim_get_current_win()
  vim.api.nvim_win_close(win, true)
end, { desc = "Terminal Close term in terminal mode" })

-- whichkey
keymap.set(
  "n",
  "<leader>wK",
  "<cmd>WhichKey <CR>",
  { desc = "Whichkey all keymaps" }
)

keymap.set("n", "<leader>wk", function()
  vim.cmd("WhichKey " .. vim.fn.input("WhichKey: "))
end, { desc = "Whichkey query lookup" })

-- blankline
keymap.set("n", "<leader>cc", function()
  local config = { scope = {} }
  config.scope.exclude = { language = {}, node_type = {} }
  config.scope.include = { node_type = {} }
  local node = require("ibl.scope").get(vim.api.nvim_get_current_buf(), config)

  if node then
    local start_row, _, end_row, _ = node:range()
    if start_row ~= end_row then
      vim.api.nvim_win_set_cursor(
        vim.api.nvim_get_current_win(),
        { start_row + 1, 0 }
      )
      vim.api.nvim_feedkeys("_", "n", true)
    end
  end
end, { desc = "Blankline Jump to current context" })
