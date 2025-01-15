{ pkgs }:
with pkgs;
let
  lsps = [
    ansible-language-server
    awk-language-server
    bash-language-server
    clang-tools
    cmake-language-server
    dart
    dockerfile-language-server-nodejs
    elixir-ls
    erlang-language-platform
    erlang-ls
    fortls
    gleam
    glsl_analyzer
    golangci-lint-langserver
    gopls
    haskell-language-server
    helm-ls
    hyprls
    jdt-language-server
    jq-lsp
    kotlin-language-server
    lua-language-server
    marksman
    metals
    nil
    nushell
    ols
    perlnavigator
    python3Packages.jedi-language-server
    python3Packages.python-lsp-server
    ruff
    ruff-lsp
    rust-analyzer
    serve-d
    solc
    sourcekit-lsp
    svelte-language-server
    taplo
    terraform-ls
    typescript-language-server
    vscode-langservers-extracted
    vue-language-server
    wgsl-analyzer
    yaml-language-server
    zls
  ];
  daps = [ delve lldb ];
  fmts = [ delve dfmt ols swift-format zig ];
  other = [ ripgrep ];
in lib.lists.unique (lsps ++ daps ++ fmts ++ other)
