local status, telescope = pcall(require, "telescope")
local M = {}

if not status then
	vim.notify("telescope is not found ...")
	return false
end

local extensions = {
	project = {},
}

function M.Config()
	telescope.setup({
		defaults = {
			history = false,
			path_display = {
				"tail",
			},
			file_ignore_patterns = {
				"node_modules",
				".git",
				".hg",
				".DS_Store",
				"__pycache__",
				"%.log",
			},
			sorting_strategy = "ascending",
		},
		extensions = extensions,
	})
end

return M
