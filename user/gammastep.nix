{
  # Configure Gammastep
  services.gammastep = {
    enable = true;
    provider = "geoclue2";
    temperature = {
      day = 5000;
      night = 5000;
    };
  };
}
