#
#  Specific system fonts configuration settings module
#
#  flake.nix
#   ├─ ./hosts
#   │   ├─ ./default.nix
#   │   ├─ ./home.nix
#   │   └─ ./desktop
#   │        ├─ default.nix
#   │        └─ hardware.nix
#   └─ ./modules
#       ├─ ./audio.nix
#       ├─ ./fonts.nix *
#       ├─ ./pantheon.nix
#       ├─ ./programs.nix
#       ├─ ./security.nix 
#       ├─ ./services.nix
#       ├─ ./virtualisation.nix
#       ├─ ./vpn.nix
#       └─ ./xdg.nix

{ config, lib, pkgs, ... }:

{
  # Fonts
  # https://search.nixos.org/options?channel=unstable&show=fonts
  fonts = {

    # Font Directory
    # https://search.nixos.org/options?channel=unstable&show=fonts.fontDir
    fontDir.enable = true;

    # Font Packages
    # https://search.nixos.org/options?channel=unstable&show=fonts.fonts
    fonts = with pkgs; [
      dejavu_fonts
      fira-code-symbols
      hack-font
      inconsolata
      inter
      liberation_ttf
      nerdfonts
      noto-fonts
      noto-fonts-emoji
      open-dyslexic
      open-sans
      source-sans
      source-serif
      roboto
      roboto-mono
    ];
  };
}
