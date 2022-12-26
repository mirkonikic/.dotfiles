local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

-- TODO: popravi ovaj deo, ne radi dugme

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)  -- Packer  
  use 'wbthomason/packer.nvim'

  -- FileExplorer
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'

  -- LSP
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  }

  -- Themes
  use 'folke/tokyonight.nvim'

  -- BottomLine -> LuaLine ili Feline
  use 'nvim-lualine/lualine.nvim'

  -- CMP
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'

  -- SnippetEngine
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use 'rafamadriz/friendly-snippets'

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.0',
    requires ={ { 'nvim-lua/plenary.nvim' } },
  }

  -- ToggleTerm
  use {"akinsho/toggleterm.nvim", tag = '*', config = function()
    require("toggleterm").setup()
  end}

  -- Pretty fold 
  use{ 'anuvyklack/pretty-fold.nvim',
   config = function()
      require('pretty-fold').setup()
   end
  }

  -- Pretty fold preview
  use { 'anuvyklack/fold-preview.nvim',
   requires = 'anuvyklack/keymap-amend.nvim',
   config = function()
      require('fold-preview').setup()
   end
  }

  -- Barbecue
  use({
    "utilyre/barbecue.nvim",
    branch = "dev", -- omit this if you only want stable updates
    requires = {
      "neovim/nvim-lspconfig",
      "smiteshp/nvim-navic",
      "kyazdani42/nvim-web-devicons", -- optional dependency
    },
    after = "nvim-web-devicons", -- keep this if you're using NvChad
    config = function()
      require("barbecue").setup()
    end,
  })

  -- Todo
  use {
  "folke/todo-comments.nvim",
  requires = "nvim-lua/plenary.nvim",
  config = function()
    require("todo-comments").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  end
}

  -- NOTE: instalirani plugini:
  -- NvimTree   -> filesystem tab -> Ctrl+n start -> a newFile -> r renameFile -> d deleteFIle
  -- Telescope  -> search plugin -> Ctrl+o live_grep -> Ctrl+p find_files
  -- Todo       -> implement shortcut open_list -> implement float
  -- LSP/Mason  -> Code completion and suggestion
  -- LuaLine    -> bottom line -> uredi, dodaj git itd, jezik
  -- TokyoNight -> dark theme -> tokyonight - [night, storm, moon, day]
  -- Barbecue   -> show in which block of code is the cursor
  -- ToggleTerm -> Terminal -> implementirati direction float i directioni bottom na dva razlicita keybinda
  -- TODO:
  -- Fix icons -> za sad pokazuje kockice samo
  -- git integracija -> napravi key binding -> :TermExec cmd='lazygit' direction=float
  -- Web browser integration -> url -> open in chrome
  -- Implement keybinds: ToggleTerm [:ToggleTerm size=40 direction=horizontal] i [:ToggleTerm direction=float], Telescope [Ctrl+o grep] i [Ctrl+p files] i [Ctrl+X symbols], Todo [Ctrl+X :TodoTelescope]
  -- CodeSnippet runner -> da izvrsi deo koda koji selektujem
  -- jbuyki instant.nvim -> collaborate at the same time -> pokreni server i join na server 
  -- Nvim shortcut printer -> neka funkcija koja ce da ispise sve key bindinge koje imam
  -- Fold, preview and unfold brackets etc, olaksa da vidim kod na space
  -- Auto close brackets -> https://github.com/m4xshen/autoclose.nvim -> za svaku otvorenu ubaci se i zatvorena zagrada
  -- Which Key -> kad krenes da kucas komandu, pokaze ti sve moguce -> https://github.com/folke/which-key.nvim

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
