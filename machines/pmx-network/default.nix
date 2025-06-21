{pkgs, ...}: {
  imports = [
    ./hardware.nix
    ./host-packages.nix
  ];

  environment.etc."hypr/monitor-hook.sh" = {
    text = ''
      #!/usr/bin/env sh
      INTERNAL="eDP-1"
      SOCK="$XDG_RUNTIME_DIR/hypr/$${HYPRLAND_INSTANCE_SIGNATURE}/.socket2.sock"

      exec ${pkgs.socat}/bin/socat - UNIX-CONNECT:"$SOCK" |
      while read -r line; do
        case "$line" in
          *monitoradded*)   hyprctl dispatch dpms "$INTERNAL" off ;;
          *monitorremoved*) hyprctl dispatch dpms "$INTERNAL" on  ;;
        esac
      done
    '';
    mode = "0755";
  };

  environment.etc."hyprland.conf".text = ''
    # …your other Hyprland config…
    exec-once = "/etc/hypr/monitor-hook.sh"
  '';
}
