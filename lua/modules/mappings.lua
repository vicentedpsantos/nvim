local u = require "modules.util"
local noremap = u.noremap
local nnoremap = u.nnoremap
local inoremap = u.inoremap
local tnoremap = u.tnoremap
local vnoremap = u.vnoremap

nnoremap("j", "gj", { desc = "Move down by visual line on wrapped lines" })
nnoremap("k", "gk", { desc = "Move up by visual line on wrapped lines" })


nnoremap("p", "p`]<Esc>", { desc = "Allow pasting with `p`" })
nnoremap("<S-h>", "<S-^>", { desc = "Go to start of line with Shift + H" })
nnoremap("<S-l>", "<S-$>", { desc = "Go to end of line with Shift + L" })
nnoremap("Y", "y$", { desc = "Copy whole line" })
nnoremap("trm", ":term<CR>", { desc = "Open embedded terminal" })
nnoremap("<CR>", "G", { desc = "Navigate by using line number + Enter" })
nnoremap("<Leader>cp", ":let @+=@%", { desc = "Copy file path" })
nnoremap("J", "mzJ`z", {desc = "Wraps lines"})

-- Undo breakpoints
inoremap(",", ",<c-g>u")
inoremap(".", ".<c-g>u")
inoremap("!", "!<c-g>u")
inoremap("?", "?<c-g>u")

-- NvimTree
nnoremap("<Leader>q", "<CMD>:NvimTreeToggle<CR>", { desc = "Open NvimTree file explorer tree" })
nnoremap("<Leader>f", "<CMD>:NvimTreeFindFile!<CR>", { desc = "Open NvimTree file finder" })

-- Remaps for LSP
nnoremap("gd", ":lua vim.lsp.buf.definition()<CR>")

-- Ruby
nnoremap("<Leader>rb", ":RuboCop -a<cr>", { desc = "Run rubocop" })

nnoremap("<Leader>x", ":bn<cr>", { desc = "Move to buffer to the right" })
nnoremap("<Leader>z", ":bp<cr>", { desc = "Move to buffer to the left" })
nnoremap("<Leader>d", ":bd<cr>", { desc = "Delete current buffer" })
nnoremap("<Leader>a", "=ip", { desc = "Indent all lines" })

nnoremap("<Leader>cc", "gcc", { desc = "Comment line" })

nnoremap("<Leader>mt", ":!mix test %:p<CR>", { desc = "Run mix test on current file" })