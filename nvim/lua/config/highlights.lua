local function create_augroup(name, autocmds)
    local cmd = vim.cmd
    cmd('augroup ' .. name)
    cmd('autocmd!')
    for _, autocmd in ipairs(autocmds) do
        cmd('autocmd ' .. table.concat(autocmd, ' '))
    end
    cmd('augroup END')
end

local function hi(group, opts)
	local c = "highlight " .. group
	for k, v in pairs(opts) do
		c = c .. " " .. k .. "=" .. v
	end
	vim.cmd(c)
end

function HighlightNone()
  hi("Normal", { ctermbg = "NONE", guibg = "NONE" })
end

function HighlightNr()
  hi("LineNr", { ctermbg = "NONE", guibg = "NONE" })
end

function HighlightSignColumn()
  hi("SignColumn", { ctermbg = "NONE", guibg = "NONE" })
end

function HighlightEndOfBuffer()
  hi("EndOfBuffer", { ctermbg = "NONE", guibg = "NONE" })
end

create_augroup("HighlightNone", {
  {"ColorScheme", "*", "lua HighlightNone()"},
  {"ColorScheme", "*", "lua HighlightNr()"},
  {"ColorScheme", "*", "lua HighlightSignColumn()"},
  {"ColorScheme", "*", "lua HighlightEndOfBuffer()"}
})
