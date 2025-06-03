{pkgs, ...}: {
  environment.systemPackages = [pkgs.cifs-utils];

  services.avahi.enable = true;
}
