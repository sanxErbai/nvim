return require('bufferline').setup({
  options = {
    -- 侧边栏配置
    close_command = "bdelete! %d",
    -- 左侧让出 nvim-tree 的位置，显示文字 File Explorer
    offsets = {{
        filetype = "NvimTree",
        text = "File Explorer",
        highlight = "Directory",
        text_align = "left"
    }}
  }
})
