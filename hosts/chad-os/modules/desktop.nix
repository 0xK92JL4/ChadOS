{ pkgs, ... }:
{
  services.xserver = {
    enable = true;
    windowManager.dwm.enable = true;
  };

  environment.systemPackages = with pkgs; [
    dmenu
    dunst
    numlockx
    st
    svkbd
    unclutter
    xbindkeys
    xclip
    xwallpaper
    xrandr
    xrdb
    xset
    setxkbmap
  ];
}
