local M = {}
M.config = function()
  require'nvim-treesitter.configs'.setup {
    -- A list of parser names
    ensure_installed = {
        'bash',
        'vim',
        'lua',
        'json',
        'yaml',
        'go',
        'python',
        'rust',
        'markdown',
        'javascript',
        'php',
        'html',
        'css'
    },
    sync_install = false, -- install synchronously
    auto_install = true,
    ignore_install = {}, -- parsers to not install
    -- 启用代码高亮功能
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false
    },
    -- 启用增量选择
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = '<CR>',
        node_incremental = '<CR>',
        node_decremental = '<BS>',
        scope_incremental = '<TAB>',
      }
    },
    -- 启用基于Treesitter的代码格式化(=) . NOTE: This is an experimental feature.
    indent = {
      enable = true
    }
  }

  -- 开启 Folding
  vim.wo.foldmethod = 'expr'
  vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'
  -- 默认不要折叠
  vim.wo.foldlevel = 99
end
return M