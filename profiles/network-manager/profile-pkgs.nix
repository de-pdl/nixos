{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    docker-compose # Allows Controlling Docker From A Single File
    #docker

    lolcat # Add Colors To Your Terminal Command Output
    ncdu # Disk Usage Analyzer With Ncurses Interface

    nixfmt-rfc-style # Nix Formatter
    openssl
  ];

  virtualisation.docker = {
    enable = true;
    rootless = {
      enable = true;
      setSocketVariable = true;
    };
  };
}
