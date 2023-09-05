{ lib, pkgs, ... }:
{
  home.packages = with pkgs; [
    thefuck
  ];

  programs.zsh = {
    enable = true;
    autocd = true;

    dotDir = ".config/zsh";

    enableAutosuggestions = true;
    enableCompletion = true;

    shellAliases = {
      prod-bastion = "ssh -i ~/pems/draftea-bastion-prod.pem ubuntu@bastion.prod.draftea.com";
      dev-bastion = "ssh -i ~/pems/draftea-bastion-dev.pem ubuntu@bastion.dev.draftea.com";
      myip = "ifconfig en0 | grep inet | grep -v inet6 | awk '{print $2}'";
      rmb = "git branch | grep -v \"v0.x\" | grep -v \"master\" | grep -v \"main\" | grep -v \"*\" | xargs git branch -D ";
    };

    oh-my-zsh = {
      enable = true;
      plugins = [ "git" "thefuck" ];
      theme = "af-magic";
    };
  };
}