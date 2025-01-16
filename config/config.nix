{
  theme = "base16_transparent";
  editor = {
    # General
    line-number = "relative";
    middle-click-paste = false;
    gutters = [ "diagnostics" "line-numbers" "spacer" "diff" ];
    bufferline = "multiple";
    mouse = true;
    auto-pairs = true;
    auto-format = true;
    completion-replace = true;
    completion-trigger-len = 1;
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
  # Keybinds
  keys = {
    normal = {
      # Vim
      "{" = "goto_next_paragraph";
      "}" = "goto_prev_paragraph";
      "$" = "goto_line_end";
      "0" = "goto_line_start";
      x = "delete_char_backward";
      S-g = "goto_last_line";
      d.d = [ "kill_to_line_end" "kill_to_line_start" ];
      # Space prefixed
      space = {
        # Find
        f = {
          f = "file_picker";
          c = "file_picker_in_current_directory";
          s = "symbol_picker";
          j = "jumplist_picker";
          b = "buffer_picker";
        };
        # Code actions & diagnostics
        c = {
          a = "code_action";
          d = "diagnostics_picker";
          s = "signature_help";
          f = ":format";
        };
        t = {
          t = "goto_definition";
          i = "goto_implementation";
          r = "goto_reference";
          d = "goto_type_definition";
        };
        # buffers
        b = {
          n = "goto_next_buffer";
          p = "goto_previous_buffer";
        };
      };
      # Comment
      g.c = {
        c = "toggle_line_comments";
        b = "toggle_block_comments";
      };
      S-z = {
        S-z = ":wq";
        S-q = ":q";
      };
    };
    select = { s.s = ":sort"; };
  };
}
