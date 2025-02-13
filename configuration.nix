{ config, pkgs, ... }:

{

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "your-hostname";
  networking.networkmanager.enable = true;

  time.timeZone = "America/Bahia";

  environment.systemPackages = with pkgs; [ nvim git wget curl ];

  sound.enable = true;
  hardware.pulseaudio.enable = true;

  # services.xserver.enable = true;
  # services.xserver.displayManager.gdm.enable = true;
  # services.xserver.desktopManager.gnome.enable = true;

  users.users.glwbr = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" ];
    initialPassword = "changeme";
  };

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  system.stateVersion = "24.11";
}
