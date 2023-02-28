--[[
 THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT
 `lvim` is the global options object
]]
if vim.fn.has "wsl" == 1 then
  vim.g.clipboard = {
    copy = {
      ["+"] = "/mnt/d/win32yank/win32yank.exe -i --crlf",
      ["*"] = "/mnt/d/win32yank/win32yank.exe -i --crlf",
    },
    paste = {
      ["+"] = "/mnt/d/win32yank/win32yank.exe -o --lf",
      ["*"] = "/mnt/d/win32yank/win32yank.exe -o --lf",
    },
  }
end
-- TODO:hola 
-- WARN:hoho
-- NOTE:problemas  
-- FIX:esto es un fix
-- PERF: esto es un PERF
-- TODO: azul TOod
-- => <= >= != == === /= /==
--
--
lvim.colorscheme = "tokyonight-moon"
lvim.builtin.lualine.style = "default"
lvim.builtin.treesitter.rainbow.enable = true

local components = reload("lvim.core.lualine.components")
lvim.keys.normal_mode["<c-s>"] = "<cmd>w!<cr>"
lvim.keys.normal_mode["<C-i>"] = ":%s/"

-- vim options
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.relativenumber = true

-- general
lvim.log.level = "info"
lvim.format_on_save = {
  enabled = true,
  pattern = "*.lua",
  timeout = 1000,
}
lvim.format_on_save = {
  enabled = true,
  pattern = "*.dart",
  timeout = 1000,
}
-- to disable icons and use a minimalist setup, uncomment the following
-- lvim.use_icons = false

-- keymappings <https://www.lunarvim.org/docs/configuration/keybindings>
lvim.leader = "space"
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"

-- lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
-- lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"

-- -- Use which-key to add extra bindings with the leader-key prefix
-- lvim.builtin.which_key.mappings["W"] = { "<cmd>noautocmd w<cr>", "Save without formatting" }
-- lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }

-- -- Change theme settings
-- lvim.colorscheme = "lunar"
-- 
--
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false
local hola = 'soy una variable local'
-- Automatically install missing parsers when entering buffer
lvim.builtin.treesitter.auto_install = true

lvim.builtin.lualine.sections.lualine_a = { "mode" }

lvim.builtin.lualine.sections.lualine_b = {
  components.branch,
  components.filename,
}
lvim.builtin.lualine.sections.lualine_c = {
  components.diff,
  components.python_env,
  components.encoding,
}

lvim.builtin.lualine.sections.lualine_x = {
  components.diagnostics,
  components.treesitter,
  components.lsp,
  components.filetype,
}
lvim.builtin.lualine.sections.lualine_y = { "progress" }
lvim.builtin.lualine.sections.lualine_z = {
  components.scrollbar,
}

lvim.keys.normal_mode["<c-s>"] = "<cmd>w!<cr>"
lvim.keys.normal_mode["<C-i>"] = ":%s/"
lvim.keys.normal_mode["<S-l>"] = ":bnext<cr>"
lvim.keys.normal_mode["<S-h>"] = ":bprev<cr>"
lvim.keys.insert_mode["jf"] = "<CR>"
lvim.keys.insert_mode["jk"] = "<Esc>:<cr>"
lvim.keys.insert_mode["kj"] = "<Esc>:<cr>"
lvim.builtin.which_key.mappings["t"] = {
  name = "+Trouble",
  r = { "<cmd>Trouble lsp_references<cr>", "References" },
  f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
  d = { "<cmd>Trouble lsp_document_diagnostics<cr>", "Diagnostics" },
  q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
  l = { "<cmd>Trouble loclist<cr>", "LocationList" },
  w = { "<cmd>Trouble lsp_workspace_diagnostics<cr>", "Diagnostics" },
}
-- lvim.builtin.treesitter.ignore_install = { "haskell" }
-- => hola mundo jijiji 
-- TODO:
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "json",
  "lua",
  "typescript",
  "tsx",
  "css",
  "yaml",
  -- "dart",
  "ruby"
}
-- -- generic LSP settings <https://www.lunarvim.org/docs/languages#lsp-support>
-- --- disable automatic installation of servers
--
lvim.builtin.telescope.on_config_done = function(telescope)
  telescope.load_extension "flutter"
end
lvim.builtin.which_key.mappings["F"] = {
  name = "+Flutter",
  c = { "<cmd>Telescope flutter commands<cr>", "Open Flutter Commans" },
  d = { "<cmd>FlutterDevices<cr>", "Flutter Devices" },
  e = { "<cmd>FlutterEmulators<cr>", "Flutter Emulators" },
  r = { "<cmd>FlutterReload<cr>", "Hot Reload App" },
  R = { "<cmd>FlutterRestart<cr>", "Hot Restart app" },
  q = { "<cmd>FlutterQuit<cr>", "Quit running application" },
  v = { "<cmd>Telescope flutter fvm<cr>", "Flutter version" },
}
lvim.lsp.installer.setup.ensure_installed = {
  "sumneko_lua",
  "jsonls",
  -- "dartls",
}
-- lvim.lsp.setup.automatic_configuration = true
lvim.lsp.installer.setup.automatic_installation = false

local luasnip = reload("luasnip")
luasnip.filetype_extend("dart", { "flutter" })

-- reload 'lspconfig'.dartls.setup {
--   cmd = { "dart", "language-server", "--protocol=lsp" },
--   filetypes = { 'dart' },
--   init_options = {
--     closingLabels = true,
--     flutterOutline = true,
--     onlyAnalyzeProjectsWithOpenFiles = true,
--     outline = true,
--     suggestFromUnimportedLibraries = true
--   },
--   settings = {
--     dart = {
--       completeFunctionCalls = true,
--       showTodos = true
--     },
--   },

-- }
-- ---configure a server manually. IMPORTANT: requires `:LvimCacheReset` to take effect
-- ---see the full default list `:lua =lvim.lsp.automatic_configuration.skipped_servers`
-- vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "dartls" })
-- local opts = {} -- check the lspconfig documentation for a list of all possible options
-- reload("lvim.lsp.manager").setup("dartls", opts)

-- -remove a server from the skipped list, e.g. eslint, or emmet_ls. IMPORTANT: requires `:LvimCacheReset` to take effect
---`:LvimInfo` lists which server(s) are skipped for the current filetype
lvim.lsp.automatic_configuration.skipped_servers = vim.tbl_filter(function(server)
  return server ~= "emmet_ls"
end, lvim.lsp.automatic_configuration.skipped_servers)

-- -- you can set a custom on_attach function that will be used for all the language servers
-- -- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
-- lvim.lsp.on_attach_callback = function(client, bufnr)
--   local function buf_set_option(...)
--     vim.api.nvim_buf_set_option(bufnr, ...)
--   end
--   --Enable completion triggered by <c-x><c-o>
--   buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
-- end

-- -- linters and formatters <https://www.lunarvim.org/docs/languages#lintingformatting>
local formatters = reload "lvim.lsp.null-ls.formatters"
formatters.setup {
  { command = "stylua",filetypes = {'lua'} },
  {
   command = "prettier",
    extra_args = { "--print-width", "100" },
    filetypes = { "typescript", "typescriptreact" },
  },
 {command = "dart_format" ,filetypes = {'dart'}},
}

local linters = reload "lvim.lsp.null-ls.linters"
linters.setup {
  { command = "flake8", filetypes = { "python" } },
  {
    command = "shellcheck",
    args = { "--severity", "warning" },
  },

}

-- -- Additional Plugins <https://www.lunarvim.org/docs/plugins#user-plugins>
lvim.plugins = {
  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },

  { "shaunsingh/nord.nvim" },
  { "andersevenrud/nordic.nvim" },
  { "rmehri01/onenord.nvim" },
  {
    "npxbr/glow.nvim",
    ft = { "markdown" }
  },
  { "nvim-lua/plenary.nvim" },
  { "simrat39/rust-tools.nvim",
    config = function()
      local lsp_installer_servers = reload "nvim-lsp-installer.servers"
      local _, requested_server = lsp_installer_servers.get_server "rust_analyzer"
      reload("rust-tools").setup({
        tools = {
          autoSetHints = true,
          hover_with_actions = true,
          runnables = {
            use_telescope = true,
          },
        },
        server = {
          cmd_env = requested_server._default_options.cmd_env,
          on_attach = reload("lvim.lsp").common_on_attach,
          on_init = reload("lvim.lsp").common_on_init,
        },
      })
    end,
    ft = { "rust", "rs" },
  },
  {
    "akinsho/flutter-tools.nvim",
    requires = 'nvim-lua/plenary.nvim',
    config = function()
      reload('flutter-tools').setup({
        -- flutter_path = "~/development/flutter",
        fvm = true, -- takes priority over path, uses <workspace>/.fvm/flutter_sdk if enabled
        ui = {
          -- the border type to use for all floating windows, the same options/formats
          -- used for ":h nvim_open_win" e.g. "single" | "shadow" | {<table-of-eight-chars>}
          border = "rounded",
          -- This determines whether notifications are show with `vim.notify` or with the plugin's custom UI
          -- please note that this option is eventually going to be deprecated and users will need to
          -- depend on plugins like `nvim-notify` instead.
          notification_style = 'plugin'
        },
        decorations = {
          statusline = {
            -- set to true to be able use the 'flutter_tools_decorations.app_version' in your statusline
            -- this will show the current version of the flutter app from the pubspec.yaml file
            app_version = true,
            -- set to true to be able use the 'flutter_tools_decorations.device' in your statusline
            -- this will show the currently running device if an application was started with a specific
            -- device
            device = true,
          }
        },
        outline = {
          open_cmd = "30vnew", -- command to use to open the outline buffer
          auto_open = false, -- if true this will open the outline automatically when it is first populated
        },

        debugger = {
          enabled = true,
          run_via_dap = true,
          -- register_configurations = function(_)
          --   local dap = reload("dap")
          --   local debugger_dir = path.join(fn.stdpath("cache"), "dart-code")
          --   local debugger_path = path.join(debugger_dir, "out", "dist", "debug.js")
          --   dap.adapters.dart = {
          --     type = "executable",
          --     command = "node",
          --     args = { debugger_path, "flutter" },
          --   }
          --   dap.set_log_level("TRACE")
          --   dap.configurations.dart = {}
          --   reload("dap.ext.vscode").load_launchjs()
          -- end,
        },
        dev_log = {
          enabled = true,
          open_cmd = "tabedit", -- command to use to open the log buffer
        },
        dev_tools = {
          autostart         = false,
          auto_open_browser = false

        },
        widget_guides = {
          enabled = true,
        },
        closing_tags = {
          highlight = "ErrorMsg", -- highlight for the closing tag
          prefix = ">", -- character to use for close tag e.g. > Widget
          enabled = true -- set to false to disable
        },

        lsp = {
          servers = {
            "dartls",
          },
          color = { -- show the derived colours for dart variables
            enabled = true, -- whether or not to highlight color variables at all, only supported on flutter >= 2.10
            background = false, -- highlight the background
            foreground = true, -- highlight the foreground
            virtual_text = true, -- show the highlight using virtual text
            virtual_text_str = "■", -- the virtual text character to highlight
          },
          settings = {
            showTodos = true,
            completeFunctionCalls = true,
            renameFilesWithClasses = "prompt", -- "always"
            enableSnippets = true,
            enableSdkFormatter = true,
            documentation = "summary"


          },
        },

      })
    end,
ft = "dart",
  },
  { 'dart-lang/dart-vim-plugin' },
{
  "folke/todo-comments.nvim",
  event = "BufRead",
  config = function()
    require("todo-comments").setup()
  end,
},

  {
    "monaqa/dial.nvim",
    event = "BufRead",
    config = function()
      -- local dial = reload "dial"
      local augend = reload("dial.augend")
      local map = reload "dial.map"
      local config = reload "dial.config"
      vim.api.nvim_set_keymap("n", "<C-a>", map.inc_normal(), { noremap = true })
      vim.api.nvim_set_keymap("n", "<C-x>", map.dec_normal(), { noremap = true })
      vim.api.nvim_set_keymap("v", "<C-a>", map.inc_visual(), { noremap = true })
      vim.api.nvim_set_keymap("v", "<C-x>", map.dec_visual(), { noremap = true })
      vim.api.nvim_set_keymap("v", "g<C-a>", map.inc_gvisual(), { noremap = true })
      vim.api.nvim_set_keymap("v", "g<C-x>", map.dec_gvisual(), { noremap = true })
      -- lvim.builtin.which_key.mappings["k"] = { "<cmd>"=type<CR><Plug>(dial-increment)", "+type decrememt" }
      vim.api.nvim_set_keymap("n", "<leader>a", map.inc_normal("type"), { noremap = true })
      vim.api.nvim_set_keymap("n", "<leader>k", map.dec_normal("type"), { noremap = true })
      -- vim.api.nvim_set_keymap("n", "<leader>a", map.inc_normal("ts"), { noremap = true })
      -- vim.api.nvim_set_keymap("n", "<leader>k", map.dec_normal("ts"), { noremap = true })
      config.augends:register_group {
        default = {
          -- augend.integer.alias.hex,
          -- augend.date.alias["%Y/%m/%d"],
          augend.hexcolor.new {
            case = "lower",
          },
          augend.constant.new {
            elements = { "and", "or" },
            word = true, -- if false, "sand" is incremented into "sor", "doctor" into "doctand", etc.
            cyclic = true, -- "or" is incremented into "and".
          },
          augend.constant.new {
            elements = { "&&", "||" },
            word = false,
            cyclic = true,
          },
          augend.constant.new {
            elements = { "true", "false" },
            word = false,
            cyclic = true,
          },
          augend.constant.new {
            elements = { "==", "!=" },
            word = false,
            cyclic = true,
          },
          augend.constant.new {
            elements = { "+=", "-=" },
            word = false,
            cyclic = true,
          },
          -- augend.semver.alias.semver,
        },
        type = {
          augend.integer.alias.decimal,
          augend.integer.alias.hex,
          augend.constant.new { elements = { "let", "const" } },
          augend.constant.new { elements = { "number", "string" } },
          augend.constant.new { elements = { "i8", "i16", "i32", "i64", "isize" } },
          augend.constant.new { elements = { "u8", "u16", "u32", "u64", "usize" } },
          augend.constant.new { elements = { "f32", "f64" } },
          augend.constant.new { elements = { "iter", "into_iter", "iter_mut" } },
          augend.constant.new { elements = { "String", "&str", "char" } },
          augend.constant.new { elements = { "Vec", "vec!" } },
        },
      }


    end,
  },
  {
    "wakatime/vim-wakatime"
  },
  { "oberblastmeister/neuron.nvim" },

  -- {
  --   "simrat39/rust-tools.nvim",
  --   config = function()
  --     local lsp_installer_servers = reload "nvim-lsp-installer.servers"
  --     local _, requested_server = lsp_installer_servers.get_server "rust_analyzer"
  --     reload("rust-tools").setup({
  --       tools = {
  --         autoSetHints = true,
  --         hover_with_actions = true,
  --         runnables = {
  --           use_telescope = true,
  --         },
  --       },
  --       server = {
  --         cmd_env = requested_server._default_options.cmd_env,
  --         on_attach = reload("lvim.lsp").common_on_attach,
  --         on_init = reload("lvim.lsp").common_on_init,
  --       },
  --     })
  --   end,
  --   ft = { "rust", "rs" },
  -- },
  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },
  { "mattn/emmet-vim",
    config = function()
      vim.cmd("let g:user_emmet_leader_key='<C-Z>'")
    end,
  },

  { "rktjmp/lush.nvim", },
  { "kiteco/vim-plugin" },


  -- { "arcticicestudio/nord-vim" },
  { "phaazon/hop.nvim",
    event = "BufRead",
    config = function()
      reload("hop").setup()

      vim.api.nvim_set_keymap("n", "q", ":HopChar2<cr>", { silent = true })
      vim.api.nvim_set_keymap("n", "Q", ":HopWord<cr>", { silent = true })

    end,

  },
  -- { "oberblastmeister/neuron.nvim",
  --   config = function()
  --     reload 'neuron'.setup {
  --       virtual_titles = true,
  --       mappings = true,
  --       run = nil, -- function to run when in neuron dir
  --       neuron_dir = "~/neuron", -- the directory of all of your notes, expanded by default (currently supports only one directory for notes, find a way to detect neuron.dhall to use any directory)
  --       leader = "gz", -- the leader key to for all mappings, remember with 'go zettel'
  --     }
  --   end,
  -- },

  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      reload("colorizer").setup({ "*" }, {
        RGB = true, -- #RGB hex codes
        RRGGBB = true, -- #RRGGBB hex codes
        RRGGBBAA = true, -- #RRGGBBAA hex codes
        rgb_fn = true, -- CSS rgb() and rgba() functions
        hsl_fn = true, -- CSS hsl() and hsla() functions
        css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
        css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
      })
    end,
  },

  {
    "tpope/vim-surround",
    keys = { "S", "ñ", "Ñ" }
  },
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function()
      reload "lsp_signature".setup()
    end,

  },

  {
    "p00f/nvim-ts-rainbow",
  },
  {
    "karb94/neoscroll.nvim",
    event = "WinScrolled",
    config = function()
      reload('neoscroll').setup({

        -- All these keys will be mapped to their corresponding default scrolling animation
        mappings = { '<C-u>', '<C-d>', '<C-b>', '<C-f>',
          '<C-y>', '<C-e>', 'zt', 'zz', 'zb' },
        hide_cursor = true, -- Hide cursor while scrolling
        stop_eof = true, -- Stop at <EOF> when scrolling downwards
        use_local_scrolloff = false, -- Use the local scope of scrolloff instead of the global scope
        respect_scrolloff = false, -- Stop scrolling when the cursor reaches the scrolloff margin of the file
        cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
        easing_function = nil, -- Default easing function
        pre_hook = nil, -- Function to run before the scrolling animation starts
        post_hook = nil, -- Function to run after the scrolling animation ends
      })
    end
  },
  {
    'davidgranstrom/nvim-markdown-preview',
  },
  { 'pwntester/octo.nvim', config = function()
    reload "octo".setup({

      default_remote = { "upstream", "origin" }; -- order to try remotes
      reaction_viewer_hint_icon = ""; -- marker for user reactions
      user_icon = " "; -- user icon
      timeline_marker = ""; -- timeline marker
      timeline_indent = "2"; -- timeline indentation
      right_bubble_delimiter = ""; -- Bubble delimiter
      left_bubble_delimiter = ""; -- Bubble delimiter
      github_hostname = ""; -- GitHub Enterprise host
      snippet_context_lines = 4; -- number or lines around commented lines
      file_panel = {
        size = 10, -- changed files panel rows
        use_icons = true -- use web-devicons in file panel
      },
      mappings = {
        issue = {
          goto_issue = "<space>gi", -- navigate to a local repo issue
          next_comment = "]c", -- go to next comment
          prev_comment = "[c", -- go to previous comment
        },
        pull_request = {
          next_comment = "]c", -- go to next comment
          prev_comment = "[c", -- go to previous comment
        },
        review_thread = {
          next_comment = "]c", -- go to next comment
          prev_comment = "[c", -- go to previous comment
          select_next_entry = "]q", -- move to previous changed file
          select_prev_entry = "[q", -- move to next changed file
        },
        review_diff = {
          focus_files = "<leader>e", -- move focus to changed file panel
          toggle_files = "<leader>b", -- hide/show changed files panel
          next_thread = "]t", -- move to next thread
          prev_thread = "[t", -- move to previous thread
          select_next_entry = "]q", -- move to previous changed file
          select_prev_entry = "[q", -- move to next changed file
          toggle_viewed = "<leader><space>", -- toggle viewer viewed state
        },
        file_panel = {
          select_entry = "<cr>", -- show selected changed file diffs
          focus_files = "<leader>e", -- move focus to changed file panel
          toggle_files = "<leader>b", -- hide/show changed files panel
          select_next_entry = "]q", -- move to previous changed file
          select_prev_entry = "[q", -- move to next changed file
          close_review_tab = "<C-c>", -- close review tab
          toggle_viewed = "<leader><space>", -- toggle viewer viewed state
        }
      }
    })
  end

  },
  {
    "tamago324/vim-browsersync",
  },
  {
    "tyru/open-browser.vim",
  },
  {
    "kevinhwang91/nvim-bqf",
    event = { "BufRead", "BufNew" },
    config = function()
      reload("bqf").setup({
        auto_enable = true,
        preview = {
          win_height = 12,
          win_vheight = 12,
          delay_syntax = 80,
          border_chars = { "┃", "┃", "━", "━", "┏", "┓", "┗", "┛", "█" },
        },
        func_map = {
          vsplit = "",
          ptogglemode = "z,",
          stoggleup = "",
        },
        filter = {
          fzf = {
            action_for = { ["ctrl-x"] = "split" },
            extra_opts = { "--bind", "ctrl-o:toggle-all", "--prompt", "> " },
          },
        },
      })
    end,
  },
  { 'dracula/vim' },
  { 'vhakulinen/gnvim' },
  {
    "iamcco/markdown-preview.nvim",
    run = "cd app && npm install",
    ft = "markdown",
    config = function()
      vim.g.mkdp_auto_start = 1
    end,
  },
  {
    "metakirby5/codi.vim",
    cmd = "Codi",
  },


}

-- -- Autocommands (`:help autocmd`) <https://neovim.io/doc/user/autocmd.html>
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "zsh",
--   callback = function()
--     -- let treesitter use bash highlight for zsh files as well
--     reload("nvim-treesitter.highlight").attach(0, "bash")
--   end,
-- })
