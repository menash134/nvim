local action_state = require('telescope.actions.state') -- runtime (Plugin) exists somewhere as lua/telescope/actions/state.lua
require('telescope').setup{
  defaults = {
      prompt_prefix = ">>",
      mappings = {
          i = {
            ["<c-a>"] = function() print(vim.inspect(action_state.get_selected_entry())) end ,
            ["<c-b>"] = require('telescope.actions').cycle_history_next,
            ["<c-c>"] = require('telescope.actions').cycle_history_prev
          }        
      },
      file_ignore_patterns= { "%.tags","./tags","%.pdf","%.tar","%.zip","%.tgz", "%.txt", "5.0"},
      dynamic_preview_title =true,
      path_display = {['shorten'] = 6}
    }
}
require('telescope').load_extension('fzf')
require('telescope').load_extension('coc')
require("telescope").load_extension('harpoon')
require('telescope').load_extension('frecency')

require('telescope').setup{
  extensions = {
    frecency = {
      db_root = "/home/adshas0/.config/nvim/db_root",
      show_scores = false,
      show_unindexed = true,
      ignore_patterns = {"*.git/*", "*/tmp/*"},
      disable_devicons = false,
      workspaces = {
        ["conf"]    = "/home/adshas0/.config",
      }
    }
  }
}

local actions = require("telescope-live-grep-args.actions")
require('telescope').setup{
  extensions = {
    live_grep_args = {
      auto_quoting = true, -- enable/disable auto-quoting
      mappings = {
        i = {
          ["<C-k>"] = actions.quote_prompt(),
          ["<C-g>"] = actions.quote_prompt({ postfix = " -tc -g '*.{c}' " }),
          ["<C-l>t"] = actions.quote_prompt({ postfix = ' -tc' }),
        }
      }
    }
  }
}

local mappings = {
    
}
mappings.curr_buf = function() 
  local opt = require('telescope.themes').get_dropdown({height=10, previewer=false})
  require('telescope.builtin').current_buffer_fuzzy_find(opt)
  print("teej")
end
return mappings



      --path_display = function(opts,path)
        --local tail = require("telescope.utils").path_tail(path)
        --return string.format("%s (%s)", tail,path)
      --end,
