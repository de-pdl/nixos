{
  profile,
  lib,
  ...
}: {
  imports =
    [
      ../../modules/home/bash.nix
      ../../modules/home/bashrc-personal.nix
      ../../modules/home/fastfetch
      ../../modules/home/fzf.nix
      ../../modules/home/git.nix
      ../../modules/home/gtk.nix
      ../../modules/home/htop.nix
      ../../modules/home/kitty.nix
      ../../modules/home/lazygit.nix
      ../../modules/home/nvf.nix
      ../../modules/home/scripts
      ../../modules/home/yazi
      ../../modules/home/zsh
    ]
    ++ lib.optional profile.guiEnable [
      ../../modules/home/emoji.nix
      ../../modules/home/hyprland
      ../../modules/home/wlogout
      ../../modules/home/qt.nix

      ../../modules/home/rofi
      ../../modules/home/swaync.nix
      ../../modules/home/swappy.nix
      ../../modules/home/xdg.nix

      profile.waybarChoice
    ];
}
