{
  pkgs,
  inputs,
  username,
  machine,
  profile,
  ...
}: {
  imports = [inputs.home-manager.nixosModules.home-manager];
  home-manager = {
    useUserPackages = true;
    useGlobalPkgs = false;
    backupFileExtension = "backup";
    extraSpecialArgs = {inherit inputs username machine profile;};
    users.${username} = {
      imports = [../../profiles/${profile.name}/home.nix];
      home = {
        username = "${username}";
        homeDirectory = "/home/${username}";
        stateVersion = "23.11";
      };
    };
  };
  users.mutableUsers = true;
  users.users.${username} = {
    isNormalUser = true;
    description = "${profile.gitUsername}";
    extraGroups = [
      "adbusers"
      "docker"
      "libvirtd"
      "lp"
      "networkmanager"
      "scanner"
      "wheel"
    ];
    shell = pkgs.zsh;
    ignoreShellProgramCheck = true;
  };
  # if needed extra users, recommend to add it to machines
  # why cuz its a hassle otherwise :/

  nix.settings.allowed-users = ["${username}"];

  # no password with sudo

  security.sudo.extraRules =
    if profile.sudoNoPswd == true
    then [
      {
        users = ["${username}"];
        commands = [
          {
            command = "ALL";
            options = ["NOPASSWD"];
          }
        ];
      }
    ]
    else [];
}
