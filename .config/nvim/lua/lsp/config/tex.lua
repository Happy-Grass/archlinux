local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, 'lua/?.lua')
table.insert(runtime_path, 'lua/?/init.lua')

local opts = {
    settings = {
            texlab = {
              auxDirectory = ".",
              bibtexFormatter = "texlab",
              build = {
                args = { "-pdf", "-interaction=nonstopmode", "-synctex=1", "%f" },
                executable = "latexmk",
                forwardSearchAfter = false,
                onSave = false
              },
              chktex = {
                onEdit = false,
                onOpenAndSave = false
              },
              diagnosticsDelay = 300,
              formatterLineLength = 80,
              forwardSearch = {
                args = {}
              },
              latexFormatter = "latexindent",
              latexindent = {
                modifyLineBreaks = false
                }
              }
           },
    flags = {
        debounce_text_changes = 150,
    },
    on_attach = function(client, bufnr)
        -- 禁用格式化功能，交给专门插件插件处理
        client.resolved_capabilities.document_formatting = false
        client.resolved_capabilities.document_range_formatting = false

        local function buf_set_keymap(...)
            vim.api.nvim_buf_set_keymap(bufnr, ...)
        end
        -- 绑定快捷键
        require('keybindings').mapLSP(buf_set_keymap)
        -- 保存时自动格式化
        vim.cmd('autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()')
    end,
}

-- 查看目录等信息
return {
    on_setup = function(server)
        server:setup(opts)
    end,
}
