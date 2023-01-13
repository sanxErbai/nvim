-- leader key 为空
vim.g.mapleader = "`"
vim.g.maplocalleader = "`"

local opt = {
  noremap = true,
  silent = true,
}

-- 本地变量
local map = vim.api.nvim_set_keymap

-- fix :set wrap
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

-- visual模式下缩进代码
map("v", "<", "<gv", opt)
map("v", ">", ">gv", opt)
-- 上下移动选中文本
map("v", "J", ":move '>+1<CR>gv-gv", opt)
map("v", "K", ":move '<-2<CR>gv-gv", opt)

-- 行首行尾
map("n", ".", "$", opt)
map("n", ";", "%", opt)
map("n", ",", "^", opt)

-- 删除不存粘贴板
map("n", "x", "\"_x", opt)
map("n", "X", "\"_X", opt)
map("n", "d", "\"_d", opt)
map("n", "D", "\"_D", opt)
map("v", "x", "\"_x", opt)
map("v", "d", "\"_d", opt)


-- 分屏快捷键
--------------------------------------------------------------------
-- 取消 s 默认功能
map("n", "s", "", opt)
-- 分屏
map("n", "sv", ":vsp<CR>", opt)
map("n", "sh", ":sp<CR>", opt)
-- 关闭当前
map("n", "sc", "<C-w>c", opt)
-- 关闭其他
map("n", "so", "<C-w>o", opt)
-- 左右比例控制
map("n", "si", ":vertical resize -10<CR>", opt)
map("n", "so", ":vertical resize +10<CR>", opt)
-- 上下比例
map("n", "sj", ":resize +10<CR>", opt)
map("n", "sk", ":resize -10<CR>", opt)
-- 相等比例
map("n", "s=", "<C-w>=", opt)
-- <leader> + hjkl 窗口之间跳转
map("n", "<C-h>", "<C-w>h", opt)
map("n", "<C-j>", "<C-w>j", opt)
map("n", "<C-k>", "<C-w>k", opt)
map("n", "<C-l>", "<C-w>l", opt)
-- Terminal相关
map("n", "stv", ":vsp | terminal<CR>", opt)
map("n", "sth", ":sp | terminal<CR>", opt)
-- Esc 回 Normal 模式
map("t", "<Esc>", "<C-\\><C-n>", opt)
map("t", "<C-h>", [[ <C-\><C-N><C-w>h ]], opt)
map("t", "<C-j>", [[ <C-\><C-N><C-w>j ]], opt)
map("t", "<C-k>", [[ <C-\><C-N><C-w>k ]], opt)
map("t", "<C-l>", [[ <C-\><C-N><C-w>l ]], opt)
--------------------------------------------------------------------

-- nvimTree
map('n', '<leader>m', ':NvimTreeToggle<CR>', opt)

-- bufferline
-- 左右Tab切换
map("n", "<leader>h", ":BufferLineCyclePrev<CR>", opt)
map("n", "<leader>l", ":BufferLineCycleNext<CR>", opt)
-- "moll/vim-bbye" 关闭当前 buffer
map("n", "<C-w>", ":bp <BAR> bd! #<CR>", opt)
-- 关闭左/右侧标签页
map("n", "<leader>br", ":BufferLineCloseRight<CR>", opt)
map("n", "<leader>bl", ":BufferLineCloseLeft<CR>", opt)
-- 关闭其他标签页
map("n", "<leader>bo", ":BufferLineCloseRight<CR>:BufferLineCloseLeft<CR>", opt)

-- 注释
map("n", "<C-/>", "gcc", { noremap = false })
map("v", "<C-/>", "gcc", { noremap = false })

-- Telescope
map("n", "<C-p>", ":Telescope find_files<CR>", opt)
map("n", "<leader>f", ":Telescope live_grep<CR>", opt)
map("n", "<leader>p", ":Telescope projects<CR>", opt)
