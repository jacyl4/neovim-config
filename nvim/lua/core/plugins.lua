local vim = vim
local fn = vim.fn
local execute = vim.api.nvim_command
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd [[packadd packer.nvim]]
end

local packer = require('packer')
local util = require('packer.util')
packer.init({
  package_root = util.join_paths(fn.stdpath('data'), 'site', 'pack')
})
--- startup and add configure plugins
packer.startup(function()
local use = use
	use 'wbthomason/packer.nvim'
	use 'nvim-lua/plenary.nvim' -- 很多 lua 插件依赖的库

	-- 主题
	use 'morhetz/gruvbox'
	use 'eddyekofo94/gruvbox-flat.nvim'
	
	-- dashboard
	use 'goolord/alpha-nvim'

	-- 启动优化
	use 'dstein64/vim-startuptime'
	use 'lewis6991/impatient.nvim'
	use 'nathom/filetype.nvim'

	-- buffer
	use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
	use 'kazhala/close-buffers.nvim' -- 实现删除不可见 buffer 的功能
	use 'gelguy/wilder.nvim' -- 更加智能的命令窗口
  use 'romgrk/fzy-lua-native' -- wilder.nvim 的依赖

	use {'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons'} -- 文件树

	-- language
	use 'nvim-treesitter/nvim-treesitter' -- 基于语义的高亮
	use 'onsails/lspkind-nvim'
	use 'neovim/nvim-lspconfig'
	use 'williamboman/nvim-lsp-installer'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'

	use 'L3MON4D3/LuaSnip'
	use 'saadparwaiz1/cmp_luasnip'

	-- 快速注释代码
	use 'tpope/vim-commentary'
	use 'tpope/vim-fugitive'
	use 'tpope/vim-repeat'
	use 'tpope/vim-surround'
	use 'tpope/vim-unimpaired'

	-- 导航栏
	use 'liuchengxu/vista.vim'

	-- search
	use {'junegunn/fzf', run = './install --bin'}
	use 'junegunn/fzf.vim'
	use {'ibhagwan/fzf-lua', requires = {'kyazdani42/nvim-web-devicons'}}

	use 'windwp/nvim-spectre' -- 媲美 vscode 的多文件替换

	-- 剪切板
	use {'AckslD/nvim-neoclip.lua', requires = {'nvim-telescope/telescope.nvim'}}


	-- git
	use {'lewis6991/gitsigns.nvim', tag ='release'}

	-- status line
	use {'nvim-lualine/lualine.nvim', requires = {"kyazdani42/nvim-web-devicons", opt = true}}

	-- tagbar
	use 'simrat39/symbols-outline.nvim'

	-- 终端
	use 'voldikss/vim-floaterm' -- 悬浮终端
	use 'CRAG666/code_runner.nvim' -- 一键运行代码

	-- 基于 telescope 的搜索
	use {'nvim-telescope/telescope.nvim', requires = 'nvim-lua/plenary.nvim'}
	use {'nvim-telescope/telescope-fzf-native.nvim', run='make'} -- telescope 搜索的插件，可以提升搜索效率

	-- markdown
	use "suan/vim-instant-markdown"

	-- indent guide
	use 'lukas-reineke/indent-blankline.nvim'

	-- english grammar check
	use 'rhysd/vim-grammarous'
	use 'jose-elias-alvarez/null-ls.nvim'
	use 'rlue/vim-barbaric'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
