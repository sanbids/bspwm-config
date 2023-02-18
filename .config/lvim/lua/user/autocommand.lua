lvim.autocommands = {
  {
    "BufWinEnter", {
      pattern = { "*.cpp", "*.hpp" },
      callback = function()
        -- DYI editorconfig
        if vim.loop.cwd() == "path/to/my/project" then vim.cmd [[setlocal tabstop=8 shiftwidth=8]]
        end
      end
    },
  }
}
