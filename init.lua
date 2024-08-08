local modules = {
	{ moduleName = "conf.commands", enabled = true },
	{ moduleName = "conf.keymaps", enabled = true },
	{ moduleName = "conf.custom", enabled = true },
	{ moduleName = "util.util-installer", enabled = true },
	{ moduleName = "util.util-configs.icons", enabled = true },
	{ moduleName = "util.util-configs.nvim-tree", enabled = true },
	{ moduleName = "util.util-configs.tree-sitter", enabled = true },
	{ moduleName = "util.util-configs.telescope", enabled = true },
	{ moduleName = "util.util-configs.formatter", enabled = true },
	{ moduleName = "util.util-configs.floaterm", enabled = true },
	{ moduleName = "util.util-configs.transparent", enabled = true },
	{ moduleName = "util.util-configs.noice", enabled = true },
	{ moduleName = "util.util-configs.catppuccin", enabled = true },
	{ moduleName = "util.util-configs.autopairs", enabled = true },
	{ moduleName = "util.util-configs.commenter", enabled = true },
	{ moduleName = "util.util-configs.lualine", enabled = true },
	{ moduleName = "lsp.mason.mason", enabled = true },
	{ moduleName = "lsp.lsp", enabled = true },
	{ moduleName = "lsp.snips.snips", enabled = true },
}

for _, util in ipairs(modules) do
	if util.enabled then
		require(util.moduleName).Config()
	end
end
