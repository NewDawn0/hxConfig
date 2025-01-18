{
  inherits = "base16_transparent";
  # General
  "ui.window" = { fg = "blue"; };
  "ui.popup" = { fg = "blue"; };
  "ui.cursor.primary.normal" = {
    fg = "black";
    bg = "white";
  };
  "ui.linenr.selected" = {
    fg = "blue";
    modifiers = [ "bold" ];
  };
  "ui.menu.selected" = {
    fg = "black";
    bg = "blue";
  };
  # Statusline
  "ui.statusline.select" = {
    fg = "black";
    bg = "red";
  };
  "ui.statusline.normal" = {
    fg = "black";
    bg = "blue";
  };
  "ui.statusline.insert" = {
    fg = "black";
    bg = "green";
  };
  # Bufferline
  "ui.bufferline" = { fg = "white"; };
  "ui.bufferline.active" = {
    fg = "black";
    bg = "blue";
    modifiers = [ "bold" ];
  };
}
