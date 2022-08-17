--[[ ------------------------------------------------------------------
                            MUTINEER CONFIGURATION
  ------------------------------------------------------------------ ]]
  -- normal mode and visual mode remap to allow single and multiline commenting
vim.api.nvim_set_keymap('n', '<leader>m', ':Mutineer<CR>', {noremap = true})
vim.api.nvim_set_keymap('v', '<leader>m', ':Mutineer<CR>', {noremap = true})
vim.api.nvim_set_keymap('v', '<leader>M', ':MutineerBlock<CR>', {noremap = true})
vim.g.SpasticCursorMovementToggle = 1
