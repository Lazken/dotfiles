function Addart(base, art)
  for _, value in ipairs(art) do
    table.insert(base, value)
  end
end


return {
  "goolord/alpha-nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },

    config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.startify")
    local bullsiart = {
      [[                                                                       ]],
      [[                                                                       ]],
      [[      ███████████             ████  ████                      ███  		 ]],
      [[     ░░███░░░░░███           ░░███ ░░███                     ░░░   		 ]],
      [[      ░███    ░███ █████ ████ ░███  ░███   █████             ████  		 ]],
      [[      ░██████████ ░░███ ░███  ░███  ░███  ███░░   ██████████░░███  		 ]],
      [[      ░███░░░░░███ ░███ ░███  ░███  ░███ ░░█████ ░░░░░░░░░░  ░███  		 ]],
      [[      ░███    ░███ ░███ ░███  ░███  ░███  ░░░░███            ░███  	   ]],
      [[      ███████████  ░░████████ █████ █████ ██████             █████ 		 ]],
      [[     ░░░░░░░░░░░    ░░░░░░░░ ░░░░░ ░░░░░ ░░░░░░             ░░░░░  		 ]],
      [[                                                               				 ]]
    }
    local neovimart = {
      [[                                                               				 ]],
      [[                                                                     ]],
      [[       ████ ██████           █████      ██                     ]],
      [[      ███████████             █████                             ]],
      [[      █████████ ███████████████████ ███   ███████████   ]],
      [[     █████████  ███    █████████████ █████ ██████████████   ]],
      [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
      [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
      [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
      [[                                                                       ]],
      [[                                                                       ]]
    }
    local todisplayart = {
    }
    Addart(todisplayart, bullsiart)
   -- Addart(todisplayart, neovimart)
    dashboard.section.header.val = todisplayart
    alpha.setup(dashboard.opts)
  end
}
