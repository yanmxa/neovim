return {
	"nvim-tree/nvim-tree.lua",
	-- enabled = false,
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		local nvimtree = require("nvim-tree")

		-- recommended settings from nvim-tree documentation
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		nvimtree.setup({
			view = {
				width = 45,
				relativenumber = false,
				side = "left",
			},
			-- change folder arrow icons
			renderer = {
				group_empty = true,
			},

			-- disable window_picker for
			-- explorer to work well with
			-- window splits
			actions = {
				open_file = {
					window_picker = {
						enable = false,
					},
				},
			},
			filters = {
				dotfiles = true,
			},
		})

		-- set keymaps
		local keymap = vim.keymap -- for conciseness

		keymap.set("n", "<leader>tg", "<cmd>NvimTreeToggle<CR>", { desc = "[T]ree [T]oggle" })
		keymap.set("n", "<leader><leader>", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "[T]tree Find [F]ile Toggle" })
		keymap.set("n", "<leader>tc", "<cmd>NvimTreeCollapse<CR>", { desc = "[T]ree [C]ollapse" }) -- collapse file explorer
		keymap.set("n", "<leader>tr", "<cmd>NvimTreeRefresh<CR>", { desc = "[T]ree [R]efresh" }) -- refresh file explorer
	end,
}
