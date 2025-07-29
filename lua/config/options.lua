-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Add XDG_BIN_PATH
if not string.find(vim.env.PATH, vim.env.HOME .. "/.local/bin:") then
  vim.env.PATH = vim.env.HOME .. "/.local/bin:" .. vim.env.PATH
end

-- Add missing PATH entry in Flatpak extension go binaries
if vim.env.FLATPAK_ENABLE_SDK_EXT and vim.env.FLATPAK_ENABLE_SDK_EXT ~= "golang" then
  vim.env.GOBIN = vim.env.XDG_DATA_HOME .. "/golang/bin"
  vim.env.PATH = vim.env.PATH .. ":" .. vim.env.GOBIN
end

-- Limit what `autocmd` can do
vim.opt.secure = true

-- Set global shell
if vim.fn.executable("fish") == 1 then
  vim.opt.shell = "fish"
else
  vim.opt.shell = "bash"
end

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
