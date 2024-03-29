local get_diag = function(str)
    local diag = vim.diagnostic.get(0, {severity = str})
    local count = 0
    for _ in pairs(diag) do
        count = count + 1
    end
    return (count > 0) and ' ' .. count .. ' ' or ' '
end

local vi_mode_provider = function()
    local mode_alias = {
        n = 'NORMAL',
        no = 'NORMAL',
        i = 'INSERT',
        v = 'VISUAL',
        V = 'V-LINE',
        [''] = 'V-BLOCK',
        c = 'COMMAND',
        cv = 'COMMAND',
        ce = 'COMMAND',
        R = 'REPLACE',
        Rv = 'REPLACE',
        s = 'SELECT',
        S = 'SELECT',
        [''] = 'SELECT',
        t = 'TERMINAL'
    }
    return ' ' .. mode_alias[vim.fn.mode()] .. ' '
end

local percentage_provider = function()
    local cursor = require 'feline.providers.cursor'
    return ' ' .. cursor.line_percentage() .. ' '
end

local vi_mode_hl = function()
    local vi_mode = require 'feline.providers.vi_mode'
    return {
        name = vi_mode.get_mode_highlight_name(),
        fg = 'bg',
        bg = vi_mode.get_mode_color(),
        style = 'bold'
    }
end

local components = {active = {}, inactive = {}}
-- left active
table.insert(components.active, {
    {provider = vi_mode_provider, hl = vi_mode_hl, right_sep = ' '}, {
        provider = 'git_branch',
        icon = ' ',
        right_sep = '  ',
        enabled = function() return vim.b.gitsigns_status_dict ~= nil end
    }, {provider = 'file_info'},
    {provider = '', hl = {fg = 'bg', bg = 'black'}}
})
-- left inactive
table.insert(components.inactive, {
    {provider = vi_mode_provider, hl = vi_mode_hl, right_sep = ' '}, {
        provider = 'git_branch',
        icon = ' ',
        right_sep = '  ',
        enabled = function() return vim.b.gitsigns_status_dict ~= nil end
    }, {provider = 'file_info'},
    {provider = '', hl = {fg = 'bg', bg = 'black'}}
})
-- right active
table.insert(components.active, {
    {
        provider = function() return get_diag(vim.diagnostic.ERROR) end,
        hl = {fg = 'bg', bg = 'red', style = 'bold'},
        left_sep = {str = '', hl = {fg = 'red', bg = 'black'}},
        right_sep = {str = '', hl = {fg = 'yellow', bg = 'red'}}
    }, {
        provider = function() return get_diag(vim.diagnostic.WARN) end,
        hl = {fg = 'bg', bg = 'yellow', style = 'bold'},
        right_sep = {str = '', hl = {fg = 'cyan', bg = 'yellow'}}
    }, {
        provider = function() return get_diag(vim.diagnostic.INFO) end,
        hl = {fg = 'bg', bg = 'cyan', style = 'bold'},
        right_sep = {str = '', hl = {fg = 'oceanblue', bg = 'cyan'}}
    }, {
        provider = function() return get_diag(vim.diagnostic.HINT) end,
        hl = {fg = 'bg', bg = 'oceanblue', style = 'bold'},
        right_sep = {str = '', hl = {fg = 'bg', bg = 'oceanblue'}}
    }, {provider = 'file_encoding', left_sep = ' '},
    {provider = 'position', left_sep = ' ', right_sep = ' '}, {
        provider = percentage_provider,
        hl = {fg = 'bg', bg = 'skyblue', style = 'bold'}
    }
})
-- right inactive
table.insert(components.inactive, {})

require'feline'.setup {
    colors = {
        fg = '#8FBCBB',
        bg = '#2E3440',
        black = '#434C5E',
        skyblue = '#81A1C1',
        cyan = '#88C0D0',
        green = '#8FBCBB',
        oceanblue = '#5E81AC',
        magenta = '#B48EAD',
        orange = '#D08770',
        red = '#EC5F67',
        violet = '#B48EAD',
        white = '#ECEFF4',
        yellow = '#EBCB8B'
    },
    vi_mode_colors = {
        NORMAL = 'cyan',
        OP = 'cyan',
        INSERT = 'white',
        VISUAL = 'green',
        BLOCK = 'green',
        REPLACE = 'yellow',
        ['V-REPLACE'] = 'yellow',
        ENTER = 'cyan',
        MORE = 'cyan',
        SELECT = 'magenta',
        COMMAND = 'cyan',
        SHELL = 'skyblue',
        TERM = 'skyblue',
        NONE = 'orange'
    },
    components = components,
    force_inactive = {
        filetypes = {
            'NvimTree', 'packer', 'dap-repl', 'dapui_scopes', 'dapui_stacks',
            'dapui_watches', 'dapui_repl', 'LspTrouble', 'NERD_tree_1'
        },
        buftypes = {'terminal'},
        bufnames = {}
    }
}
