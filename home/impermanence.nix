{lib, ...}: let
  inherit (lib) forEach;
in {
  home.persistence."/persist/home/ruan" = {
    allowOther = true;
    directories =
      [
        "download"
        "music"
        "projects"
        "faculdade"
        "dev"
        "docs"
        "pics"
        "vids"
        "other"
      ]
      ++ forEach ["syncthing" "Caprine" "VencordDesktop" "obs-studio" "Signal"] (
        x: ".config/${x}"
      )
      ++ forEach ["tealdeer" "keepassxc" "nix" "starship" "nix-index" "mozilla" "go-build"] (
        x: ".cache/${x}"
      )
      ++ forEach ["direnv" "TelegramDesktop" "PrismLauncher" "keyrings"] (x: ".local/share/${x}")
      ++ [".ssh" ".keepass" ".mozilla"];
  };
}
