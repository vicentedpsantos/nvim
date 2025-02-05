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
nnoremap("<Leader>cc", "gcc", { desc = "Comment line" })

-- Resizing windows
nnoremap("=", [[<cmd>vertical resize +5<cr>]]) -- make the window biger vertically
nnoremap("-", [[<cmd>vertical resize -5<cr>]]) -- make the window smaller vertically
nnoremap("+", [[<cmd>horizontal resize +2<cr>]]) -- make the window bigger horizontally by pressing shift and =
nnoremap("_", [[<cmd>horizontal resize -2<cr>]]) -- make the window smaller horizontally by pressing shift and -

-- Undo breakpoints
inoremap(",", ",<c-g>u")
inoremap(".", ".<c-g>u")
inoremap("!", "!<c-g>u")
inoremap("?", "?<c-g>u")

-- Ruby
nnoremap("<Leader>rb", ":RuboCop -a<cr>", { desc = "Run rubocop" })

-- buffers
nnoremap("<Leader>x", ":bn<cr>", { desc = "Move to buffer to the right" })
nnoremap("<Leader>z", ":bp<cr>", { desc = "Move to buffer to the left" })
nnoremap("<Leader>d", ":bd<cr>", { desc = "Delete current buffer" })
nnoremap("<Leader>a", "=ip", { desc = "Indent all lines" })

-- Elixir
nnoremap("<Leader>mt", ":!mix test %:p<CR>", { desc = "Run mix test on current file" })

-- Erlang
nnoremap("<Leader>rbe", ":!rebar3 eunit<CR>", { desc = "Run rebar3 eunit" })

nnoremap("<Leader>fjson", ":%!jq --indent 4 '.' %<CR>", { desc = "Format JSON" })

-- Create mapping to run OpenGitHubFileLine in visual mode
vnoremap("<leader>ghl", ":OpenGitHubFileLine<cr>", { desc = "Open Github page of current repo at current file at current range." })


-- :autocmd BufWritePost *.ex,*.exs silent :!mix format %
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.ex,*.exs",
  callback = function()
    local format_command = {"mix", "format", vim.api.nvim_buf_get_name(0)}
    local format_job_id = vim.fn.jobstart(format_command, {
      on_exit = function(_, code, _)
                  if code == 0 then
                    vim.cmd('e!')
                  end
                end,
    })
  end,
})
