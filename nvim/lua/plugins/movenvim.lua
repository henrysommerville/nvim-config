return {
	"hinell/move.nvim",
  config = function()
    local opts = { noremap = true, silent = true }
    -- Normal-mode commands
    ----move line up and down
    vim.keymap.set("n", "<A-Down>", ":MoveLine 1<CR>", opts)
    vim.keymap.set("n", "<A-j>", ":MoveLine 1<CR>", opts)
    vim.keymap.set("n", "<A-Up>", ":MoveLine -1<CR>", opts)
    vim.keymap.set("n", "<A-k>", ":MoveLine -1<CR>", opts)

    ---- Copy line below:
    vim.keymap.set("n", "<A-S-Down>", "yyp", opts)
    vim.keymap.set("n", "<A-S-j>", "yyp", opts)
    vim.keymap.set("n", "<A-S-Up>", "yykp", opts)
    vim.keymap.set("n", "<A-S-k>", "yykp", opts)

		-- Visual-mode commands
    vim.keymap.set("x", "<A-Up>", ":MoveBlock -1<CR>", opts)
    vim.keymap.set("x", "<A-Down>", ":MoveBlock 1<CR>", opts)
    end,
}
