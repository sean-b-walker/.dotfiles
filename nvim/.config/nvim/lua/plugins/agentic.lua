return {
	"carlos-algms/agentic.nvim",
	opts = {
		provider = "opencode-acp",
	},
	keys = {
		{
			"<leader>aa",
			function()
				require("agentic").toggle()
			end,
			mode = { "n", "v", "i" },
			desc = "Toggle AI chat",
		},
		{
			"<leader>ac",
			function()
				require("agentic").add_selection_or_file_to_context()
			end,
			mode = { "n", "v" },
			desc = "Send selection/file to AI",
		},
	},
}
