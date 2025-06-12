{
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
  interfaceStyle = "GUI"; # or "CLI";
  # Program Options

  # CLI

  terminalMux = "tmux";
  textEditor = "nvim";
  terminalFileManager = "yazi";

  # default browser select {for hyprland binds cur}
  browser = "google-chrome-stable"; # Set Default Browser (google-chrome-stable for google-chrome)
  terminal = "kitty"; # Set Default System Terminal ## GUI variables

  # Set Stylix Image
  stylixImage = ../../wallpapers/AnimeGirlNightSky.jpg;

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

  # Enable Thunar GUI File Manager
  thunarEnable = true;
}
