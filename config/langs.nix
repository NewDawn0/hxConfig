{
  language-server = {
    nixd.command = "nixd";
    jedi.command = "jedi-language-server";
    pylsp.command = "pylsp";
    pyright.command = "pyright-langserver";
  };
  language = [
    {
      name = "nix";
      file-types = [ "nix" ];
      formatter = { command = "nixfmt"; };
      language-servers = [ "nixd" "nil" ];
    }
    {
      name = "python";
      file-types = [ "python" ];
      language-servers = [ "jedi" "pylsp" "pyright" ];
    }
  ];
}
