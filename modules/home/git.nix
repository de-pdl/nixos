{profile, ...}: let
  inherit (import ../../profiles/${profile.name}/variables.nix {}) gitUsername gitEmail;
in {
  programs.git = {
    enable = true;
    userName = "${gitUsername}";
    userEmail = "${gitEmail}";
  };
}
