{
  profile,
  pkgs,
  ...
}: let
  inherit (import ../../../profiles/${profile.name}/variables.nix {inherit pkgs;}) animChoice;
in {
  imports = [
    animChoice
    ./binds.nix
    ./env.nix
    ./hypridle.nix
    ./hyprland.nix
    ./hyprlock.nix
    ./pyprland.nix
    ./windowrules.nix
  ];
}
