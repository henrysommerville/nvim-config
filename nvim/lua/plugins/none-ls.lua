return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.clang_format,
				null_ls.builtins.diagnostics.pylint.with({
					diagnostics_postprocess = function(diagnostic)
						diagnostic.code = diagnostic.message_id
					end,
				}),

				null_ls.builtins.formatting.black,
				null_ls.builtins.formatting.isort,
				null_ls.builtins.diagnostics.checkmake,
				null_ls.builtins.diagnostics.cmake_lint,
				null_ls.builtins.diagnostics.cppcheck,
			},
		})
		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
