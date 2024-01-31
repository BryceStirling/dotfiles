--this is cattpucin with custom nord colors so that I can change them easy and because I am lazy
return {
    "catppuccin/nvim", 
    name = "catppuccin", 
    priority = 1000,
    config = function()
        require("catppuccin").setup {
        color_overrides = {
            all = {
            base = "#2e3440", --
            mantle = "#4c566a", --
            surface0 = "#4c566a", --
            surface1 = "#4c566a", --test #3b4252
            surface2 = "#ff0000", --red
            text = "#d8dee9", -- 
            rosewater = "#0015ff", --blue
            lavender = "#e5e9f0", --
            red = "#bf616a", ---
            peach = "#b48ead", --
            yellow = "#88c0d0", --
            green = "#a3be8c", --
            teal = "#88c0d0", --- 
            blue = "#81a1c1", ---
            mauve = "#81a1c1", --
            flamingo = "#88c0d0", --
            }
        }
        }
        vim.cmd.colorscheme "catppuccin"
    end
}
