-- local lsp = require('lsp-zero')

-- lsp.preset("recommended")

-- local cmp = require('cmp')
-- local cmp_select = { behavior = cmp.SelectBehavior.Select }
-- local cmp_mappings = lsp.defaults.cmp_mappings({
--   --  ['<A-p>'] = cmp.mapping.select_prev_item(cmp_select),
--   --  ['<A-n>'] = cmp.mapping.select_next_item(cmp_select),
--   --  ['<A-y>'] = cmp.mapping.confirm({ select = true }),
--   ['<S-Tab>'] = cmp.mapping.select_prev_item(cmp_select),
--   ['<Tab>'] = cmp.mapping.select_next_item(cmp_select),
--   ['<cr>'] = cmp.mapping.confirm({ select = true }),
--   -- ["<C-Space>"] = cmp.mapping.complete(),
-- })

-- lsp.setup_nvim_cmp({
--   mapping = cmp_mappings
-- })

-- lsp.set_preferences({
--   suggest_lsp_servers = true,
--   sign_icons = {
--     error = 'E',
--     warn = 'W',
--     hint = 'H',
--     info = 'I'
--   }
-- })

-- lsp.on_attach(function(client, bufnr)
--   local opts = { buffer = bufnr, remap = false }

--   vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
--   vim.keymap.set("n", "gD", function() vim.lsp.buf.declaration() end, opts)
--   vim.keymap.set("n", "gI", function() vim.lsp.buf.implementation() end, opts)
--   vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
--   vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
--   vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
--   vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
--   vim.keymap.set("n", "<leader>rr", function() vim.lsp.buf.references() end, opts)
--   vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)

--   vim.keymap.set("n", "<leader>s", require('telescope.builtin').lsp_document_symbols, opts)
--   vim.keymap.set("n", "<leader>S", require('telescope.builtin').lsp_dynamic_workspace_symbols, opts)

--   --lsp.buffer_autoformat()
-- end)

-- require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())
-- require('lspconfig').ols.setup({});

-- vim.diagnostic.config({
--   virtual_text = true
-- })

-- lsp.setup()
