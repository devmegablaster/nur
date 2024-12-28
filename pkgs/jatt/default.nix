# This file was generated by GoReleaser. DO NOT EDIT.
# vim: set ft=nix ts=2 sw=2 sts=2 et sta
{
system ? builtins.currentSystem
, lib
, fetchurl
, installShellFiles
, stdenvNoCC
}:
let
  shaMap = {
    i686-linux = "0x9ck75y83yc5kby85qgwi1zmdn78574qqlbg33ik8gam634nnlg";
    x86_64-linux = "1chmyncraqmwjwc0fc2m1cx8b5vg02k6dqmj9qg35a3r4rv7xqs2";
    aarch64-linux = "1d0069a9pdqx9y4j7agp1jzzvx1rgj7nvz9byjs6m9jwvip72smg";
    x86_64-darwin = "1088ph5a9fg79xc0vq8i9vs183ik7cpla42ncqrwcbiypddz5lwl";
    aarch64-darwin = "0jyd13a6dbxmpih3cbplbv3wx9qq4cgnwp46a109wzab8nrgn9xs";
  };

  urlMap = {
    i686-linux = "https://github.com/devmegablaster/jatt/releases/download/v0.14/jatt_Linux_i386.tar.gz";
    x86_64-linux = "https://github.com/devmegablaster/jatt/releases/download/v0.14/jatt_Linux_x86_64.tar.gz";
    aarch64-linux = "https://github.com/devmegablaster/jatt/releases/download/v0.14/jatt_Linux_arm64.tar.gz";
    x86_64-darwin = "https://github.com/devmegablaster/jatt/releases/download/v0.14/jatt_Darwin_x86_64.tar.gz";
    aarch64-darwin = "https://github.com/devmegablaster/jatt/releases/download/v0.14/jatt_Darwin_arm64.tar.gz";
  };
in
stdenvNoCC.mkDerivation {
  pname = "jatt";
  version = "0.14";
  src = fetchurl {
    url = urlMap.${system};
    sha256 = shaMap.${system};
  };

  sourceRoot = ".";

  nativeBuildInputs = [ installShellFiles ];

  installPhase = ''
    mkdir -p $out/bin
    cp -vr ./jatt $out/bin/jatt
  '';

  system = system;

  meta = {
    homepage = "https://github.com/devmegablaster/jatt";

    sourceProvenance = [ lib.sourceTypes.binaryNativeCode ];

    platforms = [
      "aarch64-darwin"
      "aarch64-linux"
      "i686-linux"
      "x86_64-darwin"
      "x86_64-linux"
    ];
  };
}
