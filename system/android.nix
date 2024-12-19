{user, ...}: {
  # Configure ADB
  programs.adb = {
    enable = true;
  };

  # Add user to adbusers group
  users.users.${user}.extraGroups = ["adbusers"];
}
