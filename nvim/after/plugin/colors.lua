
function VimColors(color)
	color = color or "carbonfox"
	vim.cmd.colorscheme(color)
	-- vim.api_set_hl (0 ,"Normal", { bg = "none"}
end

VimColors()
