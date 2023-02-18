lvim.builtin.which_key.mappings["t"] = {
  name = "+Trouble",
  r = { "<cmd>Trouble lsp_references<cr>", "References" },
  f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
  d = { "<cmd>Trouble document_diagnostics<cr>", "Diagnostics" },
  q = { "<cmd>Troble quickfix<cr>", "QuickFix" },
  w = { "<cmd>Trouble workspace_diagnostics<cr>", "Workspace Diagnostics" },
  -- l = { "<cmd>Trouble loclist<cr>", "LocationList" },
  l = { "<cmd>Trouble loclist<cr>", "LocationList" },
}


lvim.builtin.which_key.mappings["h"] = {
  name = "Robot Help",
  h = { "<cmd>:ChatGPT <CR> ", "search anything" },
  m = { "<cmd>:ChatGPTActAs <CR>", "More command for robot" }
}
