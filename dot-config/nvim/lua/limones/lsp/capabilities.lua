local M = {}

-- local capabilities = require("cmp_nvim_lsp").default_capabilities()
M.capabilities = {
    textDocument = {
        completion = {
            dynamicRegistration = false,
            completionItem = {
                snippetSupport = true,
                commitCharactersSupport = true,
                deprecatedSupport = true,
                preselectSupport = true,
                tagSupport = { valueSet = {
                    1, -- Deprecated 
                }, },
                insertReplaceSupport = true,
                resolveSupport  = { properties = {
                    "documentation",
                    "additionalTextEdits",
                    "insertTextFormat",
                    "insertTextMode",
                    "command",
                }, },
                insertTextModeSupport = { valueSet = {
                    1, -- asIs
                    2, -- adjustIdentation
                }, },
                labelDetailsSupport = true,
            },
            contextSupport = true,
            insertTextMode = 1,
            completionList = {
                itemDefaults = {
                    "commitCharacters",
                    "editRange",
                    "insertTextFormat",
                    "insertTextMode",
                    "data",
                },
            },
        },
    },
}

return M
