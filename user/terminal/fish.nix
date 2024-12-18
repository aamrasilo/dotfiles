{
  # Configure Fish
  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      # Unset fish greeting
      set fish_greeting

      # Enable vi key bindings
      fish_vi_key_bindings
    '';
  };
}
