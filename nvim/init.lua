require('core.base')
require('core.keymaps')
require('core.plugins')

require('impatient')

require('configs.bufferline').config()
require('configs.cmp').config()
require('configs.dashboard').config()
require('configs.filetree').config()
require('configs.git').config()
require('configs.grammar').config()
require('configs.lualine').config()
require('configs.nvim-neoclip').config()
require('configs.outlinetree').config()
require('configs.telescope').config()
require('configs.treesitter').config()
require('configs.vista')

require('lsp.setup')

require('core.theme')
