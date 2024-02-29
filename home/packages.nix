{pkgs, ...}: {
  nixpkgs.config.allowUnfree = false;
  home.packages = with pkgs; [
    libreoffice-fresh
    ledger-live-desktop
    ledger_agent
    tdesktop
    calcurse
    pulseaudio
    signal-desktop
    transmission-gtk
    firefox
    obsidian
    gimp
    wireshark
    keepassxc
    dconf
  ];
}
