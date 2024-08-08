local status, floaterm = pcall(require, "toggleterm")
local M = {}

if not status then
	vim.notify("Floaterm is not Found ...")
	return false
end

function M.Config()
	floaterm.setup({
		open_mapping = "<leader>ft",
		size = 20,
		hide_numbers = true,
		direction = "float",
		float_opts = {
			border = "rounded",
			winlend = 0,
		},
		autochdir = true,
		shell = "/bin/zsh",
	})
end

return M
