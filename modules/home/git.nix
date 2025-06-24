{profile, ...}: {
  programs.git = {
    enable = true;
    userName = profile.gitUsername;
    userEmail = profile.gitEmail;
  };
}
