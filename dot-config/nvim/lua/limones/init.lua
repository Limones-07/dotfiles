
require("limones.opts")
require("limones.treesitter")
require("limones.remaps")
require("limones.colorscheme")
require("limones.harpoon")

-- lazy loading
local function load_cmp_stack()
    vim.cmd.packadd("nvim-cmp")
    vim.cmd.packadd("cmp-buffer")
    vim.cmd.packadd("cmp-path")
    vim.cmd.packadd("cmp-cmdline")
    vim.cmd.packadd("cmp-nvim-lsp")
end

local function restart_lsp(bufnr)
    local clients = vim.lsp.get_clients()
    if vim.tbl_isempty(clients) then return end
    for _, client in ipairs(clients) do
        client:stop(true)
    end
    vim.wait(1000, function()
        return vim.tbl_isempty(vim.lsp.get_clients())
    end, 50)
    vim.defer_fn(function()
        vim.api.nvim_exec_autocmds("FileType", { buffer = bufnr })
    end, 10)
end

local function ensure_capabilities()
    local json = function(tbl) return vim.json.encode(tbl) end
    local capabilities = require("cmp_nvim_lsp").default_capabilities()
    if json(capabilities) ~= json(require("limones.lsp.capabilities").capabilities) then
        vim.notify("cmp-nvim-lsp capabilities are different than " ..
                   "limones.lsp.capabilities'!",
            vim.log.levels.WARN)
        for _, client in pairs(vim.lsp.get_clients()) do
            if client.config then
                client.config.capabilities = capabilities
            end
        end
        vim.schedule(function()
            restart_lsp(vim.api.nvim_get_current_buf())
        end)
    end
end

vim.api.nvim_create_autocmd("BufReadPost", {
    once = true,
    callback = function()
        require("limones.lsp.lsp")
    end,
})

vim.api.nvim_create_autocmd("BufEnter", {
    callback = function(args)
        vim.api.nvim_create_autocmd("InsertEnter", {
            buffer = args.buf,
            once = true,
            callback = ensure_capabilities,
        })
    end,
})

vim.api.nvim_create_autocmd("InsertEnter", {
    once = true,
    callback = function ()
        vim.schedule(function()
            load_cmp_stack()
            vim.cmd.packadd("autopairs")
            require("limones.lsp.cmp")
            require("limones.autopairs")
        end)
    end,
})

