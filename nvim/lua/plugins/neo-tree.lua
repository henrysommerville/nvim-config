return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lue/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
  config = function()
    vim.keymap.set("n", "<C-b>", ":Neotree reveal right<CR>")
		vim.keymap.set("n", "<C-B>", ":Neotree toggle right<CR>")
	end,
}
