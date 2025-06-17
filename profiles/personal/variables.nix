{pkgs ? import <nixpkgs> {}}: {
  ### what is the point of all this?
  ### this will affect the core modules / home modules
  ### without having to adjust manually
  ### read configs.md at home page for more info (more like bs)

  # Git Configuration ( For Pulling Software Repos )
  gitUsername = "Ayush Paudel";
  gitEmail = "83343839+de-pdl@users.noreply.github.com";

  ## what are things i want to decide in variables
  ## personal services {you may use you may not}

  smbEnable = true;

  tailscaleEnable = true;
  sshdEnable = true;

  timeZone = "Australia/Sydney";
  defaultLocale = "en_US.UTF-8";
  extraLocaleSettings = "en_US.UTF-8";

  sudoNoPswd = true;
  #========= to do ===================#
  guiEnable = true; # or "CLI";
  # Program Options

  # CLI

  terminalMux = pkgs.tmux;
  textEditor = pkgs.neovim;
  terminalFileManager = pkgs.yazi;

  # GUI

  # default browser select {for hyprland binds cur}
  terminal = pkgs.kitty; # Set Default System Terminal ## GUI variables
  gtextEditor = pkgs.vscode;
  fileManager = pkgs.xfce.thunar;
  browser = pkgs.google-chrome;

  hyprTerminal = "kitty";
  hyprBrowser = "google-chrome"; # Set Default Browser (google-chrome-stable for google-chrome)
  #thunarEnable = true;

  # Set Stylix Image
  stylixImage = ../../wallpapers/1369866.png; # change this

  # Color Scheme {katy by Georege Essig}
  background = ../../wallpapers/1369866.png;
  base00 = "282c34";
  base01 = "2c323b";
  base02 = "3e4451";
  base03 = "665c54";
  base04 = "928374";
  base05 = "a89984";
  base06 = "d5c4a1";
  base07 = "fdf4c1";
  base08 = "83a598";
  base09 = "a07e3b";
  base0A = "a07e3b";
  base0B = "528b8b";
  base0C = "83a598";
  base0D = "83a598";
  base0E = "d75f5f";
  base0F = "a87322";

  # Waybar Settings
  clock24h = false;

  # Set Waybar
  #  Available Options:
  waybarChoice = ../../modules/home/waybar/waybar-ddubs-2.nix;

  # Set Animation style
  # Available options are:
  # animations-def.nix  (default)
  # animations-end4.nix (end-4 project)
  # animations-dynamic.nix (ml4w project)
  # animations-moving.nix (ml4w project)
  animChoice = ../../modules/home/hyprland/animations-moving.nix;
}
