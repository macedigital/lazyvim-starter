-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt
local env = vim.env

-- Add missing PATH entry in Flatpak extension go binaries
if env.FLATPAK_ENABLE_SDK_EXT and env.FLATPAK_ENABLE_SDK_EXT ~= "golang" then
  env.GOBIN = env.HOME .. "/.var/app/io.neovim.nvim/data/golang/bin"
  env.PATH = env.PATH .. ":" .. env.GOBIN
end

-- Limit what `autocmd` can do
opt.secure = true

-- Disable optional providers
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_python_provider = 1
vim.g.loaded_ruby_provider = 0

-- Set global shell
vim.g.terminal_emulator = "bash"
opt.shell = "bash"
