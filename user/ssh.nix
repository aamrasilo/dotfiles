{config, ...}: {
  # Configure SSH
  programs.ssh = {
    enable = true;
    matchBlocks = {
      "github.com" = {
        identitiesOnly = true;
        identityFile = "${config.home.homeDirectory}/.ssh/aamrasilo";
      };
    };
  };
}
