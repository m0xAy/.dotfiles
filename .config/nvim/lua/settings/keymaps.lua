local dap = require("dap")
local utils = require("utils")
local map = vim.keymap.set

-- Standard
map("n", "<leader>ad", ":Alpha<CR>", { desc = "Dashboard" })
map("n", "gx", utils.system_open, { desc = "Open the file under cursor with system app" })

-- Splits
map("n", "<M-up>", ":resize -1<CR>", { desc = "Horizontal resize -1" })
map("n", "<M-down>", ":resize +1<CR>", { desc = "Horizontal resize +1" })
map("n", "<M-left>", ":vertical resize -1<CR>", { desc = "Vertical resize -1" })
map("n", "<M-right>", ":vertical resize +1<CR>", { desc = "Vertical resize +1" })

-- Files
map("n", "<leader>fe", ":NvimTreeToggle<CR>", { desc = "Toggle file tree" })
map("n", "<leader>fo", ":NvimTreeFocus<CR>", { desc = "Focus file tree" })
map("n", "<leader>fh", ":NvimTreeRefresh<CR>", { desc = "Refresh file tree" })
map("n", "<leader>ff", ":Telescope find_files hidden=true<CR>", { desc = "Find files" })
map("n", "<leader>fw", ":Telescope live_grep<CR>", { desc = "Find words" })
map("n", "<leader>fr", ":Telescope oldfiles<CR>", { desc = "Find recent" })
map("n", "<leader>fm", ":Telescope marks<CR>", { desc = "Find marks" })
map("n", "<leader>fb", ":Telescope file_browser<CR>", { desc = "File browser" })

-- Diagnostics
map("n", "<leader>do", vim.diagnostic.open_float, { desc = "Open diagnostic" })
map("n", "[d", vim.diagnostic.goto_prev, { desc = "Previous diagnostic" })
map("n", "]d", vim.diagnostic.goto_next, { desc = "Next diagnostic" })
map("n", "<leader>dt", ":TroubleToggle<CR>", { desc = "Toggle diagnostics" })
map("n", "<leader>dd", ":TroubleToggle document_diagnostics<CR>", { desc = "Toggle document diagnostics" })
map("n", "<leader>dw", ":TroubleToggle workspace_diagnostics<CR>", { desc = "Toggle workspace diagnostics" })
map("n", "<leader>dr", ":TroubleRefresh<CR>", { desc = "Refresh active list" })

-- Packages
map("n", "<leader>pm", ":Mason<CR>", { desc = "Mason: home" })
map("n", "<leader>pl", ":Lazy<CR>", { desc = "Lazy: home" })
map("n", "<leader>pu", ":Lazy log<CR>", { desc = "Lazy: Show recent updates" })

-- LSP
map("n", "<leader>lo", ":LspInfo<CR>", { desc = "Buffer info" })
map("n", "<leader>lr", ":LspRestart<CR>", { desc = "Restart all buffer clients" })

-- UI
map("n", "<leader>us", ":Telescope colorscheme<CR>", { desc = "Choose colorscheme" })
map("n", "<leader>uw", utils.toggle_line_wrap, { desc = "Toggle line wrap" })
map("n", "<leader>uc", utils.toggle_colorcolumn, { desc = "Toggle colorcolumn" })

-- Search
map("n", "<leader>sh", ":Telescope help_tags<CR>", { desc = "Search help" })
map("n", "<leader>sm", ":Telescope man_pages<CR>", { desc = "Search man" })
map("n", "<leader>sc", ":Telescope command_history<CR>", { desc = "Search commands" })
map("n", "<leader>sk", ":Telescope keymaps<CR>", { desc = "Search keymaps" })
map("n", "<leader>sd", ":Telescope diagnostics<CR>", { desc = "Search diagnostics" })

-- Git
map("n", "<leader>gs", ":Telescope git_status<CR>", { desc = "Git status" })
map("n", "<leader>gb", ":Telescope git_branches<CR>", { desc = "Git branches" })
map("n", "<leader>gc", ":Telescope git_commits<CR>", { desc = "Git commits" })
map("n", "<leader>gm", ":Gitsigns blame_line<CR>", { desc = "Blame" })
map("n", "<leader>gl", utils.toggle_git_linehl, { desc = "Line highlight" })
map("n", "]g", ":Gitsigns next_hunk<CR>", { desc = "Next hunk" })
map("n", "[g", ":Gitsigns prev_hunk<CR>", { desc = "Previous hunk" })
map("n", "<leader>gd", ":Gitsigns diffthis<CR>", { desc = "View diff" })
map("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", { desc = "Preview hunk" })
map("n", "<leader>gh", ":Gitsigns reset_hunk<CR>", { desc = "Reset hunk" })
map("n", "<leader>gr", ":Gitsigns reset_buffer<CR>", { desc = "Reset buffer" })
map("n", "<leader>gg", utils.toggle_lazygit, { desc = "Toggle lazygit" })

-- Session
map("n", "<leader>Sl", ":SessionManager! load_last_session<CR>", { desc = "Load last session" })
map("n", "<leader>Ss", ":SessionManager! save_current_session<CR>", { desc = "Save this session" })
map("n", "<leader>Sd", ":SessionManager! delete_session<CR>", { desc = "Delete session" })
map("n", "<leader>Sf", ":SessionManager! load_session<CR>", { desc = "Search sessions" })
map("n", "<leader>S.", ":SessionManager! load_current_dir_session<CR>", { desc = "Restore cwd session" })
map("n", "<F3>", vim.cmd.UndotreeToggle, { desc = "Toggle undo tree" })

-- Buffers
map("n", "<M-l>", ":BufferLineCycleNext<CR>", { desc = "Next buffer tab" })
map("n", "<M-h>", ":BufferLineCyclePrev<CR>", { desc = "Previous buffer tab" })
map("n", "<leader>bp", ":BufferLinePick<CR>", { desc = "Pick buffer" })
map("n", "<leader>bc", ":BufferLinePickClose<CR>", { desc = "Pick buffer to close" })
map("n", "<leader>br", ":BufferLineCloseRight<CR>", { desc = "Close to the right" })
map("n", "<leader>bl", ":BufferLineCloseLeft<CR>", { desc = "Close to the left" })
map("n", "<leader>bs", utils.buffers, { desc = "Search buffers" })
map("n", "<leader>bd", ":%bd|e#|bd#<CR>", { desc = "Close all buffers except current" })

-- Debug
map("n", "<F5>", dap.continue, { desc = "Debugger: Start/Continue" })
map("n", "<F17>", dap.terminate, { desc = "Debugger: Stop (<S-F5>)" })        -- Shift+F5
map("n", "<F29>", dap.restart_frame, { desc = "Debugger: Restart (<C-F5>)" }) -- Control+F5
map("n", "<F6>", dap.pause, { desc = "Debugger: Pause" })
map("n", "<F10>", dap.step_over, { desc = "Debugger: Step over" })
map("n", "<F11>", dap.step_into, { desc = "Debugger: Step into" })
map("n", "<F12>", dap.step_out, { desc = "Debugger: Step out" })
map("n", "<leader>Db", dap.toggle_breakpoint, { desc = "Toggle breakpoint" })
map("n", "<leader>DB", dap.clear_breakpoints, { desc = "Clear breakpoints" })

-- Markdown
map("n", "<leader>mt", ":MarkdownPreviewToggle<CR>", { desc = "Toggle markdown preview" })
map("n", "<leader>mp", ":MarkdownPreview<CR>", { desc = "Start markdown preview" })
map("n", "<leader>ms", ":MarkdownPreviewStop<CR>", { desc = "Stop markdown preview" })

-- Copilot
map("n", "<leader>ce", ":Copilot enable<CR>", { desc = "Re-enable Copilot after disabling" })
map("n", "<leader>cd", ":Copilot disable<CR>", { desc = "Globally disable Copilot" })
map("n", "<leader>cs", ":Copilot status<CR>", { desc = "Check Copilot status" })
map("n", "<leader>cp", ":Copilot panel<CR>", { desc = "Open window with completions" })
