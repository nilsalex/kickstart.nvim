return {
  {
    "huggingface/llm.nvim",
    opts = {
      api_token = vim.env.TNG_LLM_TOKEN,
      backend = "tgi",
      url = "https://codepilot.model.tngtech.com/api/generate",
      tokens_to_clear = { "<|endoftext|>" },
      request_body = {
        parameters = {
          max_new_tokens = 60,
          temperature = 0.2,
          top_p = 0.95,
          stop_tokens = nil,
        },
      },
      fim = {
        enabled = true,
        prefix = "<fim_prefix>",
        middle = "<fim_middle>",
        suffix = "<fim_suffix>",
      },
      debounce_ms = 150,
      accept_keymap = "<Tab>",
      dismiss_keymap = "<S-Tab>",
      tls_skip_verify_insecure = false,
      lsp = {
        bin_path = "/home/nils/code/huggingface/llm-ls/target/release/llm-ls",
        version = "0.5.2",
      },
      tokenizer = nil,
      context_window = 8192,
      enable_suggestions_on_startup = false,
      enable_suggestions_on_files = "*",
    },
  },
}
