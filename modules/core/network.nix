{
  machine,
  profile,
  ...
}: let
  inherit (import ../../profiles/${profile}/variables.nix) tailscaleEnable sshdEnable;
in {
  networking = {
    hostName = "${machine}";
    networkmanager.enable = true;
    #timeServers = options.networking.timeServers.default ++ ["pool.ntp.org"];
    firewall = {
      enable = true;
      allowedTCPPorts = [
        22
        80
        443
        59010
        59011
        8080
        1494 # docker
        2598 # docker
      ];
      allowedUDPPorts = [
        59010
        59011

        1494 # docker
        2590 # docker
      ];
    };
  };
  services.tailscale = {
    enable = tailscaleEnable;
    useRoutingFeatures = "client";
  };
  services.openssh.enable = sshdEnable;

  #change depending on the environment {in profile}

  #environment.systemPackages = with pkgs; [networkmanagerapplet];
}
