{...}: {
  imports = [
    ./hardware.nix
    ./host-packages.nix
  ];

  services.logind = {
    lidSwitch = "sleep";
    lidSwitchDocked = "ignore";
    lidSwitchExternalPower = "ignore";
  };
}
