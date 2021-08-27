local action_state = require('telescope.actions.state') -- runtime (Plugin) exists somewhere as lua/telescope/actions/state.lua
require('telescope').setup{
  defaults = {
      prompt_prefix = " ",
      mappings = {
          i = {
            ["<c-a>"] = function() print(vim.inspect(action_state.get_selected_entry())) end 
          }        
      },
      file_ignore_patterns= { "%.tags","./tags","%.pdf","%.tar","%.zip","%.tgz"},
      dynamic_preview_title =true,
      path_display = function(opts,path)
        local tail = require("telescope.utils").path_tail(path)
        return string.format("%s (%s)", tail,path)
      end,
    }
  }
require('telescope').load_extension('fzf')
require('telescope').load_extension('coc')

local mappings = {
    
}
mappings.curr_buf = function() 
  local opt = require('telescope.themes').get_dropdown({height=10, previewer=false})
  require('telescope.builtin').current_buffer_fuzzy_find(opt)
  print("teej")
end
return mappings
