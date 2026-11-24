return {
  "lewis6991/gitsigns.nvim",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    current_line_blame = true,
    current_line_blame_opts = {
      delay = 500,
      ignore_whitespace = false,
    },
    on_attach = function(bufnr)
      local gs = package.loaded.gitsigns
      local function map(mode, lhs, rhs, desc)
        vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, desc = desc })
      end

      -- Navigation
      map("n", "]h", function() gs.next_hunk() end, "Next hunk")
      map("n", "[h", function() gs.prev_hunk() end, "Previous hunk")

      -- Actions
      map("n", "<leader>hs", function() gs.stage_hunk() end, "Stage hunk")
      map("n", "<leader>hr", function() gs.reset_hunk() end, "Reset hunk")
      map("n", "<leader>hS", function() gs.stage_buffer() end, "Stage buffer")
      map("n", "<leader>hu", function() gs.undo_stage_hunk() end, "Undo stage hunk")
      map("n", "<leader>hp", function() gs.preview_hunk() end, "Preview hunk")
      map("n", "<leader>hb", function() gs.blame_line({ full = true }) end, "Blame line")
      map("n", "<leader>hd", function() gs.diffthis() end, "Diff this")
      map("n", "<leader>tb", function() gs.toggle_current_line_blame() end, "Toggle line blame")

      -- Text object
      map({ "o", "x" }, "ih", ":<C-U>Gitsigns select_hunk<CR>", "Select hunk")
    end,
  },
}
