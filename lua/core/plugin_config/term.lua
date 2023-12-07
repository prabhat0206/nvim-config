local Terminal = require('toggleterm.terminal').Terminal

local float_terminal = Terminal:new({ 
    direction = "float",
    on_open = function(term)
        vim.cmd("startinsert")
        vim.api.nvim_buf_set_keymap(term.bufnr, "t", "<C-t>", "<cmd>lua toggle_float_terminal()<CR>", {noremap = true, silent = true})
    end,
    on_close = function(term)
        vim.cmd("stopinsert")
    end
})

function _G.toggle_float_terminal()
    float_terminal:toggle()
end

