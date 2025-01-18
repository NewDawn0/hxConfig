{
  keys = {
    # VISUAL mode
    select = { s.s = ":sort"; };
    # NORMAL mode
    normal = {
      # Vim
      "{" = "goto_next_paragraph";
      "}" = "goto_prev_paragraph";
      "$" = "goto_line_end";
      "0" = "goto_line_start";
      x = "delete_char_forward";
      S-g = "goto_last_line";
      S-v = "select_mode";
      # Delete
      d = {
        d = [ "kill_to_line_end" "kill_to_line_start" ];
        w = "delete_word_forward";
      };
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
          d = ":buffer-close!";
          o = ":buffer-close-others!";
        };
      };
      # Comment
      g.c = {
        c = "toggle_line_comments";
        b = "toggle_block_comments";
      };
      # Quit
      S-z = {
        S-z = ":wq";
        S-q = ":q";
      };
      S-q.S-q = ":q!";
      # Split navigation
      C-h = "jump_view_left";
      C-j = "jump_view_down";
      C-k = "jump_view_up";
      C-l = "jump_view_right";
    };
  };
}
