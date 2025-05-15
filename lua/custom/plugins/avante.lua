return {
  'yetone/avante.nvim',
  event = 'VeryLazy',
  version = false, -- Never set this value to "*"! Never!
  build = 'make',
  opts = {
    disable_tools = false,
    provider = 'copilot',
    copilot = {
      endpoint = 'https://api.githubcopilot.com',
      model = 'claude-3.7-sonnet',
      proxy = nil, -- [protocol://]host[:port] Use this proxy
      allow_insecure = false, -- Allow insecure server connections
      timeout = 30000, -- Timeout in milliseconds
      temperature = 0,
      max_tokens = 64000,
    },
    behaviour = {
      auto_suggestions = false,
      enable_cursor_planning_mode = true,
      auto_suggestions_respect_ignore = true,
      enable_claude_text_editor_tool_mode = true,
      use_cwd_as_project_root = true,
    },
    -- openai = {
    --   endpoint = 'https://litellm.a2d.tv/',
    --   model = 'gpt-4.1',
    --   api_key_name = 'LITELLM_API_KEY',
    -- },
    vendors = {
      litellm = {
        __inherited_from = 'openai',
        endpoint = 'https://litellm.a2d.tv/',
        api_key_name = 'LITELLM_API_KEY',
        model = 'gpt-4.1',
      },
    },
  },
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    'stevearc/dressing.nvim',
    'nvim-lua/plenary.nvim',
    'MunifTanjim/nui.nvim',
    --- The below dependencies are optional,
    'echasnovski/mini.pick', -- for file_selector provider mini.pick
    'nvim-telescope/telescope.nvim', -- for file_selector provider telescope
    'hrsh7th/nvim-cmp', -- autocompletion for avante commands and mentions
    'ibhagwan/fzf-lua', -- for file_selector provider fzf
    -- 'nvim-tree/nvim-web-devicons', -- or echasnovski/mini.icons
    'zbirenbaum/copilot.lua', -- for providers='copilot'
    {
      -- support for image pasting
      'HakonHarnes/img-clip.nvim',
      event = 'VeryLazy',
      opts = {
        -- recommended settings
        default = {
          embed_image_as_base64 = false,
          prompt_for_file_name = false,
          drag_and_drop = {
            insert_mode = true,
          },
          -- required for Windows users
          use_absolute_path = true,
        },
      },
    },
  },
}
