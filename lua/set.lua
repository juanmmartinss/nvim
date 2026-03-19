local opt = vim.opt

opt.number = true
opt.relativenumber = true

opt.mouse = 'a'
opt.showmode = false
opt.clipboard = 'unnamedplus'
opt.undofile = true
opt.updatetime = 250
opt.timeoutlen = 300

opt.breakindent = true
opt.signcolumn = 'yes'
opt.cursorline = true
opt.scrolloff = 10
opt.termguicolors = true

opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true

opt.ignorecase = true
opt.smartcase = true

opt.splitright = true
opt.splitbelow = true

opt.list = true
opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
opt.inccommand = 'split'
