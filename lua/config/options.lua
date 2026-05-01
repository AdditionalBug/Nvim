vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.shell = "zsh" -- or "bash" depending on your terminal

-- number line pink and white
vim.opt.cursorline = true
vim.api.nvim_set_hl(0, "TermCursor", { strikethrough = false, blend = 100 })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#FFFFFF", bold = true })
vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#FB508F" })
vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#FB508F" })

--cursor
vim.opt.guicursor = "n-v-c:block-Cursor,i-ci-ve:ver25-Cursor-blinkwait175-blinkoff150-blinkon175,r-cr:hor20,o:hor50"

-- Shell Configuration
if vim.fn.executable("nu") == 1 then
  -- If Nushell is installed, use it regardless of OS
  vim.opt.shell = "nu"
  vim.opt.shellcmdflag = "-c"
  vim.opt.shellquote = ""
  vim.opt.shellxquote = ""

--powershell
elseif vim.fn.has("win32") == 1 then
  -- Fallback to PowerShell only if Nushell isn't found on Windows
  local powershell_exe = vim.fn.executable("pwsh") == 1 and "pwsh" or "powershell"
  vim.opt.shell = powershell_exe
  vim.opt.shellcmdflag =
    "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;"
  vim.opt.shellredir = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode"
  vim.opt.shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode"
  vim.opt.shellquote = ""
  vim.opt.shellxquote = ""
end

-- terminal resise with mouse
vim.opt.mouse = "a"

-- Enable soft line wrapping
vim.opt.wrap = true

-- Break lines at words instead of characters
vim.opt.linebreak = true

-- (Optional) Maintain indentation of wrapped lines
vim.opt.breakindent = true

-- Sync with system clipboard
vim.opt.clipboard = "unnamedplus"

-- Enable persistent undo across sessions
vim.opt.undofile = true
-- High undo limits for 2025 storage
vim.opt.undolevels = 10000

-- Handle swap file recovery automatically so the picker doesn't crash
vim.opt.shortmess:append("A") -- Don't give "ATTENTION" message

vim.opt.swapfile = false -- Stop creating .swp files
