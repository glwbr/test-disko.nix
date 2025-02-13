{ config, pkgs, ... }:

{
  home.username = "glwbr";
  home.homeDirectory = "/home/glwbr";

  home.packages = with pkgs; [ firefox nvim htop ];

  programs.git = {
    enable = true;
    userName = "glwbr";
    userEmail = "hello@glwbr.me";
  };

  home.stateVersion = "24.11";
}
