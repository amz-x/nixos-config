# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{ config, lib, pkgs, modulesPath, ... }:

{
  imports = [(modulesPath + "/installer/scan/not-detected.nix")];

  boot.initrd.availableKernelModules = [ "xhci_pci" "ahci" "usbhid" "usb_storage" "sd_mod" ];
  boot.initrd.kernelModules = [ "amdgpu" ];
  boot.kernelPackages = pkgs.linuxKernel.packages.linux_6_1;
  boot.kernelModules = [ "kvm-amd" ];
  boot.extraModulePackages = [];

  # Root Parition
  fileSystems."/" = { 
    device = "/dev/disk/by-uuid/1c9e2517-c157-43a9-b961-402277d2ca3a";
    fsType = "ext4";
  };

  # ESP Partition
  fileSystems."/boot/efi" = {
    device = "/dev/disk/by-uuid/7633-BF04";
    fsType = "vfat";
  };

  swapDevices = [ ];


  # Hardware
  hardware = {

    # CPU / AMD Microcode
    cpu.amd.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;

    # Video (high-resolution display)
    video.hidpi.enable = lib.mkDefault true;

    # Bluetooth
    bluetooth = {
      enable = true;
      package = pkgs.bluezFull;
      powerOnBoot = true;
      settings = {
        General = {
          Enable = "Source,Sink,Media,Socket";
        };
      };
    };

    # PulseAudio 
    pulseaudio = {
      enable = true;
      support32Bit = true;
      package = pkgs.pulseaudioFull;
    };
  };
}
