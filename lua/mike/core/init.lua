
-- ==========================================
-- Normal Mode: Duplicate Current Line
-- ==========================================
-- Duplicate down (Ctrl+Alt+Down)
vim.keymap.set('n', '<S-A-Down>', ':copy .<CR>', { desc = 'Duplicate line down' })
-- Duplicate up (Ctrl+Alt+Up)
vim.keymap.set('n', '<S-A-Up>', ':copy .-1<CR>', { desc = 'Duplicate line up' })

-- ==========================================
-- Visual Mode: Duplicate Selection
-- ==========================================
-- Duplicate selection down (Ctrl+Alt+Down)
vim.keymap.set('v', '<S-A-Down>', ":copy '><CR>gv", { desc = 'Duplicate selection down' })
-- Duplicate selection up (Ctrl+Alt+Up)
vim.keymap.set('v', '<S-A-Up>', ":copy '<-1<CR>gv", { desc = 'Duplicate selection up' })

-- ==========================================
-- Normal Mode: Move Line
-- ==========================================
vim.keymap.set("n", "<A-Up>", ":m .-2<CR>==", { silent = true }) -- move current line up
vim.keymap.set("n", "<A-Down>", ":m .+1<CR>==", { silent = true }) -- move current line down


-- ==========================================
-- Normal Mode: Set Correct Indentation when entering Insert
-- ==========================================
local function smart_insert(cmd)
  -- Check if the current line consists only of whitespace or is empty
  if vim.fn.getline('.'):match('^%s*$') then
    return '"_cc'
  end
  return cmd
end
-- Map all standard keys that transition from normal to insert mode
local insert_keys = { 'i', 'I', 'a', 'A', 'o', 'O' }
for _, key in ipairs(insert_keys) do
  vim.keymap.set('n', key, function() 
    return smart_insert(key)
  end, { expr = true, desc = 'Indent on blank lines before insert' })
end
