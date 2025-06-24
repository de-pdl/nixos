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
  hyprBrowser = "google-chrome-stable"; # Set Default Browser (google-chrome-stable for google-chrome)
  #thunarEnable = true;

  # Set Stylix Image
  stylixImage = ../../wallpapers/1369866.png; # change this

  # Color Scheme {katy by Georege Essig}
  background = ../../wallpapers/1369866.png;

  base00 = "1d1f21";
  base01 = "282a2e";
  base02 = "373b41";
  base03 = "969896";
  base04 = "b4b7b4";
  base05 = "c5c8c6";
  base06 = "e0e0e0";
  base07 = "ffffff";
  base08 = "cc6666";
  base09 = "de935f";
  base0A = "f0c674";
  base0B = "b5bd68";
  base0C = "8abeb7";
  base0D = "81a2be";
  base0E = "b294bb";
  base0F = "a3685a";

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
