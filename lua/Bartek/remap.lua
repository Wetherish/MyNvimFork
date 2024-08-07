
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>vwm", function()
require("vim-with-me").StartVimWithMe()
end)
vim.keymap.set("n", "<leader>svwm", function()
require("vim-with-me").StopVimWithMe()
end)

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<C-c>", [["+y]])
vim.keymap.set("n", "<C-C>", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- This is going to get me cancelled

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
vim.keymap.set("n", "<C-q>", "<cmd>q<CR>")
vim.keymap.set(
"n",
"<leader>ee",
"oif err != nil {<CR>}<Esc>Oreturn err<Esc>"
)
vim.keymap.set("n", "<leader>pd", "<cmd>DiffviewOpen<CR>")
vim.keymap.set("n", "<leader>ph", "<cmd>DiffviewFileHistory<CR>")
vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/Bartek/packer.lua<CR>");
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");
vim.keymap.set("n", "<A-Left>", "<cmd>tabprevious<CR>")
vim.keymap.set("n", "<A-Right>", "<cmd>tabnext<CR>")
vim.keymap.set("n", "<A-Up>", "<cmd>tabnew<CR>")
vim.keymap.set("n", "<C-q>", "<cmd>q<CR>")
-- Map Shift-Tab to un-indent in insert mode
vim.keymap.set("i", "<S-Tab>", "<C-D>", { noremap = true, silent = true })

-- Map Shift-Tab to un-indent in visual mode
vim.keymap.set("v", "<S-Tab>", "<gv", { noremap = true, silent = true })
vim.keymap.set("n", "<C-a>", "<ggVG", { noremap = true, silent = true })
vim.keymap.set({"n", "i"}, "<C-/>", "<cmd>Commentary<CR>", { noremap = true, silent = true })
vim.keymap.set("v", "<C-/>", "<Plug>Commentary", { noremap = true })
vim.keymap.set('n', '<C-d>', 'yyp', { noremap = true, silent = true })
vim.keymap.set('n', '<C-r>', vim.lsp.buf.rename, { noremap = true, silent = true })

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

