return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    vim.opt.termguicolors = true
    require('bufferline').setup {
      options = {
        numbers = "none",
        diagnostics = "nvim_lsp",
        diagnostics_indicator = function(_, _, diagnostics_dict)
          local s = " "
          for e, n in pairs(diagnostics_dict) do
            local sym = e == "error" and " "
                or (e == "warning" and " " or "")
            s = s .. sym .. n
          end
          return s
        end,
        show_buffer_close_icons = false,
        show_close_icon = false,
        show_tab_indicators = true,
        separator_style = "thin",
        always_show_bufferline = true,
        sort_by = "directory",
      }
    }

    -- Map <leader>bn to go to next buffer
    vim.api.nvim_set_keymap('n', '<leader>bn', ':BufferLineCycleNext<CR>', { noremap = true, silent = true })

    -- Map <leader>bb to go to previous buffer
    vim.api.nvim_set_keymap('n', '<leader>bb', ':BufferLineCyclePrev<CR>', { noremap = true, silent = true })

    -- Map <leader>be to pick buffer to close
    vim.api.nvim_set_keymap('n', '<leader>be', ':BufferLinePickClose<CR>', { noremap = true, silent = true })

    -- Map <leader>bh to close all buffers to the left
    vim.api.nvim_set_keymap('n', '<leader>bh', ':BufferLineCloseLeft<CR>', { noremap = true, silent = true })

    -- Map <leader>bl to close all buffers to the right
    vim.api.nvim_set_keymap('n', '<leader>bl', ':BufferLineCloseRight<CR>', { noremap = true, silent = true })
  end
}
