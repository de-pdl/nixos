{profile, ...}:
#let
#inherit (import ../../profiles/${profile.name}/variables.nix {}) waybarChoice;
#in
{
  imports = [
    ../../modules/home/bash.nix
    ../../modules/home/bashrc-personal.nix
    ../../modules/home/emoji.nix
    ../../modules/home/fastfetch
    ../../modules/home/fzf.nix
    ../../modules/home/git.nix
    ../../modules/home/gtk.nix
    ../../modules/home/htop.nix
    ../../modules/home/hyprland
    ../../modules/home/kitty.nix
    ../../modules/home/lazygit.nix
    ../../modules/home/nvf.nix
    ../../modules/home/rofi
    ../../modules/home/qt.nix
    ../../modules/home/scripts
    ../../modules/home/swappy.nix
    ../../modules/home/swaync.nix
    #waybarChoice
    profile.waybarChoice
    ../../modules/home/wlogout
    ../../modules/home/xdg.nix
    ../../modules/home/yazi
    ../../modules/home/zsh
  ];
}
