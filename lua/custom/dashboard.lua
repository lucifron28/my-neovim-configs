-- ~/.config/nvim/lua/custom/dashboard.lua

local has_alpha, alpha = pcall(require, "alpha")
if not has_alpha then
  return
end

local dashboard = require("alpha.themes.dashboard")

-- Replace the header with "NEOVIM"
dashboard.section.header.val = {
  [[  _   _                      _   _             ]],
  [[ | \ | | ___  _ __ ___   ___| \ | | ___  _ __  ]],
  [[ |  \| |/ _ \| '_ ` _ \ / _ \  \| |/ _ \| '_ \ ]],
  [[ | |\  | (_) | | | | | |  __/ |\  | (_) | | | |]],
  [[ |_| \_|\___/|_| |_| |_|\___|_| \_|\___/|_| |_|]],
  [[                                              ]],
  [[                 NEOVIM                        ]],
}

-- Set the dashboard
alpha.setup(dashboard.config)
