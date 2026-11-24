-- Autocompletion engine.
return {
	"saghen/blink.cmp",
	version = "*",
	dependencies = { "rafamadriz/friendly-snippets" },
	opts = {
		keymap = {
			preset = "default",
			-- <C-space> is the terminal's leader key for window navigation, so
			-- don't bind it here. Completions auto-trigger as you type.
			["<C-space>"] = false,
			-- Tab/S-Tab navigate the menu (and step through snippet placeholders).
			["<Tab>"] = { "snippet_forward", "select_next", "fallback" },
			["<S-Tab>"] = { "snippet_backward", "select_prev", "fallback" },
			-- Enter accepts the selected item.
			["<CR>"] = { "accept", "fallback" },
		},
		appearance = { nerd_font_variant = "mono" },
		-- Sources are built-in: LSP, file paths, snippets (native vim.snippet),
		-- and buffer words. No extra source plugins needed.
		sources = { default = { "lsp", "path", "snippets", "buffer" } },
	},
}
