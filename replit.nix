{ pkgs }: {
	deps = [
   pkgs.portmidi
   pkgs.pkg-config
   pkgs.libpng
   pkgs.libjpeg
   pkgs.freetype
   pkgs.fontconfig
   pkgs.SDL2_ttf
   pkgs.SDL2_mixer
   pkgs.SDL2_image
   pkgs.SDL2
	];
  env = {
    PYTHON_LD_LIBRARY_PATH = pkgs.lib.makeLibraryPath [
      pkgs.portmidi
      pkgs.libpng
      pkgs.freetype
      pkgs.SDL2_ttf
      pkgs.SDL2_mixer
      pkgs.SDL2_image
      pkgs.SDL2
    ];
  };
}