return {
  "rmagatti/auto-session",
  init = function()
    -- Remove 'blank' - this might prevent the empty buffer creation
    vim.o.sessionoptions = "buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
  end,

  config = function()
    require("auto-session").setup({
      log_level = "info",
      auto_session_enable_last_session = true,
      auto_session_root_dir = vim.fn.stdpath("data") .. "/sessions/",
      auto_session_enabled = true,
      git_use_branch_name = true,
      auto_save_enabled = true,
      auto_restore_enabled = true,
      auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/tmp" },

      session_lens = {
        load_on_setup = true,
        theme_conf = { border = true },
        previewer = false,
      },
    })

    vim.keymap.set("n", "<leader>ls", "<cmd>SessionSearch<cr>", { desc = "Search Sessions" })
  end,
}
