{
  config,
  pkgs,
  ...
}: {
  environment.systemPackages = with pkgs; [coreutils findutils grep sed awk bash];
  # Enable Bash shell - use config / inherit to control whether to use bash or zsh
  programs.bash.enable = true;
}
