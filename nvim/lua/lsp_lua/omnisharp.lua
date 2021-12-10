-- This file is for unity completion

local nvim_lsp = require'lspconfig'

local pid = vim.fn.getpid()
-- On linux/darwin if using a release build, otherwise under scripts/OmniSharp(.Core)(.cmd)
local omnisharp_bin = "/home/munien/software/omnisharp/run"

require'lspconfig'.omnisharp.setup{
    cmd = { omnisharp_bin, "--languageserver" , "--hostPID", tostring(pid) };
    root_dir = nvim_lsp.util.root_pattern("*.csproj","*.sln");
}
