return {
	"github/copilot.vim",
	event = { "BufNewFile", "BufReadPost" },
	config = function()
		vim.g.copilot_enabled = true
		vim.g.copilot_no_tab_map = true
		vim.cmd('imap <silent><script><expr> <C-C> copilot#Accept("")')
		vim.cmd([[
			let g:copilot_filetypes = {
	       \ 'TelescopePrompt': v:false,
				 \ 'rip-substitute': v:false,
				 \ 'mini-files': v:false,
				 \ 'copilot-chat' : v:false,
	     \ }
			]])
	end,
}
