local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd 'packadd packer.nvim'
end

--
-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- -- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]
-- -- Only if your version of Neovim doesn't have https://github.com/neovim/neovim/pull/12632

local packer = require('packer')
local util = require('packer.util')

packer.startup(function()

	use {'wbthomason/packer.nvim', opt = true}
	use {'kyazdani42/nvim-web-devicons', cond = nightly}
	use {'lewis6991/gitsigns.nvim' }
	use {
		'famiu/feline.nvim',
		after = {
			'nvim-web-devicons',
			'gitsigns.nvim',
		}
	}
	use  'mangeshrex/uwu.vim'
end)


