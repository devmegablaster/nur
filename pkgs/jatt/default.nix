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
    i686-linux = "1yhsfz67np9qp6a7p8k7l76hzw6g6qasfk8mz6nhb6h8md31d4zx";
    x86_64-linux = "1s3fnm2nmk2lmch84bqr7mn7dz9yf80bkwqd583slgqpj63r1p3f";
    aarch64-linux = "1isfric6y8f27vw4dq4mfbmqyzxpg06s46adpl1m0kwp8hyb2ryj";
    x86_64-darwin = "1qlzibvv5d8dzl71c1wncrh1cz54932ciqmgnmx2jk81v8ck8i2g";
    aarch64-darwin = "1ny5k19scd8wmsn99chib8brz6zh3pn89rb21fwglvnsglbddv3p";
  };

  urlMap = {
    i686-linux = "https://github.com/devmegablaster/jatt/releases/download/v0.7/jatt_Linux_i386.tar.gz";
    x86_64-linux = "https://github.com/devmegablaster/jatt/releases/download/v0.7/jatt_Linux_x86_64.tar.gz";
    aarch64-linux = "https://github.com/devmegablaster/jatt/releases/download/v0.7/jatt_Linux_arm64.tar.gz";
    x86_64-darwin = "https://github.com/devmegablaster/jatt/releases/download/v0.7/jatt_Darwin_x86_64.tar.gz";
    aarch64-darwin = "https://github.com/devmegablaster/jatt/releases/download/v0.7/jatt_Darwin_arm64.tar.gz";
  };
in
stdenvNoCC.mkDerivation {
  pname = "jatt";
  version = "0.7";
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
