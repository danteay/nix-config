{ lib, pkgs, ... }:
{
  home.packages = with pkgs; [
    # Python
    python311
    poetry

    # Cloud
    awscli2
    terraform

    # Git tools
    pre-commit
    commitizen

    # NodeJS
    nodejs_18
    nodePackages.serverless

    # Containers
    docker
    docker-compose
  ];
}