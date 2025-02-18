local dap_vscode_js = require("dap-vscode-js")

dap_vscode_js.setup({
  -- debugger_path = "/Users/mathewhawley/.local/share/nvim/lazy/vscode-js-debug",
  debugger_path = vim.fn.stdpath("data") .. "/lazy/vscode-js-debug",
  -- debugger_path = vim.fn.stdpath("data") .. "/mason/packages/js-debug-adapter",
  -- debugger_cmd = { "js-debug-adapter" },
  adapters = { "pwa-node", "pwa-chrome", "pwa-msedge", "node-terminal", "pwa-extensionHost" },
})

local file_types = {
  "typescript",
  "javascript",
  "javascriptreact",
  "typescriptreact",
}

for _, file_type in ipairs(file_types) do
  require("dap").configurations[file_type] = {
    {
      type = "pwa-node",
      request = "launch",
      name = "Debug Jest Tests",
      runtimeExecutable = "node",
      runtimeArgs = {
        "./node_modules/jest/bin/jest.js",
        "--runInBand",
      },
      rootPath = "${workspaceFolder}",
      cwd = "${workspaceFolder}",
      console = "integratedTerminal",
      internalConsoleOptions = "neverOpen",
      skipFiles = { "<node_internals>/**", "node_modules/**" },
    },
    {
      type = "pwa-node",
      request = "launch",
      name = "Launch file",
      program = "${file}",
      cwd = "${workspaceFolder}",
      skipFiles = { "<node_internals>/**", "node_modules/**" },
    },
    {
      type = "pwa-node",
      request = "attach",
      name = "Attach",
      processId = require("dap.utils").pick_process,
      cwd = "${workspaceFolder}",
      skipFiles = { "<node_internals>/**", "node_modules/**" },
    },
  }
end
