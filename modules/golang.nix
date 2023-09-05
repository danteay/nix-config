{ lib, pkgs, ... }:
{
  home.packages = with pkgs; [
    go_1_21
  ];

  home.sessionVariables = {
    GOPATH = "$HOME/go";
    GOROOT = "${pkgs.go_1_21}";
    GOBIN = "$GOPATH/bin";
    GO111MODULE = "on";
    GOSUMDB = "off";
    CGO_ENABLED = "0";
  };
}