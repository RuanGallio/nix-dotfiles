{inputs, ...}:
# glue all configs together
{
  config.home.stateVersion = "22.05";
  config.home.extraOutputsToInstall = ["doc" "devdoc"];
  imports = [
    # inputs.hyprland.homeManagerModules.default
    inputs.nix-index-db.hmModules.nix-index
    inputs.anyrun.homeManagerModules.default
    inputs.spicetify-nix.homeManagerModule
    inputs.schizofox.homeManagerModule
    inputs.impermanence.nixosModules.home-manager.impermanence
    ./packages.nix
    ./impermanence.nix

    ./cli
    ./rice
    ./misc
  ];
}
