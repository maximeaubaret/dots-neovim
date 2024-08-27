-- stylua: ignore
if true then return {} end

return {
  "huggingface/llm.nvim",
  opts = {
    backend = "ollama",
    model = "starcoder2:3b",
    url = "http://192.168.2.128:11434", -- llm-ls uses "/api/generate"

    accept_keymap = "<C-Tab>",

    -- cf https://github.com/ollama/ollama/blob/main/docs/api.md#parameters
    -- request_body = {
    --   -- Modelfile options for the model you use
    --   options = {
    --     temperature = 0.2,
    --     top_p = 0.95,
    --   },
    -- },
  },
}
