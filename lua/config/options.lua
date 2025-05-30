-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt
local env = vim.env

-- Add missing PATH entry in Flatpak extension go binaries
if env.FLATPAK_ENABLE_SDK_EXT and env.FLATPAK_ENABLE_SDK_EXT ~= "golang" then
  env.GOBIN = env.XDG_DATA_HOME .. "/golang/bin"
  env.PATH = env.PATH .. ":" .. env.GOBIN
end

-- Limit what `autocmd` can do
opt.secure = true

-- Disable optional providers
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_python3_provider = 0
vim.g.loaded_python_provider = 0
vim.g.loaded_ruby_provider = 0

-- Neovim supports virtual lines since v0.11+
vim.diagnostic.config({
  -- Use the default configuration
  virtual_lines = true,

  -- Alternatively, customize specific options
  -- virtual_lines = {
  --  -- Only show virtual line diagnostics for the current cursor line
  --  current_line = true,
  -- },
})

-- Set global shell
opt.shell = "bash"
