local languages = {
  "vimdoc",
  "javascript",
  "typescript",
  "c",
  "lua",
  "rust",
  "jsdoc",
  "bash",
  "markdown",
  "markdown_inline",
}

local install_dir = vim.fn.stdpath("data") .. "/treesitter-main"

return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  lazy = false,
  build = function()
    local ts = require("nvim-treesitter")
    ts.setup({ install_dir = install_dir })
    ts.install(languages):wait(300000)
  end,
  config = function()
    local ts = require("nvim-treesitter")
    ts.setup({ install_dir = install_dir })

    vim.api.nvim_create_autocmd("FileType", {
      group = vim.api.nvim_create_augroup("cryptexus_treesitter", { clear = true }),
      callback = function(event)
        local buf = event.buf
        local ft = vim.bo[buf].filetype
        local lang = vim.treesitter.language.get_lang(ft) or ft

        if lang == "html" then
          return
        end

        local max_filesize = 100 * 1024
        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
        if ok and stats and stats.size > max_filesize then
          vim.notify(
            "File larger than 100KB treesitter disabled for performance",
            vim.log.levels.WARN,
            { title = "Treesitter" }
          )
          return
        end

        if ft == "markdown" then
          vim.bo[buf].syntax = "markdown"
        end

        if pcall(vim.treesitter.start, buf, lang) then
          pcall(function()
            if vim.treesitter.query.get(lang, "indents") then
              vim.bo[buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
            end
          end)
        end
      end,
    })
  end,
}
