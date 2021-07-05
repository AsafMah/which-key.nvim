local wk = require("which-key")

local command_line_binds = {
  ["<C-a>"] = "do completion on the pattern in front of the cursor and insert all matches",
  ["<C-b>"] = "cursor to begin of command-line",
  ["<C-c>"] = "same as <Esc>",
  ["<C-d>"] = "list completions that match the pattern in front of the cursor",
  ["<C-e>"] = "cursor to end of command-line",
  ["<C-f>"] = "default value for 'cedit': opens the",
  ["<C-g>"] = "next match when 'incsearch' is active",
  ["<BS>"] = "delete the character in front of the cursor",
  -- ['{char1} <BS> {char2}'] = 'enter digraph when \'digraph\' is on',
  ["<C-h>"] = "same as <BS>",
  ["<Tab>"] = "if 'wildchar' is <Tab>: Do completion on the pattern in front of the cursor",
  ["<S-Tab>"] = "same as CTRL-P",
  -- [''wildchar'']='Do completion on the pattern in front of the cursor (default: <Tab>)',
  ["<C-i>"] = "same as <Tab>",
  ["<NL>"] = "same as <CR>",
  ["<C-j>"] = "same as <CR>",
  ["<C-k>"] = "enter digraph",
  ["<C-l>"] = "do completion on the pattern in front of the cursor and insert the longest common part",
  ["<CR>"] = "execute entered command",
  ["<C-m>"] = "same as <CR>",
  ["<C-n>"] = "after using 'wildchar' with multiple matches: go to next match, otherwise: recall older command-line from history.",
  ["<C-p>"] = "after using 'wildchar' with multiple matches: go to previous match, otherwise: recall older command-line from history.",
  ["<C-q>"] = "same as CTRL-V, unless it's used for terminal control flow",
  -- ['CTRL-R {regname}'] = 'insert the contents of a register or object under the cursor as if typed',
  -- ['CTRL-R CTRL-R {regname}'] = '',
  -- ['CTRL-R CTRL-O {regname}'] = 'insert the contents of a register or object under the cursor literally',
  ["<C-t>"] = "previous match when 'incsearch' is active",
  ["<C-u>"] = "remove all characters",
  ["<C-v>"] = "insert next non-digit literally, insert three digit decimal number as a single byte.",
  ["<C-w>"] = "delete the word in front of the cursor",
  ["<C-y>"] = "copy (yank) modeless selection",
  ["<Esc>"] = "abandon command-line without executing it",
  ["<C-[>"] = "same as <Esc>",
  ["<C-\\>"] = {
    name = "mode",
    ["<C-n>"] = "go to Normal mode, abandon command-line",
    ["<C-g>"] = "go to mode specified with 'insertmode', abandon command-line",
    ["e"] = "replace the command line with the result of {expr}",
  },
  ["<C-]>"] = "trigger abbreviation",
  ["<C-^>"] = "toggle use of |:lmap| mappings",
  ["<C-_>"] = "when 'allowrevins' set: change language(Hebrew)",
  ["<Del>"] = "delete the character under the cursor",
  ["<Left>"] = "cursor left",
  ["<S-Left>"] = "cursor one word left",
  ["<C-Left>"] = "cursor one word left",
  ["<Right>"] = "cursor right",
  ["<S-Right>"] = "cursor one word right",
  ["<C-Right>"] = "cursor one word right",
  ["<Up>"] = "recall previous command-line from history that matches pattern in front of the cursor",
  ["<S-Up>"] = "recall previous command-line from history",
  ["<Down>"] = "recall next command-line from history that matches pattern in front of the cursor",
  ["<S-Down>"] = "recall next command-line from history",
  ["<Home>"] = "cursor to start of command-line",
  ["<End>"] = "cursor to end of command-line",
  ["<PageDown>"] = "same as <S-Down>",
  ["<PageUp>"] = "same as <S-Up>",
  ["<Insert>"] = "toggle insert/overstrike mode",
  -- ['<LeftMouse>'] = 'cursor at mouse click'
}

wk.register(command_line_binds, { mode = "c", preset = true })