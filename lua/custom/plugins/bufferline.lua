return {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
        local bufferline = require('bufferline')
        require("bufferline").setup {
        options = {
               mode = "buffers",
               style_preset = bufferline.style_preset.default,
--             view = "default",
            numbers = "ordinal",
            color_icons = true,
             get_element_icon = function(element)
              -- element consists of {filetype: string, path: string, extension: string, directory: string}
              -- This can be used to change how bufferline fetches the icon
              -- for an element e.g. a buffer or a tab.
              -- e.g.
              local icon, hl = require('nvim-web-devicons').get_icon_by_filetype(element.filetype, { default = false })
              return icon, hl
            end,
--             number_style = "superscript",
--             mappings = true,
--             buffer_close_icon= "",
--             modified_icon = "●",
--             close_icon = "",
--             left_trunc_marker = "",
--             right_trunc_marker = "",
--             max_name_length = 18,
--             max_prefix_length = 15, -- prefix used when a buffer is deduplicated
--             tab_size = 18,
--             diagnostics = "nvim_lsp",
--             diagnostics_indicator = function(count, level)
--             return "("..count..")"
--             end,
--             show_buffer_close_icons = true,
--             show_close_icon = true,
--             show_tab_indicators = true,
--             persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
--             -- can also be a table containing 2 custom separators
--             -- [focused and unfocused]. eg: { "|", "|" }
            separator_style = "padded_slant",
--             enforce_regular_tabs = true,
--             always_show_bufferline = true,
            offsets = {
                {
                    filetype = "neo-tree",
                    text = "File Explorer",
--                     text_align = "left",
                    highlight = "Directory",
                    separator = true,
                }
            },
        },
        }
        vim.keymap.set('n', '<Tab>', '<CMD>BufferLineCycleNext<CR>')
        vim.keymap.set('n', '<S-Tab>', '<CMD>BufferLineCyclePrev<CR>')
    end
}
