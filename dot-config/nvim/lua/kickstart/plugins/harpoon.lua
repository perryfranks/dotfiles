return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'

    harpoon:setup()

    vim.keymap.set('n', '<leader>pa', function()
      harpoon:list():add()
    end, { desc = 'Harpoon: add' })
    -- vim.keymap.set('n', '<C-e>', function()
    --   harpoon.ui:toggle_quick_menu(harpoon:list())
    -- end, {desc="Harpoon: "})

    vim.keymap.set('n', '<leader>p1', function()
      harpoon:list():select(1)
    end, { desc = 'Harpoon: Goto 1' })

    vim.keymap.set('n', '<leader>p2', function()
      harpoon:list():select(2)
    end, { desc = 'Harpoon: Goto 2' })

    vim.keymap.set('n', '<leader>p3', function()
      harpoon:list():select(3)
    end, { desc = 'Harpoon: Goto 3' })

    vim.keymap.set('n', '<leader>p4', function()
      harpoon:list():select(4)
    end, { desc = 'Harpoon: Goto 4' })

    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set('n', '<leader>pp', function()
      harpoon:list():prev()
    end, { desc = 'Harpoon: [P]rev' })
    vim.keymap.set('n', '<leader>pn', function()
      harpoon:list():next()
    end, { desc = 'Harpoon: [N]ext' })

    -- basic telescope configuration
    local conf = require('telescope.config').values
    local function toggle_telescope(harpoon_files)
      local file_paths = {}
      for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
      end

      require('telescope.pickers')
        .new({}, {
          prompt_title = 'Harpoon',
          finder = require('telescope.finders').new_table {
            results = file_paths,
          },
          previewer = conf.file_previewer {},
          sorter = conf.generic_sorter {},
        })
        :find()
    end

    vim.keymap.set('n', '<leader>pl', function()
      toggle_telescope(harpoon:list())
    end, { desc = 'Open harpoon [L]ist' })
  end,
}
