local function map(mode, key, command)
  opts = opts or { noremap = false, silent = true }
  vim.keymap.set(mode, key, command)
end

-- Salvar com Ctrl + S
map('n', '<C-s>', ':w<CR>')
map('i', '<C-s>', '<Esc>:w<CR>a')
map('v', '<C-s>', '<Esc>:w<CR>')

-- Fechar janela com Ctrl + Q
map('n', '<C-q>', ':q<CR>')

-- Apagar linha sem salvar no registro
map('n', 'dd', [["_dd]])
-- Modo visual: também redirecionar pro registro nulo
map('v', 'd', '"_d')

map('n', '<C-d>', '<C-d>zz')

map('n', '<C-u>', '<C-u>zz')

map("n", "<S-l>", ":bnext<CR>")
map("n", "<S-h>", ":bprevious<CR>")

-- Visual mode identation
map("v", "<Tab>",   ">gv")
map("v", "<S-Tab>", "<gv")

-- Visual mode line movement
map("v", "J", ":m '>+1'<CR>gv=gv")
map("v", "K", ":m '<-2'<CR>gv=gv")
