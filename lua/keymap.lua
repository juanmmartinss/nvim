-- Define o Espaço como tecla principal (Leader)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local map = vim.keymap.set

-- Limpar destaque de pesquisa apertando Esc
map('n', '<Esc>', '<cmd>nohlsearch<CR>', { desc = 'Limpar destaque' })

-- Navegação entre janelas (Splits)
map('n', '<C-h>', '<C-w><C-h>', { desc = 'Mover para janela da esquerda' })
map('n', '<C-l>', '<C-w><C-l>', { desc = 'Mover para janela da direita' })
map('n', '<C-j>', '<C-w><C-j>', { desc = 'Mover para janela de baixo' })
map('n', '<C-k>', '<C-w><C-k>', { desc = 'Mover para janela de cima' })

-- Salvar
map('n', '<C-s>', ':w<CR>', { silent = true, desc = 'Salvar' })
map('i', '<C-s>', '<Esc>:w<CR>a', { silent = true, desc = 'Salvar' })
map('v', '<C-s>', '<Esc>:w<CR>', { silent = true, desc = 'Salvar' })

-- Fechar
map('n', '<C-q>', ':q<CR>', { silent = true, desc = 'Fechar' })

-- Apagar sem copiar para o registro (Blackhole)
map('n', 'dd', '"_dd', { desc = 'Deletar linha sem copiar' })
map('v', 'd', '"_d', { desc = 'Deletar seleção sem copiar' })

-- Pular meia página e manter o cursor no centro
map('n', '<C-d>', '<C-d>zz', { desc = 'Pular meia página para baixo' })
map('n', '<C-u>', '<C-u>zz', { desc = 'Pular meia página para cima' })

-- Navegação entre buffers (Abas)
map('n', '<S-l>', ':bnext<CR>', { silent = true, desc = 'Próximo buffer' })
map('n', '<S-h>', ':bprevious<CR>', { silent = true, desc = 'Buffer anterior' })

-- Identação no modo visual
map('v', '<Tab>', '>gv', { desc = 'Indentar e manter seleção' })
map('v', '<S-Tab>', '<gv', { desc = 'Desidentar e manter seleção' })

-- Mover blocos de linhas no modo visual (Corrigido)
map('v', 'J', ":m '>+1<CR>gv=gv", { silent = true, desc = 'Mover bloco para baixo' })
map('v', 'K', ":m '<-2<CR>gv=gv", { silent = true, desc = 'Mover bloco para cima' })

-- Substituir a palavra em que o cursor está
map('n', 's', 's', { desc = 'Substituir caractere' })
map('x', 's', 's', { desc = 'Substituir seleção' })
