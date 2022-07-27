-- utf8
vim.g.encoding = 'UTF-8'
vim.opt.fileencoding = 'utf-8'
-- basics
vim.cmd [[filetype plugin indent on]]
vim.opt.clipboard		    = "unnamedplus"
vim.opt.syntax			    = 'on'
vim.opt.signcolumn		  = 'yes'
vim.opt.errorbells	    = false
vim.opt.smartcase		    = true
vim.opt.showmode		    = false
vim.opt.undofile		    = true
vim.opt.incsearch		    = true
vim.opt.hidden			    = true
vim.opt.number          = true
vim.opt.relativenumber  = true
vim.opt.wrap			      = false
vim.opt.shiftround      = true
vim.opt.updatetime      = 100
vim.opt.cursorline      = true
vim.opt.autowrite       = true

-- tabs
vim.opt.autoindent		  = true
vim.opt.smartindent		  = true
vim.opt.expandtab		    = true
vim.opt.tabstop         = 2
vim.opt.shiftwidth      = 2
vim.opt.softtabstop     = 2

vim.g.did_install_default_menus = 1
vim.g.did_install_syntax_menu   = 1
vim.g.did_indent_on             = 1
vim.g.did_load_filetypes        = 1
vim.g.did_load_ftplugin         = 1
vim.g.loaded_2html_plugin       = 1
vim.g.loaded_man                = 1
vim.g.loaded_matchit            = 1
vim.g.loaded_matchparen         = 1
vim.g.loaded_logiPat           	= 1
vim.g.loaded_rrhelper          	= 1
vim.g.loaded_shada_plugin       = 1
vim.g.loaded_spellfile_plugin   = 1
vim.g.loaded_netrw             	= 1
vim.g.loaded_netrwPlugin        = 1
vim.g.loaded_gzip               = 1
vim.g.loaded_tarPlugin          = 1
vim.g.loaded_zipPlugin          = 1
vim.g.loaded_tutor_mode_plugin  = 1
vim.g.loaded_remote_plugins     = 1
vim.g.skip_loading_mswin        = 1

-- 补全增强
vim.opt.wildmenu                 = true
-- ================ Scrolling ================ --
vim.opt.scrolloff = 8 -- start scrolling when 8 lines away from margins
