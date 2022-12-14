{ config, lib, pkgs, ... }:

{
  # System Services
  services = {

    # Flatpak
    # https://search.nixos.org/options?channel=unstable&show=services.flatpak.enable
    flatpak.enable = true;

    # FWUPD - Firmware Update Service
    # https://search.nixos.org/options?channel=unstable&show=services.fwupd
    fwupd = {

      # FWUPD - Enable
      # https://search.nixos.org/options?channel=unstable&show=services.fwupd.enable
      enable = true;

      # FWUPD - Package
      # https://search.nixos.org/options?channel=unstable&show=services.fwupd.package
      package = pkgs.fwupd;
    };

    # Avahi
    avahi = {
      enable = true;
      nssmdns = true;
      ipv6 = false;
      publish.enable = false;
    };

    # Printing (CUPS)
    printing = {
      enable = true;
      drivers = with pkgs; [ gutenprint hplip ];
      startWhenNeeded = true;
      webInterface = false; 
    };

    # Scanning
    saned.enable = true;

    # FSTRIM (SSD TRIM)
    # https://search.nixos.org/options?channel=unstable&show=services.fstrim
    fstrim = {

      # FSTRIM - Enable
      # https://search.nixos.org/options?channel=unstable&show=services.fstrim.enable
      enable = true;

      # FSTRIM
      # https://search.nixos.org/options?channel=unstable&show=services.fstrim.interval
      interval = "weekly";
    };

    # OpenRGB
    # https://search.nixos.org/options?channel=unstable&show=services.hardware.openrgb
    hardware.openrgb = {

      # OpenRGB - Enable
      # https://search.nixos.org/options?channel=unstable&show=services.hardware.openrgb.enable
      enable = true;

      # OpenRGB - Motherboard (AMD / Intel)
      # https://search.nixos.org/options?channel=unstable&show=services.hardware.openrgb.motherboard
      motherboard = "amd";

      # OpenRGB - Server Port
      # https://search.nixos.org/options?channel=unstable&show=services.hardware.openrgb.server.port
      server.port = 6742;
    };

    # Wireguard Netmanager
    # wg-netmanager.enable = true;
    # Unbound
    # unbound = {
    #   enable = true;
    #   # Use and update root trust anchor for DNSSEC validation
    #   enableRootTrustAnchor = true;
    #   # Resolve local queries (i.e. add 127.0.0.1 to /etc/resolv.conf)
    #   resolveLocalQueries = true;
    #   # Local DNS caching
    #   settings = {
    #     server = {
    #       interface = "127.0.0.1";
    #       access-control = [
    #         "127.0.0.0/8 allow"
    #         "192.168.0.0/16 allow"
    #       ];
    #       do-not-query-localhost = false;
    #     };
        
    #     forward-zone = [
    #       {
    #         name = ".";
    #         forward-addr = [
    #           "9.9.9.9@53#dns.quad9.net"
    #           "9.9.9.11@53#dns11.quad9.net"
    #         ];
    #       }
    #     ];
    #   };
    # };

  

    # Samba
    # samba = {
    #  enable = true; 
    #  openFirewall = true;
    # };

  };
}
