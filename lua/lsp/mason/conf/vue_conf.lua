local M = {}

function M.VueLSP()
	require("lspconfig").volar.setup({
		init_options = {
			typescript = {
				tsdk = "/usr/local/lib/node_modules/typescript/lib",
			},
		},
	})
end

return M
