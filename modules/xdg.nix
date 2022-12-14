#
#  Specific system XDG configuration settings module
#
#  flake.nix
#   ├─ ./darwin
#   │   ├─ ./configuration.nix
#   │   ├─ ./default.nix
#   │   └─ ./home.nix
#   │
#   ├─ ./hosts
#   │   ├─ ./default.nix
#   │   ├─ ./home.nix
#   │   └─ ./desktop
#   │        ├─ default.nix
#   │        └─ hardware.nix
#   │
#   └─ ./modules
#       ├─ ./home-manager
#       │    ├─ direnv.nix
#       │    ├─ git.nix
#       │    ├─ starship.nix
#       │    └─ zsh.nix
#       │
#       ├─ ./android.nix
#       ├─ ./audio.nix
#       ├─ ./fonts.nix
#       ├─ ./gaming.nix
#       ├─ ./networking.nix
#       ├─ ./pantheon.nix
#       ├─ ./security.nix
#       ├─ ./services.nix
#       ├─ ./virtualisation.nix
#       ├─ ./vpn.nix
#       └─ ./xdg.nix *

{ config, lib, pkgs, ... }:

{
  # XDG - Freedesktop Specification Standard
  # https://specifications.freedesktop.org/
  # https://search.nixos.org/options?channel=unstable&show=xdg.autostart
  xdg = {

    # XDG - Autostart
    # https://search.nixos.org/options?channel=unstable&show=xdg.autostart
    autostart.enable = true;

    # XDG - Icons
    # https://search.nixos.org/options?channel=unstable&show=xdg.icons
    icons.enable = true;

    # XDG - Menus
    # https://search.nixos.org/options?channel=unstable&show=xdg.menus
    menus.enable = true;

    # XDG - Mime
    # https://search.nixos.org/options?channel=unstable&show=xdg.mime
    mime.enable = true;

    # XDG - Sounds
    # https://search.nixos.org/options?channel=unstable&show=xdg.sounds
    sounds.enable = true;

    # XDG - Portal
    # https://search.nixos.org/options?channel=unstable&show=xdg.portal
    portal = {

      # XDG - Portal - Enable
      # https://search.nixos.org/options?channel=unstable&show=xdg.portal.enable
      enable = true;

      # XDG - Portal - Extra Portals
      # https://search.nixos.org/options?channel=unstable&show=xdg.portal.extraPortals
      extraPortals = with pkgs; [
        xdg-desktop-portal-gtk
      ];
    };
  };
}
