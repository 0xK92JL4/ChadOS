{
  nixpkgs.overlays = [
    (final: prev: {
      dwm   = prev.dwm.overrideAttrs   { src = ../../../softwares/suckless/dwm; };
      dmenu = prev.dmenu.overrideAttrs { src = ../../../softwares/suckless/dmenu; };
      st    = prev.st.overrideAttrs    { src = ../../../softwares/suckless/st; };
      slock = prev.slock.overrideAttrs { src = ../../../softwares/suckless/slock; };
      svkbd = prev.svkbd.overrideAttrs { src = ../../../softwares/suckless/svkbd; };
    })
  ];

  programs.slock.enable = true;
}
