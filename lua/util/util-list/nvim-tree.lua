local M = {}
local status, ntree = pcall(require, "nvim-tree")

local current_window = vim.api.nvim_get_current_win()
local screen_width = vim.api.nvim_win_get_width(current_window)
local screen_height = vim.api.nvim_win_get_height(current_window)

local float_width = math.floor(screen_width / 1.5)
local float_height = math.floor(screen_height / 1.5)
local float_col = math.floor((screen_width - float_width) / 2)
local float_row = math.floor((screen_height - float_height) / 2)

if not status then
	vim.notify("nvim-tree is not found ...")
	return
end

function M.Config()
	ntree.setup({
		git = {
			enable = true,
		},
		filters = {
			custom = {
				".git",
				"node_modules",
			},
			exclude = {
				".gitignore",
			},
			dotfiles = true,
		},
		view = {
			width = float_width,
			float = {
				enable = true,
				quit_on_focus_loss = true,
				open_win_config = {
					relative = "editor",
					border = "rounded",
					width = float_width,
					height = float_height,
					col = float_col,
					row = float_row,
				},
			},
		},
		renderer = {
			special_files = { "README.md", "Makefile" },
			icons = {
				glyphs = {
					default = "󱧶",
					symlink = "󰈝",
					bookmark = "󰩋",
					folder = {
						arrow_closed = "",
						arrow_open = "",
						default = "󰚝",
						open = "󰝰",
						empty = "󱃫",
						empty_open = "",
						symlink = "",
						symlink_open = "",
					},
					git = {
						unstaged = "󰜎",
						staged = "󰜘",
						unmerged = "",
						renamed = "󰴒",
						untracked = "",
						deleted = "󱂦",
						ignored = "◌",
					},
				},
			},
		},
	})
end

return M
