{profile, ...}: let
  inherit (import ../../profiles/${profile}/variables.nix {}) waybarChoice;
in {
  imports = [
    #../../modules/home/amfora.nix
    ../../modules/home/bash.nix
    ../../modules/home/bashrc-personal.nix
    ../../modules/home/bat.nix
    ../../modules/home/btop.nix
    ../../modules/home/cava.nix
    ../../modules/home/emoji.nix
    ../../modules/home/eza.nix
    ../../modules/home/fastfetch
    ../../modules/home/fzf.nix
    ../../modules/home/gh.nix
    ../../modules/home/ghostty.nix
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
    ../../modules/home/starship.nix
    ../../modules/home/stylix.nix
    ../../modules/home/swappy.nix
    ../../modules/home/swaync.nix
    ../../modules/home/virtmanager.nix
    waybarChoice
    ../../modules/home/wezterm.nix
    ../../modules/home/wlogout
    ../../modules/home/xdg.nix
    ../../modules/home/yazi
    ../../modules/home/zoxide.nix
    ../../modules/home/zsh
  ];
}
