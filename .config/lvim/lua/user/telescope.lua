require("telescope").load_extension "file_browser"
require("telescope").load_extension "emoji"
require("telescope").load_extension "media_files"
require("telescope").load_extension "ag"
require("telescope").load_extension "packer"

lvim.builtin.telescope.on_config_done = function(telescope)
  pcall(telescope.load_extension, "project")
  -- any other extensions loading
end
