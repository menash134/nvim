
local function tagname()
  local p = vim.fn['tagbar#currenttag']('%s', '')
  return p
end

require('lualine').setup{
  options = {
    theme = 'dracula'
  },
  sections = {
    lualine_c = {'filename', tagname},
  },
  inactive_sections = {
    lualine_c = {'filename', tagname},
  },
}

