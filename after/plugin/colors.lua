function ColorMyPencils(color)
  color = color or "rose-pine"
  -- vim.cmd.colorscheme(color)
  require("tokyonight").setup({
    style = "night",
    transparent = true,
    on_highlights = function(hl, c)
      local prompt = "none"
      hl.TelescopeNormal = {
        bg = prompt,
        fg = c.fg_dark
      }
      hl.TelescopeBorder = {
        bg = prompt,
        fg = c.fg_dark,
      }
      hl.TelescopePromptNormal = {
        bg = prompt,
      }
      hl.TelescopePromptBorder = {
        bg = prompt,
        fg = prompt,
      }
      hl.TelescopePromptTitle = {
        bg = prompt,
        fg = prompt,
      }
      hl.TelescopePreviewTitle = {
        bg = prompt,
        fg = c.fg_dark,
      }
      hl.TelescopeResultsTitle = {
        bg = prompt,
        fg = c.fg_dark,
      }
    end,
  })
  vim.cmd[[colorscheme tokyonight]]

  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end

ColorMyPencils()
