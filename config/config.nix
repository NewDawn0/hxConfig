{
  theme = "base16_transparent";
  editor = {
    # General
    auto-format = true;
    auto-pairs = true;
    bufferline = "multiple";
    color-modes = true;
    completion-replace = true;
    completion-trigger-len = 1;
    gutters = [ "diagnostics" "line-numbers" "spacer" "diff" ];
    line-number = "relative";
    middle-click-paste = false;
    mouse = true;
    # Cursor
    cursor-shape = {
      insert = "bar";
      normal = "block";
      select = "block";
    };
    # Statusline
    statusline = {
      left = [
        "mode"
        "version-control"
        "file-modification-indicator"
        "file-name"
        "read-only-indicator"
      ];
      center = [ "diagnostics" ];
      right = [ "selections" "position" "position-percentage" ];
      separator = "/";
      mode = {
        normal = "NOR";
        select = "SEL";
        insert = "INS";
      };
    };
    # LSP
    lsp = {
      display-messages = true;
      snippets = true;
      auto-signature-help = true;
      display-signature-help-docs = true;
      goto-reference-include-declaration = true;
    };
    # Diagnostics
    inline-diagnostics = {
      cursor-line = "error";
      other-lines = "disable";
    };
    # File picker
    file-picker = {
      hidden = true;
      git-ignore = false;
      git-global = false;
      git-exclude = false;
      deduplicate-links = true;
    };
    # Whitespace
    whitespace = {
      render = {
        space = "all";
        tab = "all";
        nbsp = "none";
        nnbsp = "none";
        newline = "none";
      };
      characters = {
        space = "·";
        nbsp = "⍽";
        nnbsp = "␣";
        tab = "→";
        newline = "⏎";
        tabpad = "·";
      };
    };
    # Indent
    indent-guides = {
      render = true;
      character = "▏";
      skip-levels = 1;
    };
  };
}
