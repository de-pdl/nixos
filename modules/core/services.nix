{
  profile,
  machine,
  pkgs,
  ...
}: let
  inherit (import ../../profiles/${profile}/variables.nix) smbEnable;
  inherit
    (import ../../machines/${machine}/variables.nix)
    bluetoothEnable
    printEnable
    ;
in {
  # Services to start
  services = {
    libinput.enable = true; # Input Handling
    fstrim.enable = true; # SSD Optimizer
    gvfs.enable = true; # For Mounting USB & More
    tumbler.enable = true; # Image/video preview

    blueman.enable = bluetoothEnable; # Bluetooth Support
    printing.enable = printEnable;
    #gnome.gnome-keyring.enable = true;

    #smartd = {
    #  enable =
    #    if profile == "vm"
    #    then false
    #    else true;
    #  autodetect = true;
    #};

    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
    };
  };

  hardware.bluetooth =
    if bluetoothEnable == true
    then {
      enable = true;
      powerOnBoot = true;
    }
    else {
      enable = false;
    };

  environment.systemPackages = with pkgs;
    if smbEnable == true
    then [cifs-utils]
    else [];
}
