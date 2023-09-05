{ lib, pkgs, ... }:
{
  programs.git = {
    enable = true;
    userName = "Eduardo Aguilar";
    userEmail = "dante.aguilar41@gmail.com";

    extraConfig = {
      pull.rebase = true;
      init.defaultBranch = "main";
      github.user = "danteay";

      push.autoSetupRemote = true;

      core.editor = "vi";
      core.fileMode = false;
      core.ignorecase = false;
    };
  };
}