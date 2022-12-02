{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "karui";
  home.homeDirectory = "/home/karui";

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.

  
  home.packages = with pkgs;  [
    tdesktop
    libreoffice-fresh
    hunspell
    hunspellDicts.ru_RU
    discord
    betterdiscordctl
    xournalpp
    vlc
    darktable
    gimp
    krita
    thefuck
    zsh-syntax-highlighting
    zsh-autosuggestions
    zsh-powerlevel10k
    meslo-lgs-nf
    onlyoffice-bin
  ];
  
  home.stateVersion = "22.05";
  programs.home-manager.enable = true;
  nixpkgs.config.allowUnfree = true;
  programs.zsh = {
  enable = true;
  enableAutosuggestions = true;
  enableSyntaxHighlighting = true;
  shellAliases = {
    ll = "ls -l";
    sup = "sudo nixos-rebuild switch";
    hup = "home-manager switch && home-manager build";
    hin = "home-manager edit";
    sin = "sudo nvim /etc/nixos/configuration.nix";
  };
  history = {
    size = 10000;
    path = "${config.xdg.dataHome}/zsh/history";
  };
  oh-my-zsh = {
    enable = true;
    plugins = [ "git" "thefuck" "sudo" "systemd" ];
    theme = "romkatv/powerlevel10k";
  }; 
};

# Environment
  home.sessionVariables = {
    EDITOR = "nvim";
    BROWSER = "firefox";
    TERMINAL = "kitty";
  };
  
  programs.kitty = {
    enable = true;
    settings = {
      font_size = "12.0";
      font_family      = "MesloLGS NF";
      bold_font        = "auto";
      italic_font      = "auto";
      bold_italic_font = "auto";
      background = "#001e26";
      foreground = "#708183";
      selection_foreground ="#93a1a1";
      selection_background = "#002b36";
      cursor = "#708183";

      color0  = "#002731";
      color1  = "#d01b24";
      color2  = "#728905";
      color3  = "#a57705";
      color4  = "#2075c7";
      color5  = "#c61b6e";
      color6  = "#259185";
      color7  = "#e9e2cb";
      color8  = "#001e26";
      color9  = "#bd3612";
      color10 = "#465a61";
      color11 = "#52676f";
      color12 = "#708183";
      color13 = "#5856b9";
      color14 = "#81908f";
      color15 = "#fcf4dc";

    };
  };

}

