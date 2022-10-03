
local function tagname()
  local p = vim.fn['tagbar#currenttag']('%s', '')
  return p
end

require('lualine').setup{
  options = {
    theme = 'dracula'
  },
  sections = {
    lualine_c = {{'filename', color = { fg = '#97ed79'}}, {tagname, color = { fg = '#ed79e8', gui='italic' }} },
  },
  inactive_sections = {
    lualine_c = {{'filename', color = { fg = '#97ed79'}}, {tagname, color = { fg = '#ed79e8', gui='italic' }} },
  },
}

