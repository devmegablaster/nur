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
    i686-linux = "021nvyyzvpl77y361cb12xd6kjsh18k06rz1lpsslrnqrmlr78wj";
    x86_64-linux = "1j280yr8x3fipbf3h7sjh9hhsbfipw6l62mjaw6v9d5kbfkkn2av";
    aarch64-linux = "1xiy0xaphb5ykv8ljqzwzqip8hqdi4kvmrrnm7x1lh1m47mzza5y";
    x86_64-darwin = "0kgnr4202343bkhq92bggqvi5m0g83wlxgagivr0vf4bhvl47qpr";
    aarch64-darwin = "0fsbmizkxabjm1pp6ljkh6y1jy5mqdinfbh9kc3q2p5q7f2rylj3";
  };

  urlMap = {
    i686-linux = "https://github.com/devmegablaster/jatt/releases/download/v0.12/jatt_Linux_i386.tar.gz";
    x86_64-linux = "https://github.com/devmegablaster/jatt/releases/download/v0.12/jatt_Linux_x86_64.tar.gz";
    aarch64-linux = "https://github.com/devmegablaster/jatt/releases/download/v0.12/jatt_Linux_arm64.tar.gz";
    x86_64-darwin = "https://github.com/devmegablaster/jatt/releases/download/v0.12/jatt_Darwin_x86_64.tar.gz";
    aarch64-darwin = "https://github.com/devmegablaster/jatt/releases/download/v0.12/jatt_Darwin_arm64.tar.gz";
  };
in
stdenvNoCC.mkDerivation {
  pname = "jatt";
  version = "0.12";
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
