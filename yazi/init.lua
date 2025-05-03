require("git"):setup()

th.git = th.git or {
    -- File status styles
    modified = ui.Style():fg("#569CD6"):bold(),  -- soft blue
    added = ui.Style():fg("#4EC9B0"),           -- teal
    deleted = ui.Style():fg("#F48771"):bold(),  -- soft red
    renamed = ui.Style():fg("#DCDCAA"),         -- light yellow
    untracked = ui.Style():fg("#C586C0"),       -- lavender
    ignored = ui.Style():fg("#858585"),         -- gray
    
    -- Status signs (can use icons if your font supports them)
    modified_sign = "",  -- or "M"
    added_sign = "",     -- or "A"
    deleted_sign = "",   -- or "D"
    renamed_sign = "➜",   -- or "R"
    untracked_sign = "?", 
    ignored_sign = "!",
    
    -- Optional: line change indicators
    changes = {
        add = ui.Style():fg("#4EC9B0"),         -- teal
        delete = ui.Style():fg("#F48771"),      -- soft red
        change = ui.Style():fg("#569CD6"),      -- soft blue
    },
    
    -- Optional: blame styling
    blame = {
        style = ui.Style():fg("#858585"):italic(),
        format = "    %author%, %age%",
    }
}
