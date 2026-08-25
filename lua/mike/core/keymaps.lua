vim.keymap.set("n", "<A-Up>", ":m .-2<CR>==", { silent = true }) -- move current line up
vim.keymap.set("n", "<A-Down>", ":m .+1<CR>==", { silent = true }) -- move current line down

-- set correct indentation when entering insert mode from any angle
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



