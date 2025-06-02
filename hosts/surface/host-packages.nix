{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    google-chrome
    discord
    obsidian
    spotify
    citrix_workspace
  ];
}
