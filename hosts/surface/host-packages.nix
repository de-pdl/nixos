{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    google-chrome
    discord
    obsidian
    spotify
    #    citrix_workspace_24_08_0
  ];
}
