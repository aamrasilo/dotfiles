{config, ...}: {
  # Configure Git
  programs.git = {
    enable = true;
    userName = "aamrasilo";
    userEmail = "aamrasilo@protonmail.com";
    extraConfig = {
      gpg.format = "ssh";
      commit.gpgsign = true;
      user.signingkey = "${config.home.homeDirectory}/.ssh/aamrasilo.pub";

      init.defaultBranch = "master";
      push.autoSetupRemote = true;
    };
  };
}
