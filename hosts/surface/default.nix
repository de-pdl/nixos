{...}: {
  imports = [
    ./hardware.nix
    ./host-packages.nix
  ];

  services.logind = {
    lidSwitch = "ignore";
    lidSwitchDocked = "ignore";
    lidSwitchExternalPower = "ignore";
  };
}
